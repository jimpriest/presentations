# -*- coding: utf-8 -*-

import unittest
import os
# This module provides a portable way of using operating system dependent functionality.
from selenium import webdriver

phantomjs_path = '/usr/bin/phantomjs'
url = "http://www.redhat.com/en"

class TestHomepage(unittest.TestCase):

    # this is going to break and we'll have no idea why

    def setUp(self):
        self.driver = webdriver.PhantomJS(executable_path=phantomjs_path, service_log_path=os.path.devnull)
        self.driver.get(url)

    def testTitle(self):
        driver = self.driver
        driver.get(url)
        driver.find_element_by_link_text("Technologies").click()
        driver.find_element_by_link_text("Infrastructure").click()
        self.assertIn('Red Hat', driver.title)

    def tearDown(self):
        self.driver.quit()

if __name__ == '__main__':
    unittest.main(verbosity=2)