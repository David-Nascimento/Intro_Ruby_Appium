Dado ("que acesso a tela Click Simples") do
    @nav.tap_hamburger

    find_element(id: "io.qaninja.android.twp:id/tvNavTitle")
    coord = { start_x: 0.25, start_y: 0.67, offset_x: 0.26, offset_y: 0.55, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform

    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
end

Quando ("faço um click simples") do
    find_element(id: "io.qaninja.android.twp:id/short_click").click
end

Entao ("devo ver o texto: {string}") do | expect_message |
    expect(@toaster.toast.text).to eql expect_message
end


Dado ("que acesso a tela Click Longooo") do
    @nav.tap_hamburger

    find_element(id: "io.qaninja.android.twp:id/tvNavTitle")
    coord = { start_x: 0.25, start_y: 0.67, offset_x: 0.26, offset_y: 0.55, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform

    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE LONGO")
end
Quando ("faço um click Longooo") do
    @button = find_element(id: "io.qaninja.android.twp:id/long_click")
    Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
end

Entao "devo ver o botão com o texto: {string}" do |expect_text|
    expect(@button.text).to eql expect_text
end

