object frmFTPTest: TfrmFTPTest
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FTP Test'
  ClientHeight = 295
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object lHostValue: TLabel
    Left = 96
    Top = 8
    Width = 12
    Height = 15
    Caption = '....'
  end
  object lRemoteValue: TLabel
    Left = 96
    Top = 71
    Width = 12
    Height = 15
    Caption = '....'
  end
  object lUserNameValue: TLabel
    Left = 96
    Top = 29
    Width = 12
    Height = 15
    Caption = '....'
  end
  object lPasswordValue: TLabel
    Left = 96
    Top = 50
    Width = 12
    Height = 15
    Caption = '....'
  end
  object lHost: TLabel
    Left = 8
    Top = 8
    Width = 28
    Height = 15
    Caption = 'lHost'
  end
  object lUserName: TLabel
    Left = 8
    Top = 29
    Width = 58
    Height = 15
    Caption = 'lUserName'
  end
  object lPassword: TLabel
    Left = 8
    Top = 50
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object lRemote: TLabel
    Left = 8
    Top = 71
    Width = 62
    Height = 15
    Caption = 'Remote Dir.'
  end
  object mOutput: TMemo
    Left = 8
    Top = 92
    Width = 465
    Height = 169
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 398
    Top = 267
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 1
  end
  object bTest: TBitBtn
    Left = 8
    Top = 267
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Test'
    ModalResult = 1
    TabOrder = 2
    OnClick = bTestClick
  end
  object testFTP: TIdFTP
    OnDisconnected = testFTPDisconnected
    OnConnected = testFTPConnected
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 296
    Top = 8
  end
end
