#language: pt

Funcionalidade: Buttons
    
        @click_short
    Cenario: Clique Simples
        Dado que acesso a tela Click Simples
        Quando faço um click simples
        Entao devo ver o texto: "Isso é um clique simples"
        
        @click_longo
    Cenario: Cloque Longooo
        Dado que acesso a tela Click Longooo
        Quando faço um click Longooo   
        Entao devo ver o botão com o texto: "CLIQUE LONGO OK"