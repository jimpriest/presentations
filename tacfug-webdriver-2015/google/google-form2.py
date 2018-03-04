# -*- coding: utf-8 -*-

import unittest, os, time, re

from selenium import webdriver
from vars import ( phantomjs_path, url )
from selenium.webdriver.support.ui import Select

class GoogleForm(unittest.TestCase):
    def setUp(self):
        print  'lets add some error handling\nthis should complain because we entered a bogus email\ncheckout validation.png'
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
        driver.find_element_by_id("entry_888074637").send_keys("WAZ UP")
        driver.find_element_by_id("ss-submit").click()

        # lets add some validation / error checking
        self.driver.save_screenshot('validation.png')
        self.assertTrue(("Your response has been recorded" in self.driver.find_element_by_tag_name("html").text), "Could not find verification message.")

    def tearDown(self):
        self.driver.quit()

if __name__ == "__main__":
    unittest.main()