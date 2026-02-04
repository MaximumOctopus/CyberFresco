object frmNewSection: TfrmNewSection
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Section'
  ClientHeight = 162
  ClientWidth = 244
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
    Top = 125
    Width = 233
    Height = 4
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 220
    Height = 15
    Caption = 'Please choose a name for the new section'
  end
  object Label2: TLabel
    Left = 8
    Top = 77
    Width = 193
    Height = 30
    Caption = 
      'NB: Only the letters A-Z, a-z and the numbers 0 to 9 are permitt' +
      'ed'
    WordWrap = True
  end
  object bbOK: TBitBtn
    Left = 88
    Top = 133
    Width = 75
    Height = 25
    Caption = '&OK'
    Default = True
    Enabled = False
    TabOrder = 0
    OnClick = bbOKClick
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 133
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object eName: TEdit
    Left = 48
    Top = 37
    Width = 153
    Height = 23
    MaxLength = 20
    TabOrder = 2
    OnChange = eNameChange
  end
end
