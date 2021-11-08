Dado('que acesso a tela de login') do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

Quando('submeto minhas credenciais') do |table|
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end

Entao('devo ver a notificação: {string}') do |notice|
  expect(@toaster.toast.text).to eql notice
end

