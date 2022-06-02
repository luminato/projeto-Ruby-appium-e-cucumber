#language: pt

Funcionalidade: Login

    @login
    Cenario: Login com sucesso
        Dado que acesso a tela de Login
        Quando submeto minhas credenciais 
            |email|eu@luminato.com|
            |senha|qaninja|
        Então devo ver a notificação: "Show! Suas credenciais são validas."

    @login @falha
    Cenario: Senha invalida
        Dado que acesso a tela de Login
        Quando submeto minhas credenciais
            |email|eu@luminato.com|
            |senha|00| 
        Então devo ver a notificação: "Senha inválida!"

    @login @email
    Cenario: Email inválido
        Dado que acesso a tela de Login
        Quando submeto minhas credenciais
            |email|error|
            |senha|00| 
        Então devo ver um alerta: "Por favor, informe um email bom!"

    @login @senha_vazia
    Cenario: senha vazia
        Dado que acesso a tela de Login
        Quando submeto minhas credenciais
            |email|eu@luminato.com|
            |senha|| 
        Então devo ver um alerta: "Oops! Senha em branco!"