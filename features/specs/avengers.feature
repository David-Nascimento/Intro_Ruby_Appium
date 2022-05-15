#language: pt
Funcionalidade: Avengers

        @remove_hero
    Cenario: Remover o Capitão America
        Dado que acesso a tela Avengers
        Quando eu apago o Capitão America
        Entao devo ver a seguinte mensagem: "Item removido! (posição = 0)"