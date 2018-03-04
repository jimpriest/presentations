# -*- coding: utf-8 -*-

import unittest
# The Python unit testing framework, sometimes referred to as PyUnit, is a Python
# language version of JUnit, by Kent Beck and Erich Gamma. JUnit is, in turn, a Java
# version of Kent's Smalltalk testing framework. Each is the de facto standard unit
# testing framework for its respective language.

from selenium import webdriver

class TestHomepage(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Firefox()
        self.base_url = "http://www.redhat.com/"

    def testTitle(self):
        driver = self.driver
        driver.get(self.base_url + "/en")
        driver.find_element_by_link_text("Technologies").click()
        driver.find_element_by_link_text("Infrastructure").click()
        self.assertIn('Red Hat', driver.title)

    def tearDown(self):
        self.driver.quit()

if __name__ == '__main__':
    unittest.main(verbosity=2)