object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rename'
  ClientHeight = 205
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Bevel2: TBevel
    Left = 8
    Top = 168
    Width = 377
    Height = 5
    Shape = bsTopLine
  end
  object Bevel3: TBevel
    Left = 8
    Top = 24
    Width = 377
    Height = 5
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 128
    Top = 40
    Width = 27
    Height = 15
    Caption = 'Stem'
  end
  object Label4: TLabel
    Left = 128
    Top = 96
    Width = 45
    Height = 15
    Caption = 'Example'
  end
  object lExample: TLabel
    Left = 128
    Top = 112
    Width = 42
    Height = 13
    Caption = 'lExample'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 311
    Height = 15
    Caption = 'Rename all the current section'#39's images in one easy step.....'
  end
  object eStem: TEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object rgDigits: TRadioGroup
    Left = 16
    Top = 40
    Width = 97
    Height = 105
    Caption = 'Number of digits'
    ItemIndex = 0
    Items.Strings = (
      '2'
      '3'
      '4'
      '5'
      '6')
    TabOrder = 1
  end
  object bOK: TBitBtn
    Left = 248
    Top = 176
    Width = 65
    Height = 25
    Caption = '&OK'
    ModalResult = 1
    TabOrder = 2
  end
  object bCancel: TBitBtn
    Left = 320
    Top = 176
    Width = 65
    Height = 25
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
