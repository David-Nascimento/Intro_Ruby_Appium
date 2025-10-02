#language: en
Feature: Login com sucesso

  Background: Acessa o App
    Given que estou no app

  @login
  Scenario: Login com sucesso
    Given que acesso a tela de login
    When submeto minhas credenciais
      | email | eu@papito.io |
      | senha | qaninja      |
    Then devo ver a notificação: "Show! Suas credenciais são validas."