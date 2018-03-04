# -*- coding: utf-8 -*-

# converted from HTML test

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import NoAlertPresentException
import unittest, time, re

class GoogleForm(unittest.TestCase):
    def setUp(self):
        print  'converted from html test'
        self.driver = webdriver.Firefox()
        self.driver.implicitly_wait(30)
        self.base_url = "https://docs.google.com/"
        self.verificationErrors = []
        self.accept_next_alert = True

    def test_google_form(self):
        driver = self.driver
        # Google Form URL
        driver.get(self.base_url + "")
        driver.find_element_by_id("entry_510407236").clear()
        driver.find_element_by_id("entry_510407236").send_keys("Jim")
        Select(driver.find_element_by_id("entry.462822380_month")).select_by_visible_text("January")
        Select(driver.find_element_by_id("entry.462822380_day")).select_by_visible_text("1")
        Select(driver.find_element_by_id("entry.462822380_year")).select_by_visible_text("2001")
        Select(driver.find_element_by_id("entry_768625966")).select_by_visible_text("Red")
        driver.find_element_by_id("ss-submit").click()
        # Warning: verifyTextPresent may require manual changes
        try: self.assertRegexpMatches(driver.find_element_by_css_selector("BODY").text, r"^[\s\S]*$")
        except AssertionError as e: self.verificationErrors.append(str(e))

    def is_element_present(self, how, what):
        try: self.driver.find_element(by=how, value=what)
        except NoSuchElementException, e: return False
        return True

    def is_alert_present(self):
        try: self.driver.switch_to_alert()
        except NoAlertPresentException, e: return False
        return True

    def close_alert_and_get_its_text(self):
        try:
            alert = self.driver.switch_to_alert()
            alert_text = alert.text
            if self.accept_next_alert:
                alert.accept()
            else:
                alert.dismiss()
            return alert_text
        finally: self.accept_next_alert = True

    def tearDown(self):
        self.driver.quit()
        self.assertEqual([], self.verificationErrors)

if __name__ == "__main__":
    unittest.main()
