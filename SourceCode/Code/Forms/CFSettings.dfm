object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Settings'
  ClientHeight = 322
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Bevel2: TBevel
    Left = 5
    Top = 282
    Width = 491
    Height = 6
    Shape = bsTopLine
  end
  object pProxy: TPanel
    Left = 127
    Top = 8
    Width = 370
    Height = 266
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 40
      Width = 44
      Height = 15
      Caption = 'FTP Port'
    end
    object cbCPassiveMode: TCheckBox
      Left = 8
      Top = 8
      Width = 153
      Height = 17
      Caption = 'Passive FTP mode'
      TabOrder = 0
    end
    object eCFTPPort: TEdit
      Left = 64
      Top = 36
      Width = 49
      Height = 23
      TabOrder = 1
    end
  end
  object pWelcome: TPanel
    Left = 127
    Top = 8
    Width = 370
    Height = 266
    TabOrder = 3
    object Label2: TLabel
      Left = 156
      Top = 240
      Width = 201
      Height = 13
      Caption = 'CyberFresco - (c) Paul Alan Freshney 2026'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object pGeneral: TPanel
    Left = 127
    Top = 8
    Width = 369
    Height = 266
    TabOrder = 0
    object cbShowTips: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Show tips'
      TabOrder = 0
    end
  end
  object pUpload: TPanel
    Left = 127
    Top = 8
    Width = 369
    Height = 266
    TabOrder = 1
    object Label21: TLabel
      Left = 32
      Top = 50
      Width = 66
      Height = 15
      Caption = 'Website URL'
    end
    object Label1: TLabel
      Left = 32
      Top = 82
      Width = 47
      Height = 15
      Caption = 'FTP Host'
    end
    object Label3: TLabel
      Left = 32
      Top = 124
      Width = 53
      Height = 15
      Caption = 'Username'
    end
    object Label7: TLabel
      Left = 32
      Top = 148
      Width = 50
      Height = 15
      Caption = 'Password'
    end
    object Label14: TLabel
      Left = 32
      Top = 184
      Width = 61
      Height = 15
      Caption = #39'Home'#39' link'
    end
    object cbUseDefaultFTP: TCheckBox
      Left = 8
      Top = 13
      Width = 153
      Height = 17
      Caption = 'Use default website details'
      TabOrder = 0
      OnClick = cbUseDefaultFTPClick
    end
    object eWebsiteURL: TEdit
      Left = 104
      Top = 48
      Width = 241
      Height = 23
      Hint = 
        'put your website address along with the album name (ie http://my' +
        'site.com/albumname)'
      Color = clWhite
      TabOrder = 1
    end
    object eFTPHost: TEdit
      Left = 104
      Top = 77
      Width = 241
      Height = 23
      Hint = 
        'this is the address used to connect to your website (i.e. www.my' +
        'website.com)'
      TabOrder = 2
    end
    object eUsername: TMaskEdit
      Left = 104
      Top = 120
      Width = 153
      Height = 23
      PasswordChar = '*'
      TabOrder = 3
      Text = ''
    end
    object ePassword: TMaskEdit
      Left = 104
      Top = 144
      Width = 153
      Height = 23
      PasswordChar = '*'
      TabOrder = 4
      Text = ''
    end
    object eASHomeLink: TEdit
      Left = 32
      Top = 200
      Width = 313
      Height = 23
      TabOrder = 5
    end
  end
  object bbSave: TBitBtn
    Left = 340
    Top = 294
    Width = 75
    Height = 25
    Caption = '&Save'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFC06860B05850A05050A05050A0505090
      4850904840904840804040803840803840703840703830FF00FFFF00FFD06870
      F09090E08080B04820403020C0B8B0C0B8B0D0C0C0D0C8C0505050A04030A040
      30A03830703840FF00FFFF00FFD07070FF98A0F08880E0808070585040403090
      7870F0E0E0F0E8E0908070A04030A04040A04030803840FF00FFFF00FFD07870
      FFA0A0F09090F08880705850000000404030F0D8D0F0E0D0807860B04840B048
      40A04040804040FF00FFFF00FFD07880FFA8B0FFA0A0F0909070585070585070
      5850705850706050806860C05850B05050B04840804040FF00FFFF00FFE08080
      FFB0B0FFB0B0FFA0A0F09090F08880E08080E07880D07070D06870C06060C058
      50B05050904840FF00FFFF00FFE08890FFB8C0FFB8B0D06060C06050C05850C0
      5040B05030B04830A04020A03810C06060C05850904840FF00FFFF00FFE09090
      FFC0C0D06860FFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0E0D0C0E0C8C0A038
      10C06060904850FF00FFFF00FFE098A0FFC0C0D07070FFFFFFFFFFFFFFFFFFFF
      F8F0F0F0F0F0E8E0F0D8D0E0D0C0A04020D06860A05050FF00FFFF00FFF0A0A0
      FFC0C0E07870FFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0F0E8E0F0D8D0B048
      30D07070A05050FF00FFFF00FFF0A8A0FFC0C0E08080FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F0F0F0F0F0E8E0B05030E07880A05050FF00FFFF00FFF0B0B0
      FFC0C0F08890FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0F0F0F0C050
      40603030B05850FF00FFFF00FFF0B0B0FFC0C0FF9090FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8F0C05850B05860B05860FF00FFFF00FFF0B8B0
      F0B8B0F0B0B0F0B0B0F0A8B0F0A0A0E098A0E09090E09090E08890E08080D078
      80D07870D07070FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ModalResult = 1
    TabOrder = 4
  end
  object bbCancel: TBitBtn
    Left = 421
    Top = 294
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancel'
    Default = True
    ModalResult = 2
    TabOrder = 5
  end
  object tvMenu: TTreeView
    Left = 5
    Top = 8
    Width = 113
    Height = 265
    Indent = 19
    ReadOnly = True
    TabOrder = 6
    OnClick = tvMenuClick
    Items.NodeData = {
      070300000009540054007200650065004E006F00640065002D00000000000000
      00000000FFFFFFFFFFFFFFFF000000000000000000000000000107470065006E
      006500720061006C0000002B0000000000000000000000FFFFFFFFFFFFFFFF00
      0000000000000000000000000106550070006C006F0061006400000033000000
      0000000000000000FFFFFFFFFFFFFFFF00000000000000000000000000010A43
      006F006E006E0065006300740069006F006E00}
  end
  object bHelp: TBitBtn
    Left = 5
    Top = 294
    Width = 75
    Height = 25
    Caption = '&Help'
    Glyph.Data = {
      06030000424D06030000000000003600000028000000100000000F0000000100
      180000000000D0020000D30E0000D30E0000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000000084
      008484008484848400000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF00000000000000840084840084FFFFFFFFFFFFC6C6C684848400000000FF
      0000FF0000FF0000FF0000FF00000000000000840084840084FFFFFFFFFFFF00
      0000000000C6C6C6C6C6C684848400000000FF0000FF0000FF00848484840084
      840084FFFFFFFFFFFF000000000000840084840084000000C6C6C6C6C6C68484
      8400000000FF0000FF00848484840084FFFFFF00000000000084008484008484
      0084840084840084000000C6C6C6C6C6C684848400000000FF00848484000000
      00000084008484008484008400848400FFFF840084840084840084000000C6C6
      C6C6C6C684848400000084848484008484008484008484008484008484008400
      8484840084840084840084840084000000C6C6C600000000FF0000FF00840084
      FFFFFF84008484008484008484008484008400FFFF00FFFF8400848400848400
      8400000000000000FF0000FF0000FF00840084FFFFFF84008484008484008484
      008484008400848400FFFF00FFFF84008484008400000000FF0000FF0000FF00
      00FF00840084FFFFFF84008484008484008400848484008400FFFF00FFFF8400
      8484008484008400000000FF0000FF0000FF0000FF00840084FFFFFF84008484
      008400FFFF00FFFF00FFFF84008484008484008400000000000000FF0000FF00
      00FF0000FF0000FF00840084FFFFFF8400848400848400848400848400840000
      0000000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00840084FF
      FFFF84008484008400000000000000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0084008484008400000000FF0000FF0000FF
      0000FF0000FF0000FF00}
    TabOrder = 7
    OnClick = bHelpClick
  end
end
