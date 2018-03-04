# -*- coding: utf-8 -*-
import unittest, os, time, re

from selenium import webdriver
from vars import ( phantomjs_path, url )
from selenium.webdriver.support.ui import Select

class GoogleForm(unittest.TestCase):
    def setUp(self):
        print  'cleaned up and simplified a bit\ncheckout google.png'
        self.driver = webdriver.PhantomJS(executable_path=phantomjs_path, service_log_path=os.path.devnull)
        self.driver.set_window_size(1024, 768)
        self.driver.get(url)

    def test_google_form(self):
        driver = self.driver
        driver.find_element_by_id("entry_510407236").send_keys("Jim")
        Select(driver.find_element_by_id("entry.462822380_month")).select_by_visible_text("January")
        Select(driver.find_element_by_id("entry.462822380_day")).select_by_visible_text("1")
        Select(driver.find_element_by_id("entry.462822380_year")).select_by_visible_text("2001")
        Select(driver.find_element_by_id("entry_768625966")).select_by_visible_text("Red")
        self.driver.save_screenshot('google.png')
        driver.find_element_by_id("ss-submit").click()

    def tearDown(self):
        self.driver.quit()

if __name__ == "__main__":
    unittest.main()