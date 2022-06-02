Dado('que acesso a tela Botões de Radio') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("BOTÕES DE RADIO")
  end
  
  Quando('eu escolho a opção {string}') do |linguagem|
    @input.tap_radio(linguagem)
  end
  
  Então('esta opção deve ser marcada') do  
    expect(@input.value_radio.checked).to eql "true"
  end

  Dado ('que acesso a tela Checkbox') do
    @nav.tap_hamburger
    @nav.tap_by_text("INPUTS")
    @nav.tap_by_text("CHECKBOX")
  end

  Quando ('eu marco a opção Ruby') do
    @input.tap_check("Ruby")
  end

  Então ('esta opção deve estar marcada') do
    expect(@input.value_check.checked).to eql "true"
  end

  Quando ('eu marco as seguintes tech:') do |table|
    @tech = table.hashes

    @tech.each do |item|
      #log(item["tech"])
      @input.tap_check(item["tech"])
    end
  end

  Então ('todas essas opções devem estar marcadas') do
    @tech.each do |item|
      @input.find_check(item["tech"])
      expect(@input.value_check.checked).to eql "true"
    end
  end
