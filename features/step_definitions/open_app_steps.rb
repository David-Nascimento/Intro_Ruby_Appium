Given('que estou no app') do
    comecar_button = $wait.until { $driver.find_element(xpath: "//android.widget.Button[@text='COMEÇAR']") }
    comecar_button.click if comecar_button.displayed?
end