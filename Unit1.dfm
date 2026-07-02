object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora de IMC'
  ClientHeight = 260
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lblPeso: TLabel
    Left = 32
    Top = 32
    Width = 60
    Height = 15
    Caption = 'Peso (kg):'
  end
  object lblAltura: TLabel
    Left = 32
    Top = 80
    Width = 68
    Height = 15
    Caption = 'Altura (m):'
  end
  object lblResultado: TLabel
    Left = 32
    Top = 160
    Width = 121
    Height = 15
    Caption = 'Seu IMC é: --'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblClassificacao: TLabel
    Left = 32
    Top = 190
    Width = 122
    Height = 15
    Caption = 'Classificação: --'
  end
  object edtPeso: TEdit
    Left = 128
    Top = 29
    Width = 121
    Height = 23
    TabOrder = 0
    Text = ''
  end
  object edtAltura: TEdit
    Left = 128
    Top = 77
    Width = 121
    Height = 23
    TabOrder = 1
    Text = ''
  end
  object btnCalcular: TButton
    Left = 128
    Top = 120
    Width = 121
    Height = 30
    Caption = 'Calcular IMC'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
