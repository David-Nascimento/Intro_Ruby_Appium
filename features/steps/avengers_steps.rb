Dado ("que acesso a tela Avengers") do
    @nav.tap_by_text("LISTA")
end

Quando ("eu apago o Capitão America") do
    find_element(id: "io.qaninja.android.twp:id/rvList")

    coord = { start_x: 0.92, start_y: 0.20, offset_x: 0.47, offset_y: 0.20, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform

    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Entao "devo ver a seguinte mensagem: {string}" do | expect_message |
    removed = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
    expect(removed.text).to eql expect_message
end 