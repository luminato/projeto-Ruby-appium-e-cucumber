#language: pt

Funcionalidade: Buttons 

    @clique @simples
    Cenario: Clique simples
        Dado que acesso a tela Clique Simples
        Quando faço um click simples
        Então devo ver o texto: "Isso é um clique simples"

    @clique @longo
    Cenario: Clique longo
        Dado que acesso a tela Clique Longo
        Quando faço um clique longo
        Então devo ver o botão com o texto: "CLIQUE LONGO OK"