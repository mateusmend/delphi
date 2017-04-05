object Form1: TForm1
  Left = 488
  Top = 110
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 247
    Height = 13
    Caption = 'Escreva o caminho para o arquivo. Ex. D:/texto.txt'
  end
  object Button1: TButton
    Left = 24
    Top = 56
    Width = 75
    Height = 34
    Caption = 'Abrir Arquivo'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 29
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object memo1: TMemo
    Left = 216
    Top = 27
    Width = 321
    Height = 446
    TabOrder = 2
  end
end
