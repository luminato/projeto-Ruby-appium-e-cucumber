#language: pt

Funcionalidade: inputs

    @radio
    Cenario: Radio Button
        Dado que acesso a tela Botões de Radio
        Quando eu escolho a opção "<linguagem>"
        Então esta opção deve ser marcada

    Exemplos:
    |linguagem|
    |Ruby|
    |Java|
    |C#|
    |Python|
    |Javascript|
    |Elixir|
    |Go Lang|

    @checkbox
    Cenario: Checkbox
        Dado que acesso a tela Checkbox
        Quando eu marco a opção Ruby
        Então esta opção deve estar marcada

    @checkbox2
    Cenario: todas as tech que usam o Appium
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes tech:
            |tech|
            |Ruby|
            |Java|
            |Python|
            |Javascript|
            |C#|
            |Robot Framework|
        Então todas essas opções devem estar marcadas
