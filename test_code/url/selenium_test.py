
from selenium import webdriver

#browser = webdriver.Firefox()
browser = webdriver.Chrome()
print(browser.get('http://192.168.11.12/'))

#browser.maximize_window()
#help(browser)
#browser.find_element_by_class_name("login-input ng-pristine md-input ng-empty ng-invalid ng-invalid-required ng-touched")
print(browser.find_element_by_class_name('login-username'))
