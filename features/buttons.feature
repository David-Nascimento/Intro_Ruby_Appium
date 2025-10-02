#language: en

Feature: Buttons
    
    Background: Acessa o App
        Given que estou no app
    
        @click_short
    Scenario: Clique Simples
        Given que acesso a tela Click Simples
        When faço um click simples
        Then devo ver o texto: "Isso é um clique simples"
        
        @click_longo
    Scenario: Cloque Longooo
        Given que acesso a tela Click Longooo
        When faço um click Longooo   
        Then devo ver o botão com o texto: "CLIQUE LONGO OK"