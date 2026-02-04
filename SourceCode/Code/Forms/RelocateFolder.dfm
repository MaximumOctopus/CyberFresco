object frmRelocateFolder: TfrmRelocateFolder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relocate Folder'
  ClientHeight = 180
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 75
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object eOldPattern: TEdit
    Left = 8
    Top = 40
    Width = 351
    Height = 23
    TabOrder = 0
  end
  object eNewPattern: TEdit
    Left = 8
    Top = 96
    Width = 351
    Height = 23
    TabOrder = 1
  end
  object bOK: TBitBtn
    Left = 203
    Top = 147
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = bOKClick
  end
  object bCancel: TBitBtn
    Left = 284
    Top = 147
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
