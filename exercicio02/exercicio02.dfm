object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TNumDivisor'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Resultado: TLabel
    Left = 10
    Top = 32
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label1: TLabel
    Left = 8
    Top = 135
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Button1: TButton
    Left = 112
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Calcular Divisores'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 10
    Top = 8
    Width = 96
    Height = 21
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 10
    Top = 47
    Width = 209
    Height = 42
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 8
    Top = 110
    Width = 98
    Height = 25
    TabOrder = 3
  end
  object Button2: TButton
    Left = 112
    Top = 110
    Width = 105
    Height = 25
    Caption = #201' numero primo ?'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Memo2: TMemo
    Left = 8
    Top = 151
    Width = 209
    Height = 42
    Lines.Strings = (
      '')
    TabOrder = 5
  end
end
