from selenium import webdriver

def before_all(context):
    context.browser = webdriver.Chrome(r"C:\Users\Admin\MEA\chromedriver.exe")

def after_all(context):
    context.browser.quit()
    
