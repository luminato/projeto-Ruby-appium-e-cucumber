  Dado('que acesso a tela Clique Simples') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE SIMPLES")
  end
  
  
  Quando('faço um click simples') do
    @button.click_shot
  end
  
  Então('devo ver o texto: {string}') do |notice|
    expect(@toast.toast.text).to eql notice
  end
  
  Dado('que acesso a tela Clique Longo') do
    @nav.tap_hamburger
    @nav.tap_by_text("BOTÕES")
    @nav.tap_by_text("CLIQUE LONGO")
  end
  
  Quando('faço um clique longo') do
    @button.long_click
  end
  
  Então('devo ver o botão com o texto: {string}') do |expect_text|
    expect(@button.button.text).to eql expect_text
  end
  