#language: pt
  Funcionalidade: Inputs

      @inputs
    Cenario: Radio Button

      Dado que acesso a tela Botões de Radio
      Quando eu escolho a opção Ruby
      Entao esta opção deve ser marcada

        @checkbox
    Cenario: Checkbox

      Dado que acesso a tela Botões de Checkbox
      Quando eu marco a opção Ruby
      Entao esta opção deve estar marcada

          @checkbox2
    Cenario: Todas as techs que usam o Appium

        Dado que acesso a tela Botões de Checkbox
        Quando eu marco as seguintes techs:
          | techs           |
          | Ruby            |
          | Java            |
          | Python          |
          | Javascript      |
          | C#              |
          | Robot Framework |
        Entao todas essas opções devem estar marcadas