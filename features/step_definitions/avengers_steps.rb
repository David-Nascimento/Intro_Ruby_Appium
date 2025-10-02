Given("que acesso a tela Avengers") do
    @nav.tap_by_text("LISTA")
end

When("eu apago o Capitão America") do
    $driver.find_element(id: "io.qaninja.android.twp:id/rvList")

    action = Appium::Core::TouchAction.new($driver)
    action.press(x: 0.92, y: 0.20).move_to(x: 0.47, y: 0.20).release.perform

    $driver.find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Then("devo ver a seguinte mensagem: {string}") do | expect_message |
    removed = $driver.find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    expect(removed.text).to eql expect_message
end 

