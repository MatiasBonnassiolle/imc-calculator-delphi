# Calculadora de IMC em Delphi

Aplicativo simples em Delphi (VCL) que calcula o Índice de Massa Corporal (IMC) a partir do peso e da altura informados pelo usuário, e exibe a classificação correspondente.

## Funcionalidades

- Entrada de peso (kg) e altura (m)
- Cálculo do IMC: `IMC = peso / (altura * altura)`
- Validação dos campos (não aceita valores inválidos ou negativos)
- Classificação automática:
  - Abaixo do peso: IMC < 18.5
  - Peso normal: 18.5 ≤ IMC < 25
  - Sobrepeso: 25 ≤ IMC < 30
  - Obesidade grau I: 30 ≤ IMC < 35
  - Obesidade grau II: 35 ≤ IMC < 40
  - Obesidade grau III: IMC ≥ 40

## Estrutura do projeto

```
IMCCalculator/
├── IMCCalculator.dpr   # Arquivo principal do projeto
├── Unit1.pas           # Lógica da aplicação
├── Unit1.dfm           # Layout do formulário
└── README.md
```

## Como executar

1. Abra o `IMCCalculator.dpr` no Delphi (RAD Studio / Delphi Community Edition).
2. Compile e execute (F9).
3. Digite peso e altura e clique em "Calcular IMC".

## Tecnologias

- Delphi (VCL Forms Application)

---

Projeto feito para fins de estudo e portfólio.
