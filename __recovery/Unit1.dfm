object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Brutto na netto i na odwr'#243't '
  ClientHeight = 442
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object VectorLabel: TLabel
    Left = 40
    Top = 16
    Width = 83
    Height = 15
    Caption = 'brutto na netto:'
  end
  object OutputLabel: TLabel
    Left = 392
    Top = 88
    Width = 66
    Height = 15
    Caption = 'OutputLabel'
  end
  object VatRateLabel: TLabel
    Left = 278
    Top = 24
    Width = 59
    Height = 15
    Caption = 'Stawka vat:'
  end
  object VectorToggle: TToggleSwitch
    Left = 40
    Top = 45
    Width = 73
    Height = 20
    TabOrder = 0
    OnClick = VectorToggleClick
  end
  object InputTextField: TEdit
    Left = 135
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'InputTextField'
  end
  object Button1: TButton
    Left = 392
    Top = 44
    Width = 75
    Height = 25
    Caption = 'oblicz'
    TabOrder = 2
    OnClick = Button1Click
  end
  object VatTextField: TEdit
    Left = 278
    Top = 45
    Width = 75
    Height = 23
    TabOrder = 3
    Text = 'VatTextField'
  end
end
