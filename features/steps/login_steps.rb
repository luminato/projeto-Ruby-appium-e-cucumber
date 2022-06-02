Dado('que acesso a tela de Login') do
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("LOGIN")
  end
  
  Quando('submeto minhas credenciais') do |table|
    user = table.rows_hash
    #log(user)
    @login.sign_in(user[:email], user[:senha])
  end
  
  Então('devo ver a notificação: {string}') do |notice|
    #log(get_source) #pega o XML da tela
    expect(@toast.toast.text).to eql notice
  end
  
  Então('devo ver um alerta: {string}') do |alert|
    expect(@login.alert.text).to eql alert
  end
  