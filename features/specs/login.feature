#language: pt
  Funcionalidade: Login

      @login
    Cenario: Login com sucesso

      Dado que acesso a tela de login
      Quando submeto minhas credenciais
        | email | eu@papito.io |
        | senha | qaninja      |
      Entao devo ver a notificação: "Show! Suas credenciais são validas."