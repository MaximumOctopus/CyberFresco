object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'Form11'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    Shape = bsFrame
    ExplicitWidth = 482
    ExplicitHeight = 248
  end
  object lHost: TLabel
    Left = 96
    Top = 8
    Width = 28
    Height = 15
    Caption = 'lHost'
  end
  object lremote: TLabel
    Left = 96
    Top = 56
    Width = 28
    Height = 15
    Caption = 'lHost'
  end
  object lusername: TLabel
    Left = 96
    Top = 24
    Width = 28
    Height = 15
    Caption = 'lHost'
  end
  object lpassword: TLabel
    Left = 96
    Top = 40
    Width = 28
    Height = 15
    Caption = 'lHost'
  end
  object Host: TLabel
    Left = 8
    Top = 8
    Width = 25
    Height = 15
    Caption = 'Host'
  end
  object Username: TLabel
    Left = 8
    Top = 24
    Width = 53
    Height = 15
    Caption = 'Username'
  end
  object llPassword: TLabel
    Left = 8
    Top = 40
    Width = 50
    Height = 15
    Caption = 'Password'
  end
  object llRemote: TLabel
    Left = 8
    Top = 56
    Width = 62
    Height = 15
    Caption = 'Remote Dir.'
  end
  object mOutput: TMemo
    Left = 8
    Top = 72
    Width = 465
    Height = 169
    TabOrder = 0
  end
  object testFTP: TIdFTP
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
