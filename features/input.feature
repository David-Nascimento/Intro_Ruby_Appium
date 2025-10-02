#language: en
Feature: Inputs

  Background: Acessa o App
    Given que estou no app
    
      @inputs
    Scenario: Radio Button

      Given que acesso a tela Botões de Radio
      When eu escolho a opção Ruby
      Then esta opção deve ser marcada

        @checkbox
    Scenario: Checkbox

      Given que acesso a tela Botões de Checkbox
      When eu marco a opção Ruby
      Then esta opção deve estar marcada

          @checkbox2
    Scenario: Todas as techs que usam o Appium

        Given que acesso a tela Botões de Checkbox
        When eu marco as seguintes techs:
          | techs           |
          | Ruby            |
          | Java            |
          | Python          |
          | Javascript      |
          | C#              |
          | Robot Framework |
        Then todas essas opções devem estar marcadas