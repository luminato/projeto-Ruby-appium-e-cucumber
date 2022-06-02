## Projeto basico para automação em appium com cucumber e Ruby

![Build Status][travis-image]

foram realizados os seguntes testes:

- ✔ Navegação
- ✔ Tela de Login
- ✔ Ações de botões
- ✔ menu Radio
- ✔ menu checkbox

## Descrição

Testar as funcionalidades basicas do app usando cucumber e Ruby, exibir tela de relatorios com allure e organização do projeto

## Requisitos minimos para o teste

- [x] Java 8
- [x] Dispositivo android
- [x] Appium
- [x] Ruby

## Comandos Básicos


execução de todo o teste
```sh
cucumber
```

execução do Allure report
```sh
allure serve logs
```

### observações

mudar o local do app antes da execução do projeto

```sh
[caps]
automationName = "UIAutomator2"
platformName = "Android"
deviceName = "Android Emulator"
app = "C:\\Users\\fluminat\\qaninja\\twp-cucumber-ruby-mobile\\app\\twp.apk"
```

> app= "local da sua maquina\\twp-cucumber-ruby-mobile\\app\\twp.apk""


[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square

