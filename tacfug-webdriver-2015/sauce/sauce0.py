# -*- coding: utf-8 -*-

import base64
import datetime
import httplib
import json
import new
import os
import random
import sauceclient
import sys
import unittest

from selenium import webdriver
from sauceclient import SauceClient
from datetime import datetime

from vars import ( phantomjs_path, url )
from selenium.webdriver.support.ui import Select

USERNAME = os.environ.get('SAUCE_USERNAME', "")
ACCESS_KEY = os.environ.get('SAUCE_ACCESS_KEY', "")
sauce = SauceClient(USERNAME, ACCESS_KEY)

browsers = [{"platform": "Mac OS X 10.9",
             "browserName": "chrome",
             "version": "31"},
            {"platform": "Windows 8.1",
             "browserName": "internet explorer",
             "version": "11"}]

color_list =  ['Blue', 'Red', 'Green', 'Yellow']
random_color = random.choice(color_list)

name_list =  ['Joe Smith', 'Ted Jones', 'Sally May', 'Sue Smith']
random_name = random.choice(name_list)

current_year =  datetime.now().strftime('%Y')
random_year = random.choice(range(1892, int(current_year) ))

email_list =  ['joe@smith.com', 'ted@ted.com', 'sally@sally.com', 'sue@smith.com']
random_email = random.choice(email_list)

def on_platforms(platforms):
    def decorator(base_class):
        module = sys.modules[base_class.__module__].__dict__
        for i, platform in enumerate(platforms):
            d = dict(base_class.__dict__)
            d['desired_capabilities'] = platform
            name = "%s_%s" % (base_class.__name__, i + 1)
            module[name] = new.classobj(name, (base_class,), d)
    return decorator

@on_platforms(browsers)
class SauceSampleTest(unittest.TestCase):
    def setUp(self):
        self.desired_capabilities['name'] = self.id()

        sauce_url = "http://%s:%s@ondemand.saucelabs.com:80/wd/hub"
        self.driver = webdriver.Remote(
            desired_capabilities=self.desired_capabilities,
            command_executor=sauce_url % (USERNAME, ACCESS_KEY)
        )
        self.driver.implicitly_wait(30)

    def test_google_form(self):
        self.driver.get(url)
        driver = self.driver
        driver.find_element_by_id("entry_510407236").send_keys("{0}".format(random_name))
        Select(driver.find_element_by_id("entry.462822380_month")).select_by_visible_text("January")
        Select(driver.find_element_by_id("entry.462822380_day")).select_by_visible_text("1")
        Select(driver.find_element_by_id("entry.462822380_year")).select_by_visible_text("{}".format(random_year))
        Select(driver.find_element_by_id("entry_768625966")).select_by_visible_text("{0}".format(random_color))
        driver.find_element_by_id("entry_888074637").send_keys("{0}".format(random_email))
        driver.find_element_by_id("ss-submit").click()

    def tearDown(self):
        print("Link to your job: https://saucelabs.com/jobs/%s" % self.driver.session_id)
        try:
            if sys.exc_info() == (None, None, None):
                sauce.jobs.update_job(self.driver.session_id, passed=True)
            else:
                sauce.jobs.update_job(self.driver.session_id, passed=False)
        finally:
            self.driver.quit()
