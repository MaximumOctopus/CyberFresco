object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 19
    Width = 69
    Height = 15
    Caption = 'Simple name'
  end
  object Label2: TLabel
    Left = 16
    Top = 52
    Width = 60
    Height = 15
    Caption = 'Description'
  end
  object Label3: TLabel
    Left = 16
    Top = 84
    Width = 37
    Height = 15
    Caption = 'Author'
  end
  object sbSave: TSpeedButton
    Left = 192
    Top = 120
    Width = 65
    Height = 24
    Caption = '&Save'
    Enabled = False
    Flat = True
  end
  object sbCancel: TSpeedButton
    Left = 264
    Top = 120
    Width = 65
    Height = 24
    Caption = '&Cancel'
    Flat = True
  end
  object Bevel2: TBevel
    Left = 16
    Top = 112
    Width = 321
    Height = 4
    Shape = bsTopLine
  end
  object eSimpleName: TEdit
    Left = 96
    Top = 16
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object eDescription: TEdit
    Left = 96
    Top = 48
    Width = 233
    Height = 21
    TabOrder = 1
  end
  object eAuthor: TEdit
    Left = 96
    Top = 80
    Width = 233
    Height = 21
    TabOrder = 2
  end
end
