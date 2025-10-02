#language: en
Feature: Avengers

  Background: Acessa o App
    Given que estou no app
    
        @remove_hero
    Scenario: Remover o Capitão America
        Given que acesso a tela Avengers
        When eu apago o Capitão America
        Then devo ver a seguinte mensagem: "Item removido! (posição = 0)"