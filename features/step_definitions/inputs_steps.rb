Given('que acesso a tela Botões de Radio') do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("BOTÕES DE RADIO")
end

When('eu escolho a opção Ruby') do
  @radio_locator = "//android.widget.RadioButton[contains(@text, 'Ruby')]"
  $driver.find_element(xpath: @radio_locator).click
end

Then('esta opção deve ser marcada') do
  @radio_result = $driver.find_element(xpath: "//android.widget.RadioButton[contains(@text, 'Ruby')]")
  expect(@radio_result.checked).to eql "true"
end


Given ("que acesso a tela Botões de Checkbox") do
  @nav.tap_hamburger
  @nav.tap_by_text("INPUTS")
  @nav.tap_by_text("CHECKBOX")
end

When ("eu marco a opção Ruby") do
  @check_locator = "//android.widget.CheckBox[contains(@text, 'Ruby')]"
  $driver.find_element(xpath: @check_locator).click
end

Then ("esta opção deve estar marcada") do
  @check_result = $driver.find_element(xpath: "//android.widget.CheckBox[contains(@text, 'Ruby')]")
  expect(@check_result.checked).to eql "true"
end

When ("eu marco as seguintes techs:")  do | table |
  @techs = table.hashes

  @techs.each do |item|
    check_locator = "//android.widget.CheckBox[contains(@text, '#{item["techs"]}')]"
    $driver.find_element(xpath: check_locator).click
  end
end

Then ("todas essas opções devem estar marcadas") do
  @techs.each do |item|
    check_result = $driver.find_element(xpath: "//android.widget.CheckBox[contains(@text, '#{item["techs"]}')]")
    expect(check_result.checked).to eql "true"
  end
end