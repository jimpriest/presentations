# -*- coding: utf-8 -*-

import unittest, os, random, datetime

from selenium import webdriver
from datetime import datetime
from vars import ( phantomjs_path, url )
from selenium.webdriver.support.ui import Select

color_list =  ['Blue', 'Red', 'Green', 'Yellow']
random_color = random.choice(color_list)

name_list =  ['Joe Smith', 'Ted Jones', 'Sally May', 'Sue Smith']
random_name = random.choice(name_list)

current_year =  datetime.now().strftime('%Y')
random_year = random.choice(range(1892, int(current_year) ))

email_list =  ['joe@smith.com', 'ted@ted.com', 'sally@sally.com', 'sue@smith.com']
random_email = random.choice(email_list)


class GoogleForm(unittest.TestCase):
    def setUp(self):
        print  'lets leverage python and add some randomness!\ncheckout random.png'
        print random_email
        self.driver = webdriver.PhantomJS(executable_path=phantomjs_path, service_log_path=os.path.devnull)
        self.driver.set_window_size(1024, 768)
        self.driver.get(url)

    def test_google_form(self):
        driver = self.driver
        driver.find_element_by_id("entry_510407236").send_keys("{0}".format(random_name))
        Select(driver.find_element_by_id("entry.462822380_month")).select_by_visible_text("January")
        Select(driver.find_element_by_id("entry.462822380_day")).select_by_visible_text("1")
        Select(driver.find_element_by_id("entry.462822380_year")).select_by_visible_text("{}".format(random_year))
        Select(driver.find_element_by_id("entry_768625966")).select_by_visible_text("{0}".format(random_color))
        driver.find_element_by_id("entry_888074637").send_keys("{0}".format(random_email))
        self.driver.save_screenshot('random.png')
        driver.find_element_by_id("ss-submit").click()

    def tearDown(self):
        # lets add some validation / error checking
        try:
            self.assertTrue(("Your response has been recorded" in self.driver.find_element_by_tag_name("html").text), "Could not find verification message.")
            print "Test passed!"
        except AssertionError as e:
            print("Test failed: Could not find verification text.")
        self.driver.quit()

if __name__ == "__main__":
    unittest.main()