# -*- coding: utf-8 -*-

import unittest
import os
from selenium import webdriver

phantomjs_path = '/usr/bin/phantomjs'
url = "http://www.redhat.com/en"

class TestHomepage(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.PhantomJS(executable_path=phantomjs_path, service_log_path=os.path.devnull)

        # we need to make the screen bigger - duh
        self.driver.set_window_size(1024, 768)

        self.driver.get(url)

    def testTitle(self):
        driver = self.driver
        driver.get(url)
        driver.find_element_by_link_text("Technologies").click()
        driver.find_element_by_link_text("Infrastructure").click()
        self.driver.save_screenshot('infrastructure-fixed.png')
        self.assertIn('Red Hat', driver.title)

    def tearDown(self):
        self.driver.quit()

if __name__ == '__main__':
    unittest.main(verbosity=2)