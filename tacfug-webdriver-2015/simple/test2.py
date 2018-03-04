# -*- coding: utf-8 -*-

import unittest
# The Python unit testing framework, sometimes referred to as “PyUnit,” is a Python
# language version of JUnit, by Kent Beck and Erich Gamma. JUnit is, in turn, a Java
# version of Kent’s Smalltalk testing framework. Each is the de facto standard unit
# testing framework for its respective language.

from selenium import webdriver

class TestHomepage(unittest.TestCase):

    def setUp(self):
        self.browser = webdriver.Firefox()

    def testTitle(self):
        self.browser.get('http://www.redhat.com/')
        self.assertIn('Red Hat', self.browser.title)

    def tearDown(self):
        self.browser.quit()


if __name__ == '__main__':
    unittest.main(verbosity=2)