object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 859
  ClientWidth = 1511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  Position = poScreenCenter
  OnClose = FormClose
  OnConstrainedResize = FormConstrainedResize
  OnCreate = FormCreate
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 293
    Top = 73
    Height = 767
    ExplicitLeft = 160
    ExplicitHeight = 770
  end
  object tvAlbum: TTreeView
    Left = 0
    Top = 73
    Width = 293
    Height = 767
    Align = alLeft
    HideSelection = False
    Images = ImageList1
    Indent = 19
    ReadOnly = True
    TabOrder = 0
    OnClick = tvAlbumClick
  end
  object sbMain: TStatusBar
    Left = 0
    Top = 840
    Width = 1511
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 700
      end
      item
        Width = 60
      end
      item
        Width = 50
      end>
    OnResize = sbMainResize
  end
  object pcMain: TPageControl
    Left = 296
    Top = 73
    Width = 1215
    Height = 767
    ActivePage = tsAlbum
    Align = alClient
    Images = ImageList1
    TabOrder = 2
    object tsAlbum: TTabSheet
      Caption = 'Album'
      ImageIndex = 3
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1207
        Height = 737
        ActivePage = TabSheet6
        Align = alClient
        Images = ImageList1
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = 'Index Page'
          ImageIndex = 5
          object Label17: TLabel
            Left = 19
            Top = 111
            Width = 92
            Height = 15
            Caption = 'Available Themes'
          end
          object sbEditTheme: TSpeedButton
            Left = 538
            Top = 108
            Width = 65
            Height = 22
            Hint = 'edit this theme with the CyberFresco theme editor'
            Caption = 'edit theme'
            Flat = True
            OnClick = sbEditThemeClick
          end
          object Label18: TLabel
            Left = 18
            Top = 81
            Width = 131
            Height = 15
            Caption = 'Thumbnail width (pixels)'
          end
          object Label19: TLabel
            Left = 18
            Top = 20
            Width = 61
            Height = 15
            Caption = 'Album Title'
          end
          object Label29: TLabel
            Left = 18
            Top = 53
            Width = 120
            Height = 15
            Caption = '"Index" page file name'
          end
          object Label33: TLabel
            Left = 307
            Top = 52
            Width = 99
            Height = 15
            Caption = '"Home" page path'
          end
          object cbAIPTheme: TComboBox
            Left = 155
            Top = 108
            Width = 377
            Height = 23
            Style = csDropDownList
            TabOrder = 2
            OnChange = cbAIPThemeChange
          end
          object seAIPThumbnailWidth: TSpinEdit
            Left = 155
            Top = 78
            Width = 57
            Height = 24
            Hint = 
              'change this value to make the images on the index page bigger or' +
              ' smaller'
            MaxValue = 600
            MinValue = 20
            TabOrder = 1
            Value = 250
          end
          object cbAIPTitle: TEdit
            Left = 155
            Top = 17
            Width = 506
            Height = 23
            Hint = 'the album title appears at the top of the index page'
            TabOrder = 0
          end
          object Panel3: TPanel
            Left = 0
            Top = 160
            Width = 1199
            Height = 547
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 3
            object wbIndexTheme: TWebBrowser
              Left = 1
              Top = 1
              Width = 1197
              Height = 545
              Align = alClient
              TabOrder = 0
              ControlData = {
                4C000000B77B0000543800000000000000000000000000000000000000000000
                000000004C000000000000000000000001000000E0D057007335CF11AE690800
                2B2E126208000000000000004C0000000114020000000000C000000000000046
                8000000000000000000000000000000000000000000000000000000000000000
                00000000000000000100000000000000000000000000000000000000}
            end
          end
          object eAIPFilename: TEdit
            Left = 155
            Top = 49
            Width = 137
            Height = 23
            TabOrder = 4
          end
          object eASHomeLink: TEdit
            Left = 412
            Top = 49
            Width = 249
            Height = 23
            TabOrder = 5
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Online Settings'
          ImageIndex = 6
          object Label4: TLabel
            Left = 8
            Top = 8
            Width = 245
            Height = 13
            Caption = 'NB: These settings are for the entire album'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 24
            Top = 67
            Width = 47
            Height = 15
            Caption = 'FTP Host'
          end
          object Label2: TLabel
            Left = 24
            Top = 96
            Width = 64
            Height = 15
            Caption = 'Album Root'
          end
          object Label3: TLabel
            Left = 24
            Top = 172
            Width = 53
            Height = 15
            Caption = 'Username'
          end
          object Label7: TLabel
            Left = 24
            Top = 200
            Width = 50
            Height = 15
            Caption = 'Password'
          end
          object Label21: TLabel
            Left = 24
            Top = 34
            Width = 66
            Height = 15
            Caption = 'Website URL'
          end
          object sbASTestSettings: TSpeedButton
            Left = 120
            Top = 240
            Width = 121
            Height = 22
            Caption = 'test these settings'
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F0000000130B0000130B00001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777777700007777700000007777777700007777700F00007777777700007777
              700F00007777777700007777700F000077777777000077700000000000777777
              00007788888888888887777700007777770F0FF07777777700007777770F0000
              077BB77700007777000FFFFFF077B77700007770FFFFFF000077779700007770
              F0F0F070FF07799700007770FFFFF0770FF0777700007770FFF0F07770FF07E7
              0000770FF0FFF077770F0077000070FF00F00777777000070000700070F07777
              E77700770000777770F07797EE7BB77700007777770077997777B77700007777
              77777777777777770000}
            OnClick = sbASTestSettingsClick
          end
          object Label28: TLabel
            Left = 24
            Top = 125
            Width = 74
            Height = 15
            Caption = 'Absolute Path'
          end
          object eFTPHost: TEdit
            Left = 120
            Top = 64
            Width = 353
            Height = 23
            Hint = 
              'this is the address used to connect to your website (i.e. www.my' +
              'website.com)'
            TabOrder = 1
            OnChange = eWebsiteURLChange
            OnExit = eWebsiteURLExit
          end
          object eAlbumRoot: TEdit
            Left = 120
            Top = 93
            Width = 353
            Height = 23
            Hint = 'the location of the album on your website (i.e. family)'
            TabOrder = 2
            OnChange = eWebsiteURLChange
            OnExit = eWebsiteURLExit
          end
          object eWebsiteURL: TEdit
            Left = 120
            Top = 32
            Width = 353
            Height = 23
            Hint = 
              'put your website address along with the album name (ie http://my' +
              'site.com/albumname)'
            TabOrder = 0
            OnChange = eWebsiteURLChange
            OnExit = eWebsiteURLExit
          end
          object ePassword: TMaskEdit
            Left = 120
            Top = 197
            Width = 177
            Height = 23
            Hint = 
              'this is the password that is required to access the '#39'ftp host ab' +
              'ove'#39
            PasswordChar = '*'
            TabOrder = 3
            Text = ''
            OnChange = eWebsiteURLChange
          end
          object eAbsolutePath: TEdit
            Left = 120
            Top = 122
            Width = 353
            Height = 23
            Hint = 
              'this is the address you would give to other people to allow them' +
              ' to access your album'
            TabOrder = 4
            OnChange = eWebsiteURLChange
          end
          object bAutoConfigure: TBitBtn
            Left = 488
            Top = 32
            Width = 97
            Height = 23
            Caption = 'auto configure'
            TabOrder = 5
            OnClick = bAutoConfigureClick
          end
          object eUsername: TEdit
            Left = 120
            Top = 168
            Width = 177
            Height = 23
            TabOrder = 6
            OnChange = eWebsiteURLChange
          end
        end
      end
    end
    object tsPictureList: TTabSheet
      Caption = 'Picture List'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 160
        Height = 737
        Align = alLeft
        TabOrder = 0
        object Shape2: TShape
          Left = 7
          Top = 7
          Width = 145
          Height = 116
          Brush.Color = clBtnFace
        end
        object Shape1: TShape
          Left = 7
          Top = 231
          Width = 145
          Height = 116
          Brush.Color = clBtnFace
        end
        object iPreview: TImage
          Left = 8
          Top = 8
          Width = 143
          Height = 114
          Cursor = crHandPoint
          Hint = 'click here to view the image gallery'
          Proportional = True
          OnClick = iPreviewClick
        end
        object sbPLAddPictures: TSpeedButton
          Left = 8
          Top = 128
          Width = 145
          Height = 22
          Hint = 'add pictures to this section'
          Caption = 'add individual pictures'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4040
            40404040FF00FFFF00FF80808080808080808080808080808080808080808080
            808080808080808080808000FFFF00FFFF404040808080808080808080004000
            FFCC0000400033663300400033663333663333663333663300400000FFFF00FF
            FF404040404040404040808080FFCC33FFCC0000400000800000400000800000
            800000800000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF404040808080004000
            FFCC0000400033993333993333993333993333993300FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF808080808080FFFF99FFCC00FFCC0000400000400033CC3333
            CC3333CC3333CC3300400000FFFF00FFFFFFCC00FFFF99808080808080FFCC33
            004000004000FFCC00FFCC00336633003366003366336633FFFF9900FFFF00FF
            FFFFFF99004000808080808080CCFF99FFCC33FFCC33CCFF9933993300336666
            99CC6699CC003366339933CCFF99004000CCFF99CCFF99808080808080CCFF99
            339933CCFF99CCFF9900336666CCFF99CCFF6699CC6699CC003366CCFF99CCFF
            99004000CCFF99808080808080339933CCFFCC339933CCFF9900336666CCFF66
            CCFF99CCFF6699CC003366CCFF996699CCCCFFCC003366808080808080CCFFFF
            FFCC33339933003366CCFF9900336666CCFF66CCFF003366CCFF99CCFF990033
            666699CCCCFFFF808080808080CCFFFF339933FFCC33339933003366CCFF9900
            3366003366CCFF99CCFFFF003366339933CCFFFF003366808080808080CCFFFF
            FFCC33CCFFFFCCFFFFCCFFFF003366CCFFFFCCFFFFCCFFFF003366339933CCFF
            FF6699CC00336680808080808080808080808080808080808080808080808080
            8080808080808080808080808080808080808080808080808080}
          Margin = 8
          OnClick = sbPLAddPicturesClick
        end
        object sbPLRemovePictures: TSpeedButton
          Left = 8
          Top = 176
          Width = 145
          Height = 22
          Hint = 'remove the selected pictures from this section'
          Caption = 'remove picture'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF80808080808080808080808080808080808080808080
            8080808080808080808080808080808080808080808080808080808080004000
            FFCC000040003366330040003366333366333366333366334040404040404040
            40404040404040404040808080FFCC33FFCC0000400000800000400000800000
            800000800000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF404040808080004000
            FFCC0000400033993333993333993333993333993300FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF808080808080FFFF99FFCC00FFCC0000400000400033CC3333
            CC3333CC3333CC33004000004000FFCC00FFCC00FFFF99808080808080FFCC33
            004000004000FFCC00FFCC00336633003366003366336633FFFF99FFFF99FFCC
            00FFFF99004000808080808080CCFF99FFCC33FFCC33CCFF9933993300336666
            99CC6699CC003366339933CCFF99004000CCFF99CCFF99808080808080CCFF99
            339933CCFF99CCFF9900336666CCFF99CCFF6699CC6699CC003366CCFF99CCFF
            99004000CCFF99808080808080339933CCFFCC339933CCFF9900336666CCFF66
            CCFF99CCFF6699CC003366CCFF996699CCCCFFCC003366808080808080CCFFFF
            FFCC33339933003366CCFF9900336666CCFF66CCFF003366CCFF99CCFF990033
            666699CCCCFFFF808080808080CCFFFF339933FFCC33339933003366CCFF9900
            3366003366CCFF99CCFFFF003366339933CCFFFF003366808080808080CCFFFF
            FFCC33CCFFFFCCFFFFCCFFFF003366CCFFFFCCFFFFCCFFFF003366339933CCFF
            FF6699CC00336680808080808080808080808080808080808080808080808080
            8080808080808080808080808080808080808080808080808080}
          Margin = 8
          OnClick = sbPLRemovePicturesClick
        end
        object lPictureCount: TLabel
          Left = 304
          Top = 148
          Width = 9
          Height = 15
          Caption = '...'
        end
        object sbPLDeleteAll: TSpeedButton
          Left = 10
          Top = 200
          Width = 73
          Height = 22
          Hint = 'remove all pictures from this section'
          Caption = 'remove all'
          Flat = True
          OnClick = sbPLDeleteAllClick
        end
        object iSetForIndex: TImage
          Left = 8
          Top = 232
          Width = 143
          Height = 114
          Hint = 'this image will appear on the index page'
          Proportional = True
        end
        object Label20: TLabel
          Left = 8
          Top = 348
          Width = 57
          Height = 13
          Caption = 'Index image'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object sbIndexImage: TSpeedButton
          Left = 80
          Top = 200
          Width = 73
          Height = 22
          Hint = 'select the highlighted image to be used on the Index page'
          Caption = 'index image'
          Flat = True
          OnClick = sbIndexImageClick
        end
        object spPLAddDir: TSpeedButton
          Left = 8
          Top = 152
          Width = 145
          Height = 22
          Hint = 'add pictures to this section'
          Caption = 'add entire folder'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4040
            40404040FF00FFFF00FF80808080808080808080808080808080808080808080
            808080808080808080808000FFFF00FFFF404040808080808080808080004000
            FFCC0000400033663300400033663333663333663333663300400000FFFF00FF
            FF404040404040404040808080FFCC33FFCC0000400000800000400000800000
            800000800000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF404040808080004000
            FFCC0000400033993333993333993333993333993300FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF808080808080FFFF99FFCC00FFCC0000400000400033CC3333
            CC3333CC3333CC3300400000FFFF00FFFFFFCC00FFFF99808080808080FFCC33
            004000004000FFCC00FFCC00336633003366003366336633FFFF9900FFFF00FF
            FFFFFF99004000808080808080CCFF99FFCC33FFCC33CCFF9933993300336666
            99CC6699CC003366339933CCFF99004000CCFF99CCFF99808080808080CCFF99
            339933CCFF99CCFF9900336666CCFF99CCFF6699CC6699CC003366CCFF99CCFF
            99004000CCFF99808080808080339933CCFFCC339933CCFF9900336666CCFF66
            CCFF99CCFF6699CC003366CCFF996699CCCCFFCC003366808080808080CCFFFF
            FFCC33339933003366CCFF9900336666CCFF66CCFF003366CCFF99CCFF990033
            666699CCCCFFFF808080808080CCFFFF339933FFCC33339933003366CCFF9900
            3366003366CCFF99CCFFFF003366339933CCFFFF003366808080808080CCFFFF
            FFCC33CCFFFFCCFFFFCCFFFF003366CCFFFFCCFFFFCCFFFF003366339933CCFF
            FF6699CC00336680808080808080808080808080808080808080808080808080
            8080808080808080808080808080808080808080808080808080}
          Margin = 8
          OnClick = spPLAddDirClick
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 372
          Width = 145
          Height = 56
          Caption = ' Info '
          TabOrder = 0
          object Label22: TLabel
            Left = 8
            Top = 18
            Width = 38
            Height = 15
            Caption = 'Images'
          end
          object Label23: TLabel
            Left = 8
            Top = 38
            Width = 20
            Height = 15
            Caption = 'Size'
          end
          object lInfoNum: TLabel
            Left = 64
            Top = 18
            Width = 18
            Height = 13
            Caption = '......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7560025
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lInfoSize: TLabel
            Left = 64
            Top = 38
            Width = 18
            Height = 13
            Caption = '......'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7560025
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object lbPictureList: TListBox
        Left = 160
        Top = 0
        Width = 1047
        Height = 737
        Style = lbOwnerDrawFixed
        Align = alClient
        Color = clWhite
        PopupMenu = pmPictureList
        TabOrder = 1
        OnClick = lbPictureListClick
        OnDrawItem = lbPictureListDrawItem
        OnKeyDown = lbPictureListKeyDown
      end
    end
    object tsSection: TTabSheet
      Caption = 'Section'
      ImageIndex = 2
      object Label5: TLabel
        Left = 8
        Top = 4
        Width = 418
        Height = 13
        Caption = 
          'NB: The settings on this page apply only to the currently select' +
          'ed section'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 40
        Width = 1207
        Height = 697
        ActivePage = TabSheet2
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Details'
          object sbGetIndexPicture: TSpeedButton
            Left = 544
            Top = 183
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C21E0000C21E00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4000004000
              00400000400000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF400000C00000FFFFFFFFFFFFC00000400000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF400000C00000FFFF
              FFFFFFFFC0000040000080808080808080808080808080808080808080808080
              8080808080808080400000C00000FFFFFFFFFFFFC00000400000808080FFCC33
              FFCC33004000008000004000008000008000008000008000400000C00000FF40
              40FF4040C00000400000808080FFCC33FFCC3300400033993333993333993333
              9933339933339933400000C00000FFFFFFFFFFFFC00000400000808080FFFF99
              FFFF99FFFF9900400000400033CC3333CC3333CC3333CC330040004000004000
              00400000400000808080808080FFFF99FFFF99FFFF99FFFF99FFFF9933663300
              33660000C0336633FFFF99FFFF99FFFF99FFFF99FFFF99808080808080CCFF99
              CCFF99CCFF99CCFF993399330033666699CC6699CC003366339933CCFF99CCFF
              99CCFF99CCFF99808080808080CCFF99CCFF99CCFF99CCFF9900336666CCFF99
              CCFF6699CC6699CC003366CCFF99CCFF99CCFF99CCFF99808080808080CCFFCC
              CCFFCCCCFFCCCCFFCC00336666CCFF66CCFF99CCFF6699CC003366CCFFCCCCFF
              CCCCFFCCCCFFCC808080808080CCFFFFCCFFFFCCFFFFCCFFFF99CCFF00336666
              CCFF66CCFF00336699CCFFCCFFFFCCFFFFCCFFFFCCFFFF808080808080CCFFFF
              CCFFFFCCFFFFCCFFFFCCFFFF66CCFF00336600336666CCFFCCFFFFCCFFFFCCFF
              FFCCFFFFCCFFFF80808080808080808080808080808080808080808080808080
              8080808080808080808080808080808080808080808080808080FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            OnClick = sbGetIndexPictureClick
          end
          object Label13: TLabel
            Left = 8
            Top = 8
            Width = 285
            Height = 15
            Caption = 'Caption (will be used to title each page in this section)'
          end
          object Label15: TLabel
            Left = 8
            Top = 56
            Width = 298
            Height = 15
            Caption = 'Description (used on index page to describe this section)'
          end
          object Label16: TLabel
            Left = 8
            Top = 168
            Width = 342
            Height = 15
            Caption = 'Image to use on the Album'#39's index page to represent this section'
          end
          object eSIndexImage: TEdit
            Left = 8
            Top = 184
            Width = 537
            Height = 23
            TabOrder = 0
          end
          object eSDescription: TMemo
            Left = 8
            Top = 72
            Width = 561
            Height = 89
            TabOrder = 1
          end
          object eSCaption: TEdit
            Left = 8
            Top = 24
            Width = 561
            Height = 23
            TabOrder = 2
          end
          object GroupBox4: TGroupBox
            Left = 8
            Top = 224
            Width = 561
            Height = 89
            Caption = ' Page Customisations '
            TabOrder = 3
            object sPageHeader: TShape
              Left = 528
              Top = 22
              Width = 25
              Height = 21
              Cursor = crHandPoint
              DragCursor = crDefault
              OnMouseDown = sPageHeaderMouseDown
            end
            object sPageFooter: TShape
              Left = 528
              Top = 54
              Width = 25
              Height = 21
              Cursor = crHandPoint
              DragCursor = crDefault
              OnMouseDown = sPageHeaderMouseDown
            end
            object cbSDPageHeader: TCheckBox
              Left = 8
              Top = 24
              Width = 89
              Height = 17
              Caption = 'Page Header'
              TabOrder = 0
            end
            object eSDPageHeaderText: TEdit
              Left = 104
              Top = 22
              Width = 417
              Height = 23
              TabOrder = 1
            end
            object cbSDPageFooter: TCheckBox
              Left = 8
              Top = 56
              Width = 89
              Height = 17
              Caption = 'Page Footer'
              TabOrder = 2
            end
            object eSDPageFooterText: TEdit
              Left = 104
              Top = 54
              Width = 417
              Height = 23
              TabOrder = 3
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Thumbnails'
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 296
            Top = 8
            Width = 185
            Height = 97
            TabOrder = 0
            object Label11: TLabel
              Left = 8
              Top = 16
              Width = 119
              Height = 15
              Caption = 'With current settings...'
            end
            object Label12: TLabel
              Left = 16
              Top = 40
              Width = 37
              Height = 15
              Caption = 'Pages: '
            end
            object lSPageCount: TLabel
              Left = 56
              Top = 40
              Width = 6
              Height = 15
              Caption = '0'
            end
            object Label24: TLabel
              Left = 16
              Top = 56
              Width = 95
              Height = 15
              Caption = 'Thumbnail Width:'
            end
            object lSThumbnailWidth: TLabel
              Left = 117
              Top = 56
              Width = 6
              Height = 15
              Caption = '0'
            end
          end
          object GroupBox3: TGroupBox
            Left = 8
            Top = 8
            Width = 281
            Height = 169
            TabOrder = 1
            object Label8: TLabel
              Left = 8
              Top = 16
              Width = 226
              Height = 15
              Caption = 'Maximum number of thumbnails per page'
            end
            object Label10: TLabel
              Left = 8
              Top = 80
              Width = 131
              Height = 15
              Caption = 'Thumbnail width (pixels)'
            end
            object Label9: TLabel
              Left = 8
              Top = 48
              Width = 186
              Height = 15
              Caption = 'Number of thumbnails across page'
            end
            object Bevel1: TBevel
              Left = 8
              Top = 114
              Width = 265
              Height = 4
              Shape = bsTopLine
            end
            object seMaxPerPage: TSpinEdit
              Left = 208
              Top = 14
              Width = 65
              Height = 24
              EditorEnabled = False
              MaxValue = 100
              MinValue = 1
              TabOrder = 0
              Value = 30
              OnChange = seMaxPerPageChange
            end
            object seMaxAcross: TSpinEdit
              Left = 208
              Top = 46
              Width = 65
              Height = 24
              MaxValue = 10
              MinValue = 1
              TabOrder = 1
              Value = 3
              OnChange = seMaxAcrossChange
            end
            object seMaxDimension: TSpinEdit
              Left = 208
              Top = 78
              Width = 65
              Height = 24
              MaxValue = 600
              MinValue = 50
              TabOrder = 2
              Value = 200
              OnChange = seMaxDimensionChange
            end
            object cbSThumbnailsOnly: TCheckBox
              Left = 19
              Top = 130
              Width = 201
              Height = 17
              Caption = 'don'#39't include links to larger images'
              TabOrder = 3
              OnClick = cbSThumbnailsOnlyClick
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Pictures'
          ImageIndex = 2
          object Label25: TLabel
            Left = 32
            Top = 36
            Width = 32
            Height = 15
            Caption = 'Width'
          end
          object Label26: TLabel
            Left = 32
            Top = 68
            Width = 36
            Height = 15
            Caption = 'Height'
          end
          object Label27: TLabel
            Left = 8
            Top = 116
            Width = 246
            Height = 13
            Caption = 'Images will not be resized when previewing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cbSPResize: TCheckBox
            Left = 8
            Top = 8
            Width = 145
            Height = 17
            Caption = 'Resize uploaded images'
            TabOrder = 0
          end
          object eSPWidth: TEdit
            Left = 72
            Top = 32
            Width = 73
            Height = 23
            TabOrder = 1
          end
          object eSPHeight: TEdit
            Left = 72
            Top = 64
            Width = 73
            Height = 23
            TabOrder = 2
          end
        end
      end
    end
    object tsTheme: TTabSheet
      Caption = 'Theme'
      ImageIndex = 1
      object Label6: TLabel
        Left = 8
        Top = 8
        Width = 92
        Height = 15
        Caption = 'Available Themes'
      end
      object SpeedButton3: TSpeedButton
        Left = 392
        Top = 24
        Width = 65
        Height = 22
        Hint = 'edit this theme with the CyberFresco theme editor'
        Caption = 'edit theme'
        Flat = True
        OnClick = SpeedButton3Click
      end
      object cbThemeList: TComboBox
        Left = 8
        Top = 24
        Width = 377
        Height = 23
        Style = csDropDownList
        TabOrder = 0
        OnChange = cbThemeListChange
      end
      object Panel2: TPanel
        Left = 0
        Top = 77
        Width = 1207
        Height = 660
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Panel2'
        TabOrder = 1
        object wbTheme: TWebBrowser
          Left = 1
          Top = 1
          Width = 1205
          Height = 658
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 649
          ControlData = {
            4C0000008A7C0000024400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Log'
      ImageIndex = 5
      object lbLog: TListBox
        Left = 73
        Top = 0
        Width = 1134
        Height = 737
        Align = alClient
        ItemHeight = 15
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 73
        Height = 737
        Align = alLeft
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Image1: TImage
          Left = 12
          Top = 8
          Width = 45
          Height = 46
          AutoSize = True
          Picture.Data = {
            07544269746D6170A6180000424DA61800000000000036000000280000002D00
            00002E000000010018000000000070180000130B0000130B0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF7F5F5F2F0F0EBE9E9E3E1E1DFDA
            DBDDD8D9DDD8D9DED9DAD8D8D8DCDCDCE2E2E2E8E8E8EEEEEEF4F4F4FBFBFBFF
            FFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9EEEEEEE4E4E4D5D3D3CAC8C8
            BCB7B8AEA9AAA5A0A1A49E9FA49E9FA49E9FA0A0A0A8A8A8B2B2B2BBBBBBC3C3
            C3CFCFCFE0E0E0ECECECF9F9F9FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFF8F8F8FFFFFFFFFFFFFEFC
            FCFFFEFEFDFDFDFFFFFFFFFEFFFBFAFCFFFEFFF9F9F9EEECECDFDADBC8C1C4A4
            9DA09D8D8E997F7F997A7B8F77778D79788F7373977274986F74966E70916B6B
            8F706F917876998A88A79FA0B1B0B4BEC1C6D0D8D7E6EBEAF7F7F7FFFAFBFFFD
            FEFFFDFFFDFCFEFAFEFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF00FBFBFBFFFFFF
            FEFEFEFCFAFAFFFFFFFFFFFFFCFCFCFDFFFFFBFFFFFBFFFFEDEFEFDFDDDCBFB7
            B7A59896947F7E9B8181987D809D8285AE9494AF9B9AAD9E9CB7A8A6B8A8A9A2
            9495A593929B87868E7A79887372816C6B7D69688E7A79A49293B8ADAFC4BFC0
            D6D8D8EDEFEFFDFDFDFFFEFEFFFCFEFDFFFFFFFFFFFEFEFEFFFFFFFDFDFDFEFE
            FE00FFFDFDFFFFFFFCFCFCFFFFFFFEFEFEFBFBFBFDFFFFF7F9F9F5F7F7EAE8E8
            D0C8C8A194929D8988988381A38C8AC5ACA8D2C2C3D3C5C6D3C5C6D5C5C6D0C0
            C1C9BDBDC1B9B9BFB7B7BAB2B2BFB5B5B8A8A9B49FA1AB919194767588696687
            69648D7275A39394B8B3B4C6CBCADEE3E2F5F7F7FFFEFEFFFDFDFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFE00FFFFFFFEFCFCFFFFFFFEFEFEFAFCFCFFFFFFFBFBFBFB
            FBFBF1E5E3B9AAA8A08B8DA28A8CB1999BD6C4C5DED2D0D9D2CFD4CDCADAD2D2
            D2C6C6CAB8B9C0AEAFBBADAEB7A9AAB9A7A6BAA8A7C6B2B1C6B0B2C1A8ACBFA4
            A7BEA4A4AF9896957F7A84676A7E6366907E7FA9A4A3BBBDBDD7DDDCF6F8F8FF
            FCFDFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFCFCFCFCFEFEFDFD
            FDFFFFFFFEF9FADED9DAB09A95A38E8CA38E90D0BDC0E5D6DAE3D8DBDFD6D9CD
            C7C8B9ADA9A48F8D967A7A9B7C7F9275788E727293747395717189706C886D69
            937777A4898CB59CA0BDA6AAB5A2A5B1A1A2A391928F7275805F638870729B93
            93B3B8B6D8DBD9F9F4F5FEFEFEFDFDFDFDFDFDFFFFFFFEFEFE00FFFFFFFEFEFE
            FAFAFAFFFFFFFFFEFEFEF8F9E6DBDDA79A9CA6928DB8A9A6E1D9D9E4DFE0E0DB
            DDCCC1C3B19C9E9F8585A3978DC5B2ABE1D1CBEDE9E4FDFAF5FFFCF5FFFEF5F5
            F9EDFFEEE5E5D4CBC7B4AC9A847E7E6863947D7BAE9698B79EA2ADA09EB49A9A
            A27D7F866367846F71999493BCBAB9DDD9D8F5F5F5FEFEFEFFFFFFFFFFFFFFFF
            FF00FFFFFFFCFCFCFDFFFFF9F9F9FBF6F7E5DADCAD9FA1A49194BFB6B3E9DFDF
            ECE4E4E2DADAB9ADAB9A8A83B7A195EFD5C7F4F2E0FFF3E7FFFAEFFFFBF2FCD9
            D5CA7E7FCC7C7BF5BEB5FFF7EAFFF7E9FFF3E1FFF2DFEFDBC9AE978884686195
            7873AC9A99B29D9CB59B9BA081827F60617E686AA19595BDB8B7DCDCDCF5F5F5
            FFFFFFFFFFFFFFFFFF00FFFFFFFDFFFFFAFCFCFFFFFFE9E4E5B0A3A5A39093CA
            B3B7E6E6E6EDE7E8E2D2D3AD9595B19790E8D4C3FFF4D9FAF5D6FFF7E5FFF7E6
            FAFDEEF4FDF0FFDDD7DC7F80D9807CEDBDB1FFF9EEFFF8E7FEF7DEFFF5D7FFF1
            D4FFF1D6E3CEB9A0897A8569699E8A89AA9D9BAF9A99A68485886367806A6C9B
            9695BEBEBEE6E6E6FBFBFBFDFDFDFEFEFE00FAFEF3FDFEFFFDFAFFF7F3F2B7AE
            A5AB9B95C9BAB8F5E8E6EAEBE2D3C7C7AF9497C6ACA0F8E7C6FDF6CBFEF4D2FF
            F3DDFCF7E2FEF8E5FFF9EBFFFBF1FBE9E2DCC3BFDABDB8F9DBD6FFFAE9FFF8E5
            FFF5DFFEF5DAFDF4D3FFF3CFFFECC6FDE3BBC1A38687665DA4898DAC999CA99C
            9A9482838063668F6E6BA7A1A2C6CBCAE8EDECFFFCFDFFFDFD00FCFFF8FDFCFF
            FCF8FEC9C1C1A79E95BDB0AEFAEDEFF3EBEBD6CAC8AA9891C5AD9BF7DFC3FFED
            C8FBEFCBFDF2D4FDF1D9F7F7DFFAF9E5F9F9E9FEFAEFFFFDF4FFFCF3FFF8EFFF
            FAF0FFFAE7FFF8E4FFF5DFFDF4D9FDF4D3FFF2CEFFEBC5FCE2BAF2D1B0CEAA92
            89665CA28685AF9A9CAE9B98947B778361618C7E80B0AEAED6DBDAF7F5F5FFFF
            FF00F8FCF6FFFCFEF2E8EEAFA3A1B1A6A2F1E6E8F2EBEEE2DDDEBB9D9CC8AD99
            F1D7AFFEE6B8FDE8C2FFF0D3FBEED4FFF4D8F9F5DDFBF8E3FCFAE8FAF9EBF7F7
            EBFAFAEEFCFCEEF8F8EAFEF8E5FFF6E2FFF5DDFEF3D7FCF1D1FDEFCBFFE9C3FC
            DFB8FDD9B1F6CEA4CA9E7F91685FA18585B09D98B09A948B6B6C7F64679B9092
            C3C5C5E6E8E8FFFFFF00FBFEFCFFF9FCC4B6B8AA9B98DFD3D1F5EEF3EFE8EBB0
            A9A6D2A895F1CBA8FCDBA9FADDAAFFE6BEFFECD0FEF0D4FCF3D2FFF5DAFDF2DC
            FFF5E3FFF9E8FEF7E8FDF6E7FEF7E8FEF7E6FDF6E2FFF4DEFFF4D9FEF3D5FDF1
            CFFEECC7FEE4BFFDDCB5F8D4A4FBCE9BFAC59AC3917B8D6963AA9594AE9A99A7
            8D8D866367897778AFADACD4D6D6F7F7F700FFFFFFF1E8EBB2A2A3BBAFABFCF4
            F4F5EEF3DACDCBB29F92F1C094FACC9DF7CF9FFFDCB0FFE4C0FCE3C1FDEFCBFC
            F3CDFEF2D6FFF4DAFFF4DEFFF4E0FFF5E3FFF7E5FFF4E1FFF2DCFDF6DDFFF4D9
            FFF2D6FFF2D2FEEECAFEE9C3FDE1B8FCD8B0F8D6A0FCCD9AF6BB8DF0B994A379
            66937475AE989DAC9A9B9B797A7D6565999191C2C5C3EBEBEB00FEFCFCCDC2C4
            B3A3A4E2D9D5F6F4F4F4EBEEB79C92D8B294F6C084FBC995FDD0A4FCD3ACFEDB
            B3FEE5BBFFEDC4FFF2CCF9F0CEFDF5D7FDF5D8FCF2DAFEF4DCFFF4DCFFF3D9FF
            F5D9FFF4D8FFF1D4FFF0D1FFEFCCFEEBC5FDE5BBFFDDB2FFD5AAF6D09AF7C696
            FFC191EFB280D59F7C8D645BA99094A89B9DAD91918064648A7877B8B4B3DEE0
            E000FFF9FABAADAFB5A8A6FEF9F6F7F9FAD1C5C5CEA693ECAF83FEC189F6BF8C
            F8CA9BF7D0A4F7D4A8FFE3B6FFE8C0FBE9C4FCF1CBF9F0CBF9EECEFBF0D4FFF4
            D8FDF2D6FAF0D2FCF1D1FFF2D2FFEFCEFFECC9FFEAC4FBE5BBFADFB3FCD7ABFD
            D0A4FBCB9BF4BF8DFBBB85FBB67DEDAA79BB856793746BAFA0A4AD9C998F7373
            846868A69E9ECDD2D100EAE2E3B4A6A7D1C5C3FAF8F7F3F7F8B6A9A7D5A68BF8
            AE78F6B484F9BF8EF4C794F3CE9AFAD7A5F9D8ABF6DBB6FCE6C3FDE8C2FFECC7
            FFF0CFFFF1D1FDEFD2FEF1D1FFF3D1FDF1CDFEF0CCFEEBC8FEE8C4FCE6BDF9E0
            B4F9DAADFAD3A6FCCE9FFCC59AF6BE87F8B97DFCB075F3A66DD395678E6B57A6
            949BACA39FA58988826263978B8BBCC2C100D4CBC7B3A8A4EDE0E8FAFCFCE5DB
            DBC4AD9DEFA46CEFAA71F8AF7BF4BC85EDC18BF6C793FCCE9EF6D2A4F5DBADF7
            DEB4FFDFBBFDE3BFF8E6C1FBEEC2FAEDBFFDEEC7FFECC9FFE7C5FFE5C4FDE1BF
            FAE2BEF4DEB4F4D8A9FBD3A2FDCC9AFCC493FBBE8CF2BC80F2B376F6AD71F1A4
            65EB9A61AD705C927E8AB5A1A0AC9A99836767907578BCB8B700C5BCB8B8ACAA
            F7EDF3F9F9F9D8C6C7CCA38DF39E66F6A76EFBAE76F4B47AF5BC84FAC18DF9C6
            94F7CD9EF8D1A5FFD3ADF0D7ABFADDB1FFE2B5FFDEB3FFE4BFF0DAB6F5E1B8F9
            E2B4FFDEB7FDDDB4F8D6ABF9D4A8FCD2A3FCCC9CF8C698EEBC8EFEBA85F2B27B
            F6B074F5A56AF29D5FF2995CC27F588C7272BAA6A5B09E9D8E7272886D70B8B4
            B300C3B4B2C5B9B9FFFEFFFAFDFBCDB9B8D39C7DEF9C64EEA36BF1A86EEDAB70
            FAB77EFFBD86FCC08CF5C693F6C899FFCDA4F8D7AAFBD5A5FBD6AAF1D5B3A895
            809B8D77CEBA97DFC597F8D7AAFCD8AAFED4A5FDCB9DFDC798FEC493F8BF8CF9
            BF8BF9B37EF0AB79F1AA6AF6A562F29A5AF49452D0864C856762B9A5A4B7A5A4
            9C8080856A6DABA7A600C2ADACCDBEC2F9F9F9EEF7F4BFADACDC9B6FF6AC74F6
            B37CF6AC76EDAC75EDAD76F6B07AFCBA85F7C18CF1C28EF7C694F2C697F7CDA0
            E2C3A231281B00000008050126190999846E9C876B9A84689980669E8067A27D
            61BD8D69E3A978F8B57EF6AE78F1A777E8A15DF39E58F09356F2894ADD88448B
            6969B29E9DBBA9A8A28686866B6E9F9B9A00C3AFAEDDCDD4FFFFFEF9FEFCC3AE
            ADE78F59F1A06DE29061EE8E66F6AE7FEAB380E9B079F5B47DF6B67FF7BE86F7
            C289FAC691F3C596876C521A1516A7ABB6AFB0B4040000030101050100070505
            000304000304090300674C37DBA57CF6AD73F4AA68F4A26BEB9A57E47A44DF6F
            41E26533E9833B8F686AAE9C9BBAABA9A88C8C866B6E9F9B9A00BDB1AFE3D2DB
            FFFEFAFBFCFAC9ADADF28345EE8C62D06442D66043FBAA84F9C89AF0C390F5BB
            87F2B27CF5B57FF5B57EF8B97FF0BA8582664432312DF4FCFFFFFFFE05000002
            010B0C04040500000808020306000D0500785A3DE1A773F7A662F4A358F59B5B
            FB9A5BD95732CC4725D1401AF57F37916A68AF9D9CBDAEACB49A9A866B6EA49F
            9E00BAB3B0E4D0DCFFFFFAFDFDFDC2B0B1EC7F3BE28D67CE6348CF6C4CF1AC85
            F6CC9FF7CF9FFFD1A1FFCB9CF9C596F3BF90EFB786EEB883A07D55080400525B
            5E4645410A0100110A118A7A6AA38D74B19878BA9F7DBA9A77D3A87DEAAE73F2
            A762ED9D5CEE9251F28F4BDB552DCE4719D34215EE762A8A6C6BB19F9EBFB0AE
            B79D9D886D70A5A09F00BBB5B0E5CDD9FFFFFBF8FEFDB6B4B4E58D41F0B58DFC
            A88EEDAC85F6C69CF4D0A2F7CEA1FFD6A9FED9ADF4D7ABF5DAAEF5DBB7FFDAA9
            FFDCB2806C61221E24100C0B040400000101342515C0A88CE5BE97F9CCA1FFD4
            ABF4C7A1FFD0A4FCC795FFB484F19E60E38B3FF1743AE86F29EC652DE1712580
            6F73B4A2A1C0B1AFAD9393886D70A39E9D00C6B7AECCC1C9FFF8F8F7FEFFC1BA
            B7E9824BFCB988F2CEA0FFCF9FFCCE9FFFD5AAF8D6ABF5D9B0F8DFB5FADEB5FE
            E0B7FFE2B5FFE4BBFAE0B8FDE1B8FCE3B7F7E3C0615444090403000001312922
            BEAB96DDBF9CFBD6AAFFD7A7F7D1A1F3CFA1FEC7A2F9CA96F2B577EA924CF075
            35DC7421DD6E2A906C72BDB1AFC2B5B3B392968C6D70A8A4A300CDC2BAC5B9BF
            FFFEFFF6FBF9D0C4C4CF9369F6B878FBCEA3FDD3A4FED5A8FFDAAEFDDDB2FBDF
            B6F9DFB7FBE2B8FEE5BBFFE8BEFAE2BEFFE9C6FFEAC1FFE8BBFCE7C1F5E6CC5D
            54470B070205010030271DC0AE97DDBD99FCD5A8FFD7A7F6D1A5F7D0A3FFC799
            F7C98FFBC28BFEA164E7732CC36D31907174C7BBB9C9BAB8A384878F7275BEBA
            B900D6CBC7BEB3B5FDF5F6FBFFF9DDD5D6C2AB95EB9F57FED1A5F8D5A9FBDAAD
            F9D9AEFBDFB6FDE3BBFEE5BDFDE9C0FEEBC0FDEBC6FAE9C8FFEECFF9E6C3FFF0
            C5FFEFC4FDEDC8F9E9CC61594807050001040229231CC6B59BDFC099F9D4A8F9
            D4A8F5D4A3EECE9DFFCCA1FDC59CF5C28AF5A35BB7744DA38384C7BBB9D0BEBD
            997C7F937B7DCAC6C500E9DCDEC0B9B6EAE4DFFDFFFEE7EDECC7B5AEE1854AFD
            D5A4F6D9ADF9DEB2FAE2B8FDE4BCFDE3BEFFEAC4FFEEC7FBEFC5FFEFCBFDEECE
            FCEED1FDF0D0FFF4CEFFF2C8FDEEC7FEEEC9F7EBCF5F5B490206010004032A25
            1CC4B29BE1C3A0FAD7ACFED5A8EED6A2ECCBA4F2C89DF6C593E38D4BA07866B8
            A3A2CCBFBDC7B5B48E7678998788D4D0CF00F4F0F5C5B9B7DAD4C9FDF9FFF7FF
            FED4BFBDDD906FFFC897F9DCB0F6DEB4F9E7BEFDEAC4FBE5C1FFEDC8FCEFC9FA
            F3CCFFF1CCFFF0CFFEF0D3FBF0D2FDF4D3F7EECCFFF6D1FFF4D0FFF0CFF9EED2
            635F4D000200040705272318C8B398F1D1A8F9DAADFED5A8F3D3A2F1CA9DFCCA
            8ED16F41937972C6BEBFD5C6C4B19D9C897476AEA2A2E4E0DF00F7FEFFCEC1BF
            C9BFB5FDEFFAFFFEFFE7DCD8CCAE9DEB9D78FFE1B5FDE4B8F6E6BCF9ECC6FCEC
            C8FFF1D0FCF0CEFCF5D4FEF5D0FFF6D6FCEED1FFF4D9FAF3D8FBF7DAFCF4D7F9
            EFD1FFF1D1FEEFCEF5E9CD6863540305000A0800A99A80FBDFB6F9DEB2F9D5AD
            FFD89EF5CBA0F0A96AB57B65A7938ED3C8CBD6C4C39883828A7A7BC5C0BFF3EF
            EE00FAFFFFE6DEDFC5B3B2E9DCDEFBF8FFF8F7F3CAC5BCD1947AFBD1A4FFEEC2
            FAECC2F9F0CAFFF1D0FFF2D5FFF2D6FCF4D7FAF6D9F5EDD0FFF6DCFFF5DDFCF4
            DDFAF4DDF7F0D7FFF7DCF9EDD1FFF3D6FDEFD2FCF1D66E67539E937DFBE9CAF9
            E0B8FFE0B8F8D9ACFADAA5F3CE9CD3764F977C78C4BABAD6CACAC4B2B1907878
            9C9090DBD9D8FEFAF900FFFDFEF8F7F9CEB8BDC7C0B7F2F5FFFFFEFEE6DFD6D5
            BDABD2A377FFE9BCFEF0C6FAF3CCFCEFCFFFEED3FFF4DAFFF4D9F3F5DFFDF9E1
            FFF5DDFFF6DFFEF3DDFEF6DFFFF7DFFFF5DBFDF3DBFDF2D7FDF1D5FCEED1FFEE
            CDFFEFCAFAE7C1FAE6BDF9E0B8FCE2ACF6D4B0EB9D68A37F6DA9A1A1E3CAD4D7
            D0C7A59190957D7DBFB3B3F0F1EFFFFDFC00FEFEFEFDFBFBE3DEDFC3BBBCDDD7
            D8FFFEFFFCFCFCCBCDCDCCAD98ECB098FFECC3F9FCCBF1F5D2FBEEDEFFF4E3FC
            F7D8FBF5E2FCF5E4FFF5E4FFF7DFF2F9DEF5F8DFFFF8E4FCF4DDFCF6DFFAF3DA
            FFF5D9FEF3D5FCF0CEFFF4CCF6EFC4FEEBC0F6E5BAFEE0B1F6BE95B57963A98E
            8AD3CCD3DBD0D3CAB7B2957E829D9092DFDDDDFBFBFBFFFEFE00FBFDFDFFFFFF
            FAF5F6CDC5C6C2BABBF3EDEEFFFFFFFAFAFAC9BFBFCBA68CF9BD93FAF1C6F5F2
            D6FFF4DFFBF3DCF8F8E0FCF8E6FBFCE2FEF6DFFFF5E7FFFDEFFFF8E4FFF6E4F2
            F6EAFFF8DAFFF5DDF1F5DCF7F5D7FDF8D9F6EED0FFEECEEFEEC2FFE8BAF6C4A0
            B5836DAD9387D3C6C4E1D6D8DBCDCE9C8583948386CEC3C5F8F6F6FBFDFDFEFE
            FE00FCFEFEFDFDFDFFFEFFEFE9EAC1B9BAC6BEBFFFFBFCFFFDFEE8F0F0D7C0B8
            D4AC93F2C3A3FFF6D5FFEFDAFBF5E2F8FBE5F9F9E1FFF9ECFFFAEFF9FFECECE2
            D0DE9B98EB9A95F6CCB9F8F4E2FAFDE3FBF2D7FFF1DCFDF0D6FFF2CFFFEEC8FF
            EBCBFFCEA6B58671A68B87C5BCBFDFDAD9E1DBD6A69A96A07F83B1A6A8ECE7E8
            FBFBFBFAFCFCFEFEFE00FDFFFFFFFFFFFAF8F8FFFEFFE1D9DAC4BCBDCEC6C7FF
            F9FAFDFFF9E9EDEECEBCBBCEAD9DDFB89CFFFADEFFF3E3F4F6E3FFFAEFFFF9EC
            FDF6EDFFFBF8F8D9D8D77E81D77A77E8BBB0FFF9E2FFF1E5FFF5E9F5F8DFFEF0
            D4FFF0D3FDF4CEE8B789BD8873AF998EC6BDC0E4D9E1E5E0DFB1A7A0988382AB
            9499E6E4E4FAFAFAFBFDFDFBFFFFFBFDFD00FDFFFFFBFDFDFEFCFCFFFEFFFFFC
            FDD4CECFC0B8B9DDD5D6FFFCF9F8FFFEF2F4F5D8C9CDC1B7ADD3AA94EDD6C0FF
            F7EBFFF7EAFFFDEFFFFDF2FFFBF4FDD8D4D9827EDA7F76ECBAA8FCF7F4F7FAE4
            F4F7D7FEF7D6FCFAD7F9E1BDCE9881A79283B29A9ADFD1D2EAE2E3EBE3E3B1A5
            A3A78B8BAC9195DBD7DCF7F9F9FAFCFCFDFFFFFDFFFFF8FAFA00F8FAFAFFFFFF
            FFFFFFFFFDFDFFFFFFFEF9FAC9C4C5BEB9BAD2C6C6F1F6F4FAFAFAFAFFFFE4D9
            DCCABEBAC6ACA0CAB4A2EFCAB6F5F2E4FBFFF8FAFAEEFFFFF8FEF8F9FFF7F9FB
            FCF3FFF7E6FFF4E2FFFDE2F1CAA4D7A686B09385A59295DCBDC6E4E1EAEEE3E6
            F0E7E3BCB0AAA98D8DA99094E0D9DEFAF9FDF7FCFBFDFFFFFDFDFDFEFEFEFAFC
            FC00FFFFFFFEFEFEFEFEFEFBFDFDFDFDFDFEFEFEFDFDFDCECCCCC4BBB8D0BFC2
            F1F6F5FFFAF7FFFEFFF3F6FEE2DADAD2C2B2C2B0A9C7A092DEAA99E1BDABECCB
            B1F3AF8CFAAF89EDC69FE0BFABD3A593C28882B79B9BB2A1A5CFBAB9E9E6E1EE
            EBE7ECE8EDE5DBDBB1A5A1A48F8DAD9799DBD8DAF7FCFDFFFEFFFBFFFFFFFFFF
            FFFBFCFFFDFDFDFFFF00FFFFFFFDFDFDFDFFFFFBFDFDFDFFFFFCFEFEFCFEFEFE
            FEFEDBD5D6CBB6B4CEB5B3DDDDDDFCF9FBFEFCFBF8FFFEF9FAFEF2ECE7DBD1D1
            D7C3C2BFACA7B3AFAAB6A9ABC0A6ACBAA3A7B8A4A3C0B6B6BFC2C0DDDAD6F3F2
            EEECF1EFF3EFEEEDEEECCEC8C1A79895AB8F8FB3A0A3DDE2E3F6FEFEFEFCFBFF
            FFFCFAFFFEFDFBFBFFFEFFFFFBFCFDFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF7FCFAEFEDECCAC2C2C1B5B5C9BBBCE6DADAFFF9F9FF
            FEFDFFFDFDFFFFFFFEFCFCFCFAFAFEFCFCFEFCFCFCFAFAFCFAFAF5F8F6F9FAF8
            FAF8F7F6F2F1F9F1F1FDF1F1DDCFD0AC9E9FA79497A6989AC8C0C1F5F3F3FBFD
            FDF8FAFAFDFFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFEFBFCFAFDF8F7DFD7D7C0B6
            B6BDB3B3BDB5B5D5D0CFE4E2E2F7F5F5FFFFFFFFFFFFFCFAFAFCFAFAFCFAFAFB
            F9F9FDFBFAF8F6F5F3EFEEE6DEDECBBFBFAD9FA0A89697AE9C9DC2B4B6EDE2E4
            FFFBFCFDFDFDFDFFFFFDFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFCFA
            FFFFFEFFFFFEF9F5F4E4E0DFC6C1C0B8B3B2BDAFB1BEB0B2C5B7B9CFC1C3D9CB
            CDDFD1D3DED0D2D9CBCDCCBABBC2B0B1B3A3A4AC9E9FA99F9FADA5A5C8C3C2ED
            E9E8FCF4F5FFFEFFFFFFFFF8FAFAFBFDFDFBFDFDFDFDFDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFDFBFBFFFFFFF5F7F7FAFFFEFDFFFFFAFAFAFFFEFFFAF4F5E8D7DAD5C4C7
            C5B4B7BFAEB1BBAAADB9A8ABB7A6A9B5A4A7B9A2A6C0ABAEC4B3B6D2C5C7E7E1
            E2F8F6F6FAFCFCFBFFFFFFFFFFFAFAFAF9FBFBFDFFFFFDFFFFFDFFFFFFFFFFFD
            FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1511
    Height = 73
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 70
        Width = 1505
      end>
    object ToolBar1: TToolBar
      Left = 11
      Top = 0
      Width = 1496
      Height = 70
      ButtonHeight = 68
      ButtonWidth = 90
      Caption = 'ToolBar1'
      Color = clWhite
      DisabledImages = ImageList2
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      Images = il2
      ParentColor = False
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 0
      Transparent = True
      object tbSave: TToolButton
        Left = 0
        Top = 0
        Hint = 'save the current album'
        Caption = 'Save Album'
        ImageIndex = 3
        OnClick = tbSaveClick
      end
      object tbAdd: TToolButton
        Left = 90
        Top = 0
        Hint = 'add a new section to this album'
        Caption = 'Add Section'
        ImageIndex = 4
        OnClick = tbAddClick
      end
      object ToolButton1: TToolButton
        Left = 180
        Top = 0
        Width = 4
        Caption = 'ToolButton1'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbDelete: TToolButton
        Left = 184
        Top = 0
        Hint = 'delete the current section'
        Caption = 'Delete Section'
        Enabled = False
        ImageIndex = 5
        OnClick = tbDeleteClick
      end
      object ToolButton2: TToolButton
        Left = 274
        Top = 0
        Width = 4
        Caption = 'ToolButton2'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object tbUploadSection: TToolButton
        Left = 278
        Top = 0
        Caption = 'Upload Section'
        ImageIndex = 0
        OnClick = tbUploadSectionClick
      end
      object tbUploadAlbum: TToolButton
        Left = 368
        Top = 0
        Caption = 'Upload Album'
        ImageIndex = 1
        OnClick = tbUploadAlbumClick
      end
      object ToolButton5: TToolButton
        Left = 458
        Top = 0
        Width = 4
        Caption = 'ToolButton5'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbPreviewIndex: TToolButton
        Left = 462
        Top = 0
        Hint = 'preview the index page for this album'
        Caption = 'Preview Index'
        ImageIndex = 6
        OnClick = tbPreviewIndexClick
      end
      object tbPreviewSection: TToolButton
        Left = 552
        Top = 0
        Hint = 'preview the current section'
        Caption = 'Preview Section'
        ImageIndex = 2
        OnClick = tbPreviewSectionClick
      end
      object tbPreviewAlbum: TToolButton
        Left = 642
        Top = 0
        Hint = 'preview the whole of the current album'
        Caption = 'Preview Album'
        ImageIndex = 7
        OnClick = tbPreviewAlbumClick
      end
      object ToolButton4: TToolButton
        Left = 732
        Top = 0
        Width = 4
        Caption = 'ToolButton4'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object tbInfo: TToolButton
        Left = 736
        Top = 0
        Hint = 'show statistics and information on this album'
        Caption = 'Information'
        ImageIndex = 8
        OnClick = tbInfoClick
      end
    end
  end
  object MainMenu: TMainMenu
    Images = ilMenu
    Left = 1024
    Top = 136
    object File1: TMenuItem
      Caption = 'File'
      object miNewAlbum: TMenuItem
        Caption = 'New Album'
        OnClick = miNewAlbumClick
      end
      object miNewAlbumWizard: TMenuItem
        Caption = 'New Album Wizard...'
        OnClick = miNewAlbumWizardClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object miNewAlbumFromFolders: TMenuItem
        Caption = 'New Album from Folders...'
        OnClick = miNewAlbumFromFoldersClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object miOpen: TMenuItem
        Caption = 'Open...'
        OnClick = miOpenClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miClose: TMenuItem
        Caption = 'Close'
        Enabled = False
        OnClick = miCloseClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miSaveAs: TMenuItem
        Caption = 'Save As...'
        Enabled = False
        ShortCut = 32851
        OnClick = miSaveAsClick
      end
      object miSave: TMenuItem
        Caption = 'Save'
        Enabled = False
        Hint = 'save the current album'
        ShortCut = 16467
        OnClick = tbSaveClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miExit: TMenuItem
        Caption = 'Exit'
        OnClick = miExitClick
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object miSettings: TMenuItem
        Caption = 'Settings...'
        OnClick = miSettingsClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object miRelocateFolder: TMenuItem
        Caption = 'Relocate folder,,,'
        OnClick = miRelocateFolderClick
      end
    end
    object View1: TMenuItem
      Caption = 'View'
      object miCheckList: TMenuItem
        Caption = 'Checklist...'
        Enabled = False
        ShortCut = 16460
        OnClick = miCheckListClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object miPictureBrowser: TMenuItem
        Caption = 'Picture Browser...'
        Enabled = False
        Hint = 'open the image browser for this section'
        ShortCut = 16464
        OnClick = miPictureBrowserClick
      end
    end
    object Generate1: TMenuItem
      Caption = 'Generate'
      object miGUpload: TMenuItem
        Caption = 'Upload'
        Enabled = False
        object miUploadAlbumIndex: TMenuItem
          Caption = 'Album Index'
          OnClick = miUploadAlbumIndexClick
        end
        object miUploadSectionIndexPages: TMenuItem
          Caption = 'Section Index pages'
          OnClick = miUploadSectionIndexPagesClick
        end
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miGBuildLocal: TMenuItem
        Caption = 'Build local album image'
        Enabled = False
        object miBuildLocalAutomatic: TMenuItem
          Caption = 'Automatic'
          Hint = 
            'this option will create the entire album in a format you can edi' +
            't'
          OnClick = miBuildLocalAutomaticClick
        end
        object miBuildLocalWizard: TMenuItem
          Caption = 'Wizard'
          Hint = 'same as above, only with user customisations'
          ImageIndex = 1
          OnClick = miBuildLocalWizardClick
        end
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object miRename: TMenuItem
        Caption = 'Rename...'
        Enabled = False
        ShortCut = 16466
        OnClick = miRenameClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miThemeEditor: TMenuItem
        Caption = 'Theme Editor...'
        ShortCut = 16453
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object miHelp: TMenuItem
        Caption = 'Help...'
        ShortCut = 112
        OnClick = miHelpClick
      end
      object miContextHelp: TMenuItem
        Caption = 'Context Help...'
        ShortCut = 113
        OnClick = miContextHelpClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miWebsite: TMenuItem
        Caption = 'CyberFresco Website'
        OnClick = miWebsiteClick
      end
      object miCheckForNewVersion: TMenuItem
        Caption = 'Check for new version'
        OnClick = miCheckForNewVersionClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object miAbout: TMenuItem
        Caption = 'About...'
        ShortCut = 121
        OnClick = miAboutClick
      end
    end
  end
  object odMain: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 792
  end
  object sdMain: TSaveDialog
    DefaultExt = 'cfa'
    Filter = 'CyberFresco Albums (*.cfa)|*.cfa'
    Left = 824
  end
  object ImageList1: TImageList
    Left = 632
    Top = 24
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004000
      0000400000004000000040000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040000000C000
      0000FFFFFF00FFFFFF00C0000000400000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040000000C000
      0000FFFFFF00FFFFFF00C0000000400000000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      800080808000808080008080800080808000808080008080800040000000C000
      0000FFFFFF00FFFFFF00C0000000400000000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFCC3300FFCC33000040
      000000800000004000000080000000800000008000000080000040000000C000
      0000FF404000FF404000C0000000400000000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFCC3300FFCC33000040
      000033993300339933003399330033993300339933003399330040000000C000
      0000FFFFFF00FFFFFF00C0000000400000000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFF9900FFFF9900FFFF
      9900004000000040000033CC330033CC330033CC330033CC3300004000004000
      0000400000004000000040000000808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFF9900FFFF9900FFFF
      9900FFFF9900FFFF990033663300003366000000C00033663300FFFF9900FFFF
      9900FFFF9900FFFF9900FFFF9900808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000CCFF9900CCFF9900CCFF
      9900CCFF990033993300003366006699CC006699CC000033660033993300CCFF
      9900CCFF9900CCFF9900CCFF9900808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000CCFF9900CCFF9900CCFF
      9900CCFF99000033660066CCFF0099CCFF006699CC006699CC0000336600CCFF
      9900CCFF9900CCFF9900CCFF9900808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000CCFFCC00CCFFCC00CCFF
      CC00CCFFCC000033660066CCFF0066CCFF0099CCFF006699CC0000336600CCFF
      CC00CCFFCC00CCFFCC00CCFFCC00808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF0099CCFF000033660066CCFF0066CCFF000033660099CCFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF0066CCFF00003366000033660066CCFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500959595000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000009595
      9500959595009595950095959500959595009595950095959500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009595
      9500959595009595950095959500959595009595950000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094C6DE0029A5D60029ADDE0021B5EF0029ADDE0029A5D6008CBD
      CE00E7EFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      400000004000000040000000400000000000000000000000000000000000DEF7
      F70029A5D60021B5EF0029BDEF0029BDEF0029BDEF0021B5EF0021B5EF0029A5
      D600298CBD00C6DEE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000040000000
      8000FFFFFF00FFFFFF0000008000000040000000000000000000DEF7F70029AD
      DE0031C6F70031C6F70029A5D6002194D6002194D6002194D6002194D60021B5
      EF0021B5EF00298CBD00C6DEE70000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000040000000
      80000000C0000000C0000000800000004000000000000000000031B5E70039CE
      F70039CEF70029ADDE0021429C0021429C0021429C0021429C0021429C002194
      D60021B5EF0021B5EF00298CBD00E7EFF700000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000CECE0000000000FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000040000000
      8000FFFFFF00FFFFFF0000008000000040000000000094D6EF0039CEF70039D6
      FF0039D6FF0021429C00399CDE0031B5E70031B5E70031B5E7002194D6002142
      9C0021B5EF0021B5EF0029A5D6008CBDCE00000000000000000000000000C6C6
      C600FFFFFF0084000000FFFFFF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      000000000000C6C6C60000CECE0000FFFF0000CECE0000000000FFFFFF00C6C6
      C6000000000000000000000000000000000080808000FFCC3300FFCC33000040
      0000008000000040000000800000008000000080000000800000000040000000
      8000FFFFFF00FFFFFF000000800000004000D6EFFF0039CEF70042DEFF004AE7
      FF004AE7FF004AE7FF004AE7FF0042DEFF0042DEFF0042DEFF0039D6FF0031CE
      FF0031C6F70029BDEF0021B5EF0029A5D600000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000CECE0000FFFF000000000000FFFF0000CECE00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000FFCC3300FFCC33000040
      0000339933003399330033993300339933003399330033993300000040000000
      8000FFFFFF00FFFFFF0000008000000040009CDEF70042DEFF004AE7FF004AE7
      FF0052EFFF0052EFFF004AE7FF004AE7FF004AE7FF0042DEFF0042DEFF0039CE
      F70039CEF70029BDEF0029BDEF0029ADDE00000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      000000000000C6C6C60000CECE0000FFFF0000CECE0000000000FFFFFF00C6C6
      C6000000000000000000000000000000000080808000FFFF9900FFFF9900FFFF
      9900004000000040000033CC330033CC330033CC330033CC3300004000000000
      40000000400000004000000040008080800084D6EF004AE7FF004AE7FF0052EF
      FF0031BDD60021739C0031BDD6004AE7FF004AE7FF004AE7FF0031BDD6002173
      9C0029A5D60031C6F70029BDEF0021B5EF00000000000000000000000000C6C6
      C600FFFFFF0084000000FFFFFF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C6C6C60000CECE00C6C6C600FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000FFFF9900FFFF9900FFFF
      9900FFFF9900FFFF990033663300003366000033660033663300FFFF9900FFFF
      9900FFFF9900FFFF9900FFFF9900808080009CDEF7004AE7FF0052EFFF0052EF
      FF0021739C0010216B0021739C0052EFFF0052EFFF004AE7FF0021739C001021
      6B0021739C0031CEFF0029BDEF0021B5EF00000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000CCFF9900CCFF9900CCFF
      9900CCFF990033993300003366006699CC006699CC000033660033993300CCFF
      9900CCFF9900CCFF9900CCFF990080808000D6EFFF0042DEFF0052EFFF0052EF
      FF0021739C0010216B0021739C0052EFFF0052EFFF004AE7FF0021739C001021
      6B0021739C0031CEFF0031C6F70029A5D600000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000CCFF9900CCFF9900CCFF
      9900CCFF99000033660066CCFF0099CCFF006699CC006699CC0000336600CCFF
      9900CCFF9900CCFF9900CCFF990080808000000000009CDEF7004AE7FF0052EF
      FF004A94AD00FFFFFF004A94AD0052EFFF0052EFFF0052EFFF004A94AD00FFFF
      FF004A94AD0039CEF70029BDEF0094C6DE00000000000000000000000000C6C6
      C600FFFFFF0084000000FFFFFF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000CCFFCC00CCFFCC00CCFF
      CC00CCFFCC000033660066CCFF0066CCFF0099CCFF006699CC0000336600CCFF
      CC00CCFFCC00CCFFCC00CCFFCC0080808000000000000000000039CEF7005AF7
      FF007BD6E7004A94AD007BD6E7005AF7FF0052EFFF0052EFFF006BCEEF004A94
      AD006BC6DE0039CEF70029A5D60000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF0099CCFF000033660066CCFF0066CCFF000033660099CCFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00808080000000000000000000E7F7FF0039D6
      FF005AF7FF005AF7FF005AF7FF0052EFFF0052EFFF004AE7FF004AE7FF0042DE
      FF0042DEFF0031B5E700D6EFF70000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000080808000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF0066CCFF00003366000033660066CCFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF0080808000000000000000000000000000E7F7
      FF0039CEF7004AE7FF0052EFFF0052EFFF0052EFFF0052EFFF004AE7FF0039D6
      FF0031B5E700D6EFF7000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      00000000000000000000000000000000000084848400FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000009CDEF70042DEFF004AE7FF0052EFFF004AE7FF0039D6FF006BCE
      EF0000000000000000000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008484
      8400FFFFFF0084848400FFFFFF0084848400FFFFFF0084848400FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6EFFF009CDEF70084D6EF009CDEF700D6EFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000084848400000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400848484008484840000000000C6C6C600FFFF0000FFFF
      0000FFFF0000C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600313131003131
      310031313100C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FFFFFF00FFFFFF00C6C6C600848484000000
      00000000000000000000000000000000000084848400FFCE3100FFCE31000042
      0000008400000042000000840000008400000084000000840000004200000084
      000000420000FFCE3100FFCE31008484840000000000C6C6C600FFFF0000FFFF
      0000FFFF0000C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600313131003131
      310031313100C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FFFFFF00FFFFFF000000000000000000C6C6C600C6C6C6008484
      84000000000000000000000000000000000084848400FFCE3100FFCE31000042
      0000319C3100319C3100319C3100319C3100319C3100319C3100319C3100319C
      310000420000FFCE3100FFCE31008484840000000000C6C6C600FFFF0000FFFF
      0000FFFF0000C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600313131003131
      310031313100C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FF000000FF000000FFFF
      FF00FFFFFF000000000000000000FF000000FF00000000000000C6C6C600C6C6
      C6008484840000000000000000000000000084848400FFFF9C00FFFF9C00FFFF
      9C00004200000042000031CE310031CE310031CE310031CE3100004200000042
      0000FFFF9C00FFFF9C00FFFF9C008484840000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FF000000FFFFFF000000
      000000000000FF000000FF000000FF000000FF000000FF00000000000000C6C6
      C600C6C6C60084848400000000000000000084848400FFFF9C00FFFF9C00FFFF
      9C00FFFF9C00FFFF9C0031633100003163000031630031633100FFFF9C00FFFF
      9C00FFFF9C00FFFF9C00FFFF9C008484840000000000C6C6C600FF84FF00FF84
      FF00FF84FF00C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C600C600C600
      C600C600C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000000000000000000000000000848484000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000C6C6C600C6C6C600848484000000000084848400CEFF9C00CEFF9C00CEFF
      9C00CEFF9C00319C310000316300639CCE00639CCE0000316300319C3100CEFF
      9C00CEFF9C00CEFF9C00CEFF9C008484840000000000C6C6C600FF84FF00FF84
      FF00FF84FF00C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C600C600C600
      C600C600C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000084848400FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000C6C6C600000000000000000084848400CEFF9C00CEFF9C00CEFF
      9C00CEFF9C000031630063CEFF009CCEFF00639CCE00639CCE0000316300CEFF
      9C00CEFF9C00CEFF9C00CEFF9C008484840000000000C6C6C600FF84FF00FF84
      FF00FF84FF00C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C600C600C600
      C600C600C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6000000000000000000000000000000000000000000FF000000FFFFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000084848400CEFFCE00CEFFCE00CEFF
      CE00CEFFCE000031630063CEFF0063CEFF009CCEFF00639CCE0000316300CEFF
      CE00CEFFCE00CEFFCE00CEFFCE008484840000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600000000000000000000000000000000000000000000000000FF000000FFFF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000084848400CEFFFF00CEFFFF00CEFF
      FF00CEFFFF009CCEFF000031630063CEFF0063CEFF00003163009CCEFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF008484840000000000C6C6C6000000FF000000
      FF000000FF00C6C6C60000FF000000FF000000FF0000C6C6C600C6000000C600
      0000C6000000C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C60000000000000000000000000000000000000000000000000000000000FF00
      0000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF0000000000000084848400CEFFFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF0063CEFF00003163000031630063CEFF00CEFFFF00CEFF
      FF00CEFFFF00CEFFFF00CEFFFF008484840000000000C6C6C6000000FF000000
      FF000000FF00C6C6C60000FF000000FF000000FF0000C6C6C600C6000000C600
      0000C6000000C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      84008484840084848400848484008484840000000000C6C6C6000000FF000000
      FF000000FF00C6C6C60000FF000000FF000000FF0000C6C6C600C6000000C600
      0000C6000000C6C6C6000000000000000000000000000000000000000000C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FFFFFF00FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFE1FFFF00000000FFC0FFFF00000000
      FFC0E00F000000000000E00F000000000000E00F000000000000E00F00000000
      0000E00F000000000000E00F000000000000E00F000000000000E00F00000000
      0000E00F000000000000E00F000000000000E01F000000000000E03F00000000
      FFFFE07F00000000FFFFFFFF00000000F807FFFF800FFFE1E003FFFF0007FFC0
      C001E00F0007FFC0C000E00F000700008000E00F000700000000E00F00070000
      0000E00F000700000000E00F000700000000E00F000700000000E00F00070000
      8000E00F00070000C001E00F00070000C001E01F00070000E003E03F00070000
      F80FE07F800FFFFFFC1FFFFFD55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3F
      FFFF8003E00FF81F00008003E00FE00F00008003E00F800700008003E00F0003
      00008003E00F000100008003E00F000000008003E00F000100008003E00F8001
      00008003E00FC00100008003E00FE00000008003E01FF00000008003E03FF803
      FFFF8003E07FFC0FFFFFFFFFFFFFFE3F00000000000000000000000000000000
      000000000000}
  end
  object ftpMain: TIdFTP
    OnWork = ftpMainWork
    OnWorkBegin = ftpMainWorkBegin
    Passive = True
    ConnectTimeout = 0
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 992
    Top = 16
  end
  object pmPictureList: TPopupMenu
    OnPopup = pmPictureListPopup
    Left = 1128
    Top = 128
    object SetasIndeximage1: TMenuItem
      Caption = 'Set as Index image'
      OnClick = sbIndexImageClick
    end
    object DeletePicture1: TMenuItem
      Caption = 'Remove Picture'
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object ImageViewer1: TMenuItem
      Caption = 'Image Viewer'
    end
  end
  object il2: TImageList
    Height = 46
    Width = 46
    Left = 584
    Top = 32
    Bitmap = {
      494C010109000E0004002E002E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000B80000008A0000000100200000000000C08C
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEE3E100C5CC
      C700A8B2AC009FABA500A3AFA900AAA7A900ABA8AA00ABA8AA00ABA8AA00ABA8
      AA00ABA8AA00ABA8AA00ABA8AA00ABA9A900ABA9A900ABA9A900ACAAAA00ACAA
      AA00ACAAAA00ACAAAA00ACAAAA00A9A8AC00A9A8AC00A9A8AC00AAA9AD00AAA9
      AD00ABAAAE00ABAAAE00ABAAAE00ACAAA200B5AAA600BBB2AF00C8C9C7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DACBC800DAC6
      C100BBA39D00B79D9700BEA19C00BBA38F00BBA38F00BBA38F00BBA38F00BCA4
      9000BCA49000BCA49000BCA49000BCA49000BCA49000BCA49000BBA38F00BBA3
      8F00BBA38F00BBA38F00BBA38F00BCA49200BCA49200BCA49200BDA59300BDA5
      9300BDA59300BDA59300BDA59300AE9E9700BAA49F00AF9A9800C5BDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7D4CC00FFFF
      F700FEF9F000FFFBF200FBF9EF00FFF4F200FFF4F200FFF4F200FFF3F100FEF2
      F000FDF1EF00FDF1EF00FDF1EF00FDF1ED00FDF1ED00FCF0EC00FBEFEB00FAEE
      EA00F9EDE900F9EDE900F8ECE800F8EBE300F7EAE200F6E9E100F6E9E100F5E8
      E000F5E8E000F4E7DF00F4E7DF00FAE7DF00FBDED900C0A5A100C9BDBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2CFCA00FFFF
      FB00FFFFFA00FFFCF700FBF6F300FBF6F500FBF6F500FAF5F400F9F4F300F8F3
      F200F8F3F200F7F2F100F7F2F100F9F2EF00F8F1EE00F7F0ED00F6EFEC00F5EE
      EB00F4EDEA00F3ECE900F3ECE900F5EBE400F4EAE300F3E9E200F2E8E100F1E7
      E000F0E6DF00F0E6DF00F0E6DF00F4EBDE00F8E3DB00B59D9700C5BCB8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9D4D300FFFE
      FD00FCFDFB00F0F5F400EBF1F000F1EEE600F1EEE600F2EFE700F3F0E800F4F1
      E900F5F2EA00F6F3EB00F7F4EC00F9F2E900F9F2E900F8F1E800F7F0E700F6EF
      E600F6EFE600F5EEE500F5EEE500F7E9E300F6E8E200F5E7E100F4E6E000F3E5
      DF00F2E4DE00F2E4DE00F2E4DE00E8E9D900F6E8DC00B2A09900C3BFBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5CFC200FFF1
      F200F9EBEF00EFECE800DBDEDC00DEE0D400DAD6CB00DADBD700E1E3D000E3E1
      ED00E8E9E700FFEFDF00F9ECEA00F8EFEB00FAF1ED00FBF2EE00FAF1ED00F9F1
      EA00F8F0E900F7EFE800F6EEE700F5E9E300F5EDE600F7EDE600F0E2DC00F4E9
      E500FFFFF900FFFFFC00F0E3E100F3E6DE00F0E4DE00BCA38F00C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCC1B900E4E5
      DB00D3D9D400C8C9CD00C6BFC200BBB4B100CDB7BC00BEBCB400CDBEC200DECE
      BD00D6D2D700DCDBDF00E8E3E500F2E9E500F5ECE800F8EFEB00F9F0EC00F8F0
      E900F7EFE800F8EEE700F7EDE600F5E9E300F3EBE400EFE5DE00FEF0EA00CDC2
      BE007F7F7900FFFCF800EFE2E000F3E6DE00F0E4DE00BCA38F00C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D0CC00AEABA600C5C2
      C400BABCBC00ACB0AB00A9A9AF00A7A2AB00ABA0AA00A2A0A000B7ACAF00B7AC
      AE00BBB8B000CCBBBE00D0CDC500E3DAD600EBE2DE00F4EBE700F8EFEB00F8EF
      EB00F7EFE800F8EEE700F8EEE700F7EBE500F4ECE500F4EAE300F7E9E300CABF
      BB007B7B7500FFFFFC00EDE0DE00F3E6DE00F0E4DE00BCA38F00C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500DAD5D700BFB6B200A19B9600A9A5
      AA00A8A7AB00A4A09F00A49C9D009C9A920099978D009E9D93009F9595009A99
      9500A4A4A400B6A5A200B8B5B100C8C2BD00D6D0CB00E8E2DD00F4EBE700F7EE
      EA00F7EEEA00F8EEE700F9EFE800F5E9E300F1E9E200F3E9E200F9EBE500CDC2
      BE0082827C00FDFAF600F2E5E300F3E6DE00F0E4DE00BCA38F00C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEE5E800CCD0D100B5BDB600A09FA8008C8572007C77
      1A00735C00006B3D070068340B00713E0000785408009E909100959A98009B96
      95009B998F009D9596009C9F9D00AFA8A500BEB7B400D4CEC900E8DFDB00F2E9
      E500F6EDE900F8EDE900F7ECE800F5E9E300F7EFE800F4EAE300F6E8E200CDC2
      BE00BDBDB700EAE7E300F1E4E200F3E6DE00F0E4DE00BCA38F00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDE5E400C5CDC600B3B6B4008C7B540079471300793403007432
      000072340E00703313006A3300006F3402006C34000069350700753401007145
      0800A2919A009497880099969200A09B9800AAA5A200BEB7B400D3CDC800E9E0
      DC00F5ECE800F8EDE900F6EBE700F6EAE400F0E8E100F5EBE400F4E6E000F3E8
      E400FFFFFB00FFFFFB00F0E3E100F3E6DE00F0E4DE00BCA38F00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5D1BE00AFA080007D5514006F3A0700743901007A3E03007735
      0C00753408007C37050081340D0074380A007A37000078370B0074360000783B
      03007B37000084530F00989293009B9693009F9A9700A9A4A100BEB7B400D8CF
      CB00EBE2DE00F6EBE700F7ECE800F7EBE500F1E9E200F9EFE800F5E7E100CFC4
      C0007D7D7700FDFAF600F2E5E300F3E6DE00F0E4DE00BBA28E00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9DAD000A8926F00683B08007F3D02007C3A07007D400200783E0000763B
      0900763D060074400000743E02007A3D00007A3D050067330E007A3E02008238
      0200743B0800733B0000753A020096938F00989390009E999600AEA7A400C7BE
      BA00DED5D100F0E5E100F6EBE700F5E9E300F7EFE800F3E9E200F8EAE400CCC1
      BD007D7D7700FFFFFC00EEE1DF00F4E7DF00F0E4DE00BBA28E00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFE7
      F1009EA15C00813D0000844108008341000084400000853F0A00743E0700843F
      000079400200813F0A00874001008D3C000086440300783E00007B3E00007F3F
      0500723A0300793B050081370100733A06009B8F8F008B979700AA9A9300B3AC
      B300CDCEC400EADEDA00F5E6E300F6EAE800F0E8E100F6EDE400F4E6E000CCC0
      BE007F7D7C00FEFBF700F0E4DE00F3E7DD00F1E3DD00B9A08C00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B1B2
      8A00804811008244040089410100833D01009C450700914308008F4106008C44
      000094430600814101008949000083440000843E02008740070090420D00803B
      0200893F0500803E03008140090085380000824505009B928800A8989100B0A3
      A500C2B9B500DDD8C900F5EDD600FAEEEA00F1E9E200F4EBE200F7E9E300CCC0
      BE00BFBDBC00ECE9E400EFE3DD00F3E7DD00F1E3DD00B9A08C00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3E5D2008A6C
      1F0095390400914A07008F4400008E460600954300008D460200834800008D49
      0000883D09008A43110084440300894C00007C48060089420200814003009547
      0500814300008B470000834200008A3F1300843B0100965C0A00918D9200A39A
      9700B3B5AF00D8CCCC00E0DFDB00F2E6E200F6EEE700F3EAE100F8EAE400F1E5
      E300FFFEFA00FFFFFB00EEE2DC00F2E6DC00F0E2DC00B9A08C00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2AA6900934A
      0000A24808009A4B02008F4602009A48000084421200DED5C800CCCBCD00C9D1
      C600C7C3CF00CDCCCE00D7CFC800D3C7CD00C8C2D300C6CBC200BDC9BD00D3CF
      B3007E3D16008E4102008C4900008B4600008D4900008A45060092889800A79C
      9800B8A9A000C7C1C600E6DDDA00F4E8E400F5EDE600EFE6DD00F5E8E000C7BC
      B800817E7A00FFFCF700F2E6E000F1E5DB00EFE1DB00B89F8B00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEECE400886A11009D4D
      060096460000954D0000944806008C45050097500000A1480000904B0000914B
      0800C8D6D200CED3D400D0D1CF00C8CFD200DACFCB00974309009B4A07009944
      000086490700904501009144050092450600844707008E4100009C580D009A96
      8300A6A2A100C8B2AC00E5D2D500EDE1DD00F1EAE100F4EBE100F4E7DF00CABF
      BB00807D7900FFFFFB00EDE0D800EFE3D900EEE0DA00B89F8B00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1CFB100914F00009E4E
      0100944E080096500300994B06009B4A0000954E0400914D0C009A4B0C009148
      0400D3D4D000DDDBDA00E1D2D600D7D6D800E3D1D0008F4A0100904802008B47
      040099440C00994805008C46000098470400924806008F4503008F4503009990
      8300AC9C8F00C2B6B600C9CEBF00EDE1DD00EBE4DB00F7EEE400F5E5DE00C7BC
      B8007D7A7600FFFFFB00F0E3DB00EEE2D800EEE0DA00B79E8A00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFAD7800954C0200A449
      0000944C06009A5101009F4B0000A1470E00984A08009A4A09009E500400A04D
      0000DEE3E100D4D8D900D8DAE400D7DADE00D1DBDB008E4F00009A520500A24A
      0000944F0600964B0000964B00009D440B00944B0000954309008D4C02008993
      8600A5999900B7ADA600D6D0C300EBDFDB00F4EBE200EDE3D900F7E7E000CABE
      BA00BBB8B400E6E2DD00EFE2DA00EDE1D700EDDFD900B79E8A00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A7F3C0098530300AB49
      0900A14C02009A540000AA4F00009C4E0100A4530200954F0200A54C02009B4F
      0300EEE2E800E2E6E000DEE7DD00E1DDDC00E3E2E40095500100A14E0300A44F
      0000984D0300994D010097480900904B0200904C0000A348030095480000A96A
      02009D9B9B00C0ACAB00CFC8C500E9DDD900EDE4DB00F7EDE300F0E0D900EEE2
      DE00FEFBF700FEFBF300ECDFD700EDE1D700EDDFD900B79E8A00C1BDC2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B670200AC5400009B4D
      080091510300A04B0700A14F0100A1500500A4540000984E0600A24C0000A24F
      0100E3E6EA00EBECDC00E2E8E300F2E8E100E5E7E7009A4F0100985205009E50
      0000A14E00009A4F000095490700984D01009C49050094490000954B03009F56
      0000A5959C00C0B0AA00D5CACC00EFDFD800EEE3DB00F0E3DB00F3E0DB00D1C5
      BF00928F8700FEF8F100ECDED800EDDFD300EADDD500B49C8600BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000975A0000AA500300A84D
      0200A0540200A54B0A00A4520000A44F0700A2500000A45C0800AF690400AC6B
      0800EFF4F200E8E9ED00E9ECFA00E3ECF000E2EDEB00B56F1C00A85F0D00AC5A
      0900A44C0500A45200009E4C00009A4A0300A04D09009A4F03009E4D0000944F
      0000B09EA500CCBDB400D9D3C800EFDFD800F0E5DD00EFE2DA00F6E3DE00C9BD
      B700928F8700FFFBF400EDDDD700EBDDD100E9DCD400B39B8500BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A6213009D4B0400AF53
      0600A5530100A9510A00A0510000A35F0000BA731100C2832900B57E3B00B67F
      4200FDF4F000FEF8F300F5F0F200EFEEF200F4F2F200C5823D00BC7E3700BA7C
      2E00AF6C2100A1580400A24D00009C4F0000A04A04009F4C0100A04D02009E58
      0400B1A3A400C9C1B400E3DCC900EDDDD600EDE2DA00ECDFD700F1DFD800CDC0
      B800928C8500FCF6EF00ECDCD600E9DBCF00E6D9D100B29A8400BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D855100A0510800A651
      0D009A510000A2540100A6630E00B07C3900CB874600B7805300F9F6EE00FBFA
      F000F4F3FC00F7F3F200ECFBF300F9F4F600FAF2EB00B9804200BB804200C283
      4900C1834700C1802F00A36304009A4F0000A54A0500A64E02009B500400A062
      0000BCB7A800CECAC500E7D5D600F2E3DA00E9DED600EFE2DA00EEDCD500CDC0
      B800C3BEB500E4DDD400EDDBD400E9D9CD00E6D6CF00B3988300C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B09800AD560000A54E
      0B009B530000A7610D00BD874800C08A5300C38C5300CA8E5200BC855200C788
      4400B9894F00B78B5000BE8D4300BA884600B78A5700C0884700B7885200B186
      4D00B0854C00BE854D00BB7F4B00A4610400A24D0000A14C0400A24F0400A37A
      3B00CDC4B700DCD6D100E7DAD800F0E1D800E4DAD000EADED400EEDBD300EADA
      D300F5EEE500F5ECE300EAD7D000E8D8CC00E4D4CD00B2978200C2BFC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8DAD400A6500000AF4E
      0400A7550400BE803A00C4977200C69E6E00C7935E00C7986200B4956200CB9F
      6200CD935F00CD8C6000D18F5E00C6935400C5915500BF8B4500C78D5200C98F
      5B00C18B5600C9905200BF8E4800BA7A26009E4F00009D520400A9510000CBBF
      B500E7D3D200EAE0D900EBE5DA00EDDED500EBE1D700EADED400E6D3CB00D5C6
      BD00B3ADA200F4E9E100E6D3CC00E6D4C900E3D1CA00B2958000C2BFC1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1723A00AA51
      0000A64F0500D1996800C49E7C00CEA78100D5A77100C9A27600CB9D7B00D49E
      6F00C99C6900CCA26D00CB9C6800C79D7000CA966800CC9C6800CE986100C695
      5D00C29C6200C6935B00C4955D00CB8A5D00A5520E009A51000099570400D4D9
      D000ECDDDB00F5EBEB00F6ECEC00F4E6DA00E9E0D300E6D7CE00F0DDD500D5C4
      BB00B0A79D00F2E8DE00EAD5CD00E3D1C600E0CEC700B0937E00C1BEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B9B9A1009A55
      05009E4D0A00D4A78200D6B38700DBB18E00DDB58B00CCB09200D9B28C00D2AC
      8900FFFFF900EEF6FD00F5F7FF00FEFBF300C0A58A00CAA97B00D9A47100D5A3
      7500C59D7300CD9B7100CC9E6E00C6936100A24B0100A6540700C1927300E5DC
      D800EFE7EE00F2EFE700F8F1DD00FBEDE100F0E7DA00E6D8CC00E8D5CD00D3C2
      B900AFA69C00F6ECE200E2CDC500E2CEC300DECBC400AF927D00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E2F5F200AB7E
      4100A0570100CAA26D00DAC0A800E0BFB000DBC5A200DDC49A00D7BFA100FFFF
      F200F8FEFD00FAFCFC00FDFFF900ECF6FD00FFFFF400C9B09600D1B29100CEAE
      8300CDA77700D4AA7B00D0A57A00BD8E4A00A94E0300A45B2700F4DCD600F3EA
      ED00F4F0E500F7F5EB00FBEBE500F1EAE100F3EDE200EEE0D400F0DACE00D3C3
      B300C8C0AF00DDD0C000E6CCBE00D8CFC100E6CBBD00A48C8000BFC0B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D9D3
      CE0098540700BD7E3A00E0CCAD00E5CEB400E6D5C200E3CFBE00DDCEBE00FFFA
      F700FFF8FB00FFFCFD00F3FDFD00F7FEFB00FAF7F300D9C4AF00E3BF9900E7BE
      9D00DBB99C00D2B69400C4A48100BD750F00974B1000E0B1AD00F2EDEE00F1EC
      EB00FEF2F200F3F0E200F6ECEC00F5EBEB00EAE0E000F3E4E200EAD3D100E5D1
      CC00E7DBD500EBDBD400E1C7C100D8C9B900E4C7B900A28A7E00C7C5BD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B6B9BE00A6560900C6996600E0D7CA00F8DDC800F5DFCD00E7DED100EDDD
      D600FFFCFF00F5FCFF00F2FBF800FFFFF000E2D9C500E7D0C100ECCFC100E1CA
      B400DBC5AC00D8B48E00B58440009E510800D8A59500F6F3EB00EDF7EB00FBF5
      F000FEF0EA00FBEDEF00F6EDE900F4E8DE00F0E6DC00F0E4DA00F2DED300DCC8
      BD00BDB0A200EAD9CC00E3C8BA00DFCBBA00D9BAAB00A1897D00D3D0C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4B6B7009C520A00C68D5A00E6C7B000F4EBDD00F2EAD900F5EC
      E800E5E7E100EDEFDB00FAEDD700ECECDC00EDE4DA00F0E7D900E2D9CB00EFD5
      C500E3B28200BD792600A6560000D2A39F00FFF8F400F0F8EE00FBFCE800FEF5
      EB00FCECED00FFEDE600F8E8E100F4E9E100E5E0D700E8E1D800EBDED600D6C9
      C100BFB6AC00E2D6CA00D8C2B700D9BFAE00E3C6B8009A847900E2DCD5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6CCC200966C47009B570E00C7934D00E1C9AB00EFDA
      D200F2E8DE00F8F6EE00FEF2EC00FFEDEC00EBE4D300DDD2BC00D6B38B00C382
      38009F4E0A00A4644B00E2C5C800FFFCFF00F1FBF500F9F4F600FFF6FA00F6F0
      EB00F7F1EA00FEEEE200F7EADC00E4C3B300CCB5A500C4B2A100CDB3A500CBB1
      A100CAB1A100D0B5A100DAB4A200CDB4A400CAB2A600C4B2AB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E3F1F700B6AEAE008C6238009C510300A84F
      0000A9510B009F4C0100A35607009D4D0600A1500500A5550000A14F08009D52
      4200CAA1B000EEE9F200F0FEFC00FBF8F400F6FAF500FDF8F500FFEFFA00F3F1
      F000F5F2EA00F5E4ED00F0EDDF00CFBEBB00FFFCF900FEFFFD00FFFBFC00FFF5
      F700FCF4F400F4E9E500F0DDD800F1DBCF00D7C6BD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7AFBA00A495
      99008C6860008C512300A35600008F54270097695800AE8D9C00DAC7D800F8F5
      F000FAFFF800F9F9F900FFFDFE00FFFBFE00FCFFF500F8F7F300FBF7EC00F8F3
      EA00F5EBF100EEE5E200EFE7E700D2C1B800FFFFF800F8FFF800F6F7F300F6F1
      EE00F2EFE700E9E2D900EADBD200D3C4BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6CECF00F8FA
      FA00FEFFF600FFFEF900F1FFFF00F9FFFE00FFFCFB00FFFFFE00FFFCFE00F9FB
      FC00FCFEF800FDFFF900F1F6F900FDFBFB00F1F8FB00F4FCF200FEF3EF00FFEF
      F000F4EDDC00F9F2E300F4E2E300DCC1B700FFFCF200FBF9F100FAF4EF00F4E8
      E400EBDDD700E7D6CD00DAC4B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0CDC600FFFF
      FF00FBFDF700F9FCFF00FDFFFF00FDFFFF00FCFEFF00FAFEFF00FAFEFF00FAFF
      FE00FCFEFE00FDFDFD00FCFCFC00FFFAF700FFF8F500FFF7F300FEF5F100F9F1
      EA00F6EDE400F3EAE100EFE6DC00DCC2BB00FFFCF300F4F8ED00EAECE000F3E3
      D700E9D6CE00D1C5BF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9CFC900FFFC
      FD00FFFFFA00FDFCFF00FEFBFD00FEFFFD00FEFFFB00FCFFFB00FCFFFB00FCFF
      FB00FEFFFB00FDFEFA00FFFFF900FEFAF500FBF7F200FCF6EF00FBF3EC00F7F0
      E700F5ECE200F1E8DE00EEE5D800D6C4B900FFF5EB00EFEEE400F3E6DE00E2D3
      CA00D8C5BD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6D0CA00FBFB
      FB00FFFFF900F9FDFE00F9FBFB00FFFDFF00FFFEFE00FFFEFE00FFFEFE00FFFE
      FE00FFFCFD00FFFBFC00FFFAFB00FFF7F800FCF4F400FBF1F100FBEFED00F8EB
      E900F6E7E400F3E2DF00EEDED800D5C8BA00FBF1E700F5E2DB00E1D6CE00DCC6
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7CFC900FDFB
      FB00FEFCF400FCFBFD00FFFFFF00FCFFFD00FCFFFB00FCFFFB00FAFFFB00FAFF
      FB00FBFFFA00FBFCF800FAFBF700FBF8F300F7F5ED00F5F2EA00F5EFE800F6ED
      E400F3E8E000F1E5DB00EBDFD500D2C5B700FFEEE600EADCD600D7C1BC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCCFC700FAFF
      FF00F8FFF600F8FEFD00F8FDFB00FFFBFF00FFFBFF00FEFDFF00FEFDFF00FEFD
      FF00FFFBFF00FFFBFD00FFFAFC00FFF9F900FFF4F200FDF0EE00FCEDEB00F9E7
      E600F7E4E100F1DEDB00ECD7D500DAC4B800F2E1D800D6C1BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1D1CA00F8FD
      FB00FDFFF600FFFFFF00FFFBFA00FDFFFF00FDFFFF00FBFFFF00FAFFFD00FAFF
      FD00FAFDFB00FBFCFA00F9FAF800FEF8F100FAF4ED00F8F2EB00F7F0E700F5EC
      E300F2E9E000EFE4DC00EADFD700D8C4B900D8C5BE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFD1CC00E1D5
      D500DECEC700DDCBCC00E2CACA00E0CDBE00DFCCBD00DFCDBC00DCCCBB00DBCB
      BA00DCCAB900DCC8B700DBC7B600DDC5B300DAC2B000D8C0AE00D5BDAB00D0B8
      A400CCB4A000CAB19D00C6AD9900D4C5BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B3C700383E45003B4148003D434A003A4047003D434A003C42
      49003B4148003A404700403F6700C8CBD9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCE2E100C5CCC900AAB1AC00A3B0A8009FAEA600AAA7
      A900AAA7A900AAA7A900AAA7A900AAA7A900ABA8AA00ABA8AA00ABA8AA00ABA9
      A900ABA9A900ABA9A900ACAAAA00ACAAAA00ACAAAA00ACAAAA00ACAAAA00AAA9
      AD00ACAAAA00B3B6C4005550B900706CCB007572C8007872CB007972CD007471
      C700716FC8006965C500494EAB00CBD1CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5CCC900AAB1AC00A3B0A8009FAEA600AAA7A900AAA7A900AAA7
      A900AAA7A900AAA7A900ABA8AA00ABA8AA00ABA8AA00ABA9A900ABA9A900ABA9
      A900ACAAAA00ACAAAA00ACAAAA00ACAAAA00ACAAAA00AAA9AD00AAA9AD00AAA9
      AD00AAA9AD00AAA9AD00AAA9AD00AAA9AD00AAA9AD00AFACA800B3A8A400BDB4
      B000C7C8C400DDE1E20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5CC
      C900AAB1AC00A3B0A8009FAEA600AAA7A900AAA7A900AAA7A900AAA7A900AAA7
      A900ABA8AA00ABA8AA00ABA8AA00ABA9A900ABA9A900998D9F005F687500766A
      7600736E7700626F61005B707100776B770074716C00737169006D6E6A007573
      6800626E70006C746A006C746A006C746A006C746A0069716A0069716A006A73
      69006B75690071736D006B7564006E7965006D70670000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000998D9F005F687500766A7600736E7700626F
      61005B707100776B770074716C00737169006D6E6A0075736800626E70006C74
      6A006C746A006C746A006C746A0069716A0069716A006A7369006B7569007173
      6D006B7564006E7965006D706700000000000000000000000000000000000000
      00000000000000000000DECCCB00D6C2BD00BEA5A100BAA09A00BDA19A00BCA4
      9000BCA49000BCA49000BCA49000BCA49000BBA38F00BBA38F00BBA38F00BBA3
      8F00BCA49000BCA49000BCA49000BBA38F00BBA38F00BAA28E00BAA28E00BDA5
      9300BDA59300B7BAC8009293D700ADAEEA00B3B6E900B6B6EC00B8B7EF00B3B6
      E900B1B5E800A7AAE7007075D200CAD0CB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DECCCB00D6C2BD00BEA5A100BAA09A00BDA19A00BCA49000BCA49000BCA4
      9000BCA49000BCA49000BBA38F00BBA38F00BBA38F00BBA38F00BCA49000BCA4
      9000BCA49000BBA38F00BBA38F00BAA28E00BAA28E00BDA59300BDA59300BCA4
      9200BCA49200BCA49200BCA49200BCA49200BCA49200AEA09A00B6A09A00AF9B
      9600C4BDBA00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECCCB00D6C2
      BD00BEA5A100BAA09A00BDA19A00BCA49000BCA49000BCA49000BCA49000BCA4
      9000BBA38F00BBA38F00BBA38F00BBA38F00BCA4900048974E0071B96D0070CE
      79006B813200ED3F1B00DF481500DE470E00EE3B1400ED420E00E7431600E040
      1800ED441100E9431E00E9431E00E9431E00E9431E00E3401A00E23F1800E644
      1A00E6441A00FF551B00FF963300FFAF2500FFA01E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000048974E0071B96D0070CE79006B813200ED3F
      1B00DF481500DE470E00EE3B1400ED420E00E7431600E0401800ED441100E943
      1E00E9431E00E9431E00E9431E00E3401A00E23F1800E6441A00E6441A00FF55
      1B00FF963300FFAF2500FFA01E00000000000000000000000000000000000000
      00000000000000000000DCD6D100FFFFF800FEFCF200FCF7EE00FFFCF100FFF5
      F300FFF5F300FFF4F200FFF4F200FFF3F100FEF2F000FEF2F000FDF1EF00FDF1
      ED00FDF1ED00FDF1ED00FCF0EC00FBEFEB00FAEEEA00F8ECE800F8ECE800F7EA
      E200F7EAE200BBBECC009C9AE000B6B5F300BDBDF300C2BFF700C0BCF700BCBC
      F200B9BBF100B0AFEF00757AD700CED4CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCD6D100FFFFF800FEFCF200FCF7EE00FFFCF100FFF5F300FFF5F300FFF4
      F200FFF4F200FFF3F100FEF2F000FEF2F000FDF1EF00FDF1ED00FDF1ED00FDF1
      ED00FCF0EC00FBEFEB00FAEEEA00F8ECE800F8ECE800F7EAE200F7EAE200F6E9
      E100F6E9E100F5E8E000F4E7DF00F3E6DE00F3E6DE00F9E6DF00FCE0D900BFA5
      9F00C7BCB800DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCD6D100FFFF
      F800FEFCF200FCF7EE00FFFCF100FFF5F300FFF5F300FFF4F200FFF4F200FFF3
      F100FEF2F000FEF2F000FDF1EF00FDF1ED00FDF1ED0069906300798E6100649A
      5E006C7437009D4C0800B8330700984E1E009E4E110086493500A5460E00AE48
      0D00A54615009845120098451200984512009845120098420E0099430D009F4A
      1200A5501800B0673500B7823200B98E2700C38C2B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000069906300798E6100649A5E006C7437009D4C
      0800B8330700984E1E009E4E110086493500A5460E00AE480D00A54615009845
      120098451200984512009845120098420E0099430D009F4A1200A5501800B067
      3500B7823200B98E2700C38C2B00000000000000000000000000000000000000
      00000000000000000000D1CCC900FFFFFC00FFFEF900FDF9F400FFF8F400FBF6
      F500FBF6F500FAF5F400F9F4F300F9F4F300F8F3F200F7F2F100F7F2F100F8F1
      EE00F8F1EE00F8F1EE00F7F0ED00F6EFEC00F4EDEA00F3ECE900F2EBE800F5EB
      E400F4EAE300BBBECC009492E400ACADF700B2B4F500B6B5F700B8B7FB00B3B5
      F500B2B4F500A8A8F4006F74D100D4DAD5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1CCC900FFFFFC00FFFEF900FDF9F400FFF8F400FBF6F500FBF6F500FAF5
      F400F9F4F300F9F4F300F8F3F200F7F2F100F7F2F100F8F1EE00F8F1EE00F8F1
      EE00F7F0ED00F6EFEC00F4EDEA00F3ECE900F2EBE800F5EBE400F4EAE300F4EA
      E300F3E9E200F1E7E000F0E6DF00EFE5DE00EFE5DE00F2E8DE00FCE8DD00B49D
      9500C5BDB600DDDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1CCC900FFFF
      FC00FFFEF900FDF9F400FFF8F400FBF6F500FBF6F500FAF5F400F9F4F300F9F4
      F300F8F3F200F7F2F100F7F2F100F8F1EE00F8F1EE00DB640E00EB752400D871
      2200F2843200DD882500D2642800B5BD8000FF833F00C1978A00C27D4C00E387
      3600DF893D00E8C0AE00E9C1AF00EAC2B000E9C1AF00DFC5B400EFC1B000F1BB
      AA00BD9E8700865E6000895A4500C1776500CE5C4B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DB640E00EB752400D8712200F2843200DD88
      2500D2642800B5BD8000FF833F00C1978A00C27D4C00E3873600DF893D00E8C0
      AE00E9C1AF00EAC2B000E9C1AF00DFC5B400EFC1B000F1BBAA00BD9E8700865E
      6000895A4500C1776500CE5C4B00000000000000000000000000000000000000
      00000000000000000000DACFD100FFFEFE00F9FEFD00FAFFFD00F5F8F600FBF8
      F000FBF8F000FAF7EF00F9F6EE00F8F5ED00F8F5ED00F7F4EC00F7F4EC00F8F1
      E800F8F1E800F8F1E800F8F1E800F7F0E700F6EFE600F5EEE500F4EDE400F7E9
      E300F2EBE800B5C0C8008182DC009D9EF600A2A3F900A5A5F900A3A7F600A3A6
      F700A0A2F600989AEE006565D900D6D5D9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DACFD100FFFEFE00F9FEFD00FAFFFD00F5F8F600FBF8F000FBF8F000FAF7
      EF00F9F6EE00F8F5ED00F8F5ED00F7F4EC00F7F4EC00F8F1E800F8F1E800F8F1
      E800F8F1E800F7F0E700F6EFE600F5EEE500F4EDE400F7E9E300F7E9E300F6E8
      E200F5E7E100F4E6E000F3E5DF00F3E5DF00F2E4DE00E7E7D900F4E8DC00B0A0
      9400C7C4BC00D5DCD90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DACFD100FFFE
      FE00F9FEFD00FAFFFD00F5F8F600FBF8F000FBF8F000FAF7EF00F9F6EE00F8F5
      ED00F8F5ED00F7F4EC00F7F4EC00F8F1E800F8F1E800D8BABF00F8F1E800CACD
      DB00DBDAE400A8CFC000DAFFFF00FFE6EE00D6D6C600EBDDD100FFF6E300FFEE
      DB00FCF3E600E8B9A400E9BAA500E9BAA500E9BAA500EFB6A700EDB3A000E4B5
      9900FFEBC300D4D6940087D58E00C5A49400C066470000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D8BABF00F8F1E800CACDDB00DBDAE400A8CF
      C000DAFFFF00FFE6EE00D6D6C600EBDDD100FFF6E300FFEEDB00FCF3E600E8B9
      A400E9BAA500E9BAA500E9BAA500EFB6A700EDB3A000E4B59900FFEBC300D4D6
      940087D58E00C5A49400C0664700000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FAFCFD00F8F9F700FEF7
      F400FDF6F300FCF5F200FEF5F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2
      EF00FBF2EF00FAF1ED00FBF0EC00EBECF600F9EFE800F8EEE700F7EDE600E8F1
      E700F9F6F200AABEC9007578DA008E8FF1009392F2009695F3009798F2009697
      F2009494F2008E8DED00505BCD00C3CFC9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FAFCFD00F8F9F700FEF7F400FDF6F300FCF5
      F200FEF5F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00FAF1
      ED00FBF0EC00EBECF600F9EFE800F8EEE700F7EDE600F4E8E400F3E5DF00F3E5
      DF00F3E5DF00F3E5DF00F3E5DF00F3E5DF00F3E5DF00F4E8DE00EFE3DD00BBA2
      8E00C1BDC200E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FAFCFD00F8F9F700FEF7F400FDF6F300FCF5F200FEF5F100FEF5
      F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00EFC2BE00FBF0EC00FAF0
      E900F9EFE800F8EEE700FFF5F000FFE8D800E9BFA800E5C5AE00D6BDA900F4DC
      CA00FFE9D100E6AF9400E7B09500E7B09500E6AF9400E5AF9800E3AE9300E2B2
      8E00F6CDA000EDD8A1005DD86400E7D9A400C95D4C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFC2BE00FBF0EC00FAF0E900F9EFE800F8EE
      E700FFF5F000FFE8D800E9BFA800E5C5AE00D6BDA900F4DCCA00FFE9D100E6AF
      9400E7B09500E7B09500E6AF9400E5AF9800E3AE9300E2B28E00F6CDA000EDD8
      A1005DD86400E7D9A400C95D4C00000000000000000000000000000000000000
      00000000000000000000E4D4C300FCFEFF00FFFFFF00FBFDFE00FBFCFA00FFF8
      F500FEF7F400FDF6F300FCF6F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2
      EF00FBF2EF00FAF1ED00DDDFCB0069637C00616560006F6272006C645D006260
      6C00686463005D6779007171E5008081F3008283F3008685F3008485F3008384
      F2008283F3007E7EF0005F5ADB005A576D00656565006B5E74006E5E69006963
      6E005B5D65008982910000000000000000000000000000000000000000000000
      0000E4D4C300FCFEFF00FFFFFF00FBFDFE00FBFCFA00FFF8F500FEF7F400FDF6
      F300FCF6F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00FAF1
      ED00DDDFCB0069637C00616560006F6272006C645D0062606C00686463006F62
      72006F6272006F6272006F6272006F6272006F6272006F6272006F6272006F62
      72006F6272006F6272006F6272006F6272006F6272006F6272006F6272006F62
      7200000000000000000000000000000000000000000000000000E4D4C300FCFE
      FF00FFFFFF00FBFDFE00FBFCFA00FFF8F500FEF7F400FDF6F300FCF6F100FEF5
      F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00D6CEB0004E957400A4C1
      B200B8BBB200DCD2D200F1FFFF00EAE6E500CFD5C400EDD5C900ECD5C600F4DF
      D000F8E5D600DF9F8000E0A08100E1A18200E0A08100E1A78400E5A48500D3A0
      8000FFF9D600FFFCE5007FC86C00E6FACD00984F390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D6CEB0004E957400A4C1B200B8BBB200DCD2
      D200F1FFFF00EAE6E500CFD5C400EDD5C900ECD5C600F4DFD000F8E5D600DF9F
      8000E0A08100E1A18200E0A08100E1A78400E5A48500D3A08000FFF9D600FFFC
      E5007FC86C00E6FACD00984F3900000000000000000000000000000000000000
      00000000000000000000E4D4C300FCFEFF00FFFFFF00FDFFFF00FDFEFC00FFF8
      F500FEF7F400FDF6F300FCF6F100FDF4F000FDF4F000FCF3EF00FCF3EF00FBF2
      EF00FBF2EF00FAF1ED00C5BFEE002008A4001B1A9800140498001300A3000B02
      A6001900A6003428B600686AEC007475F5007574F2007977F3007878F4007574
      F2007574F4007472F4005952FB002818A1000C0096001403A000190E88001A11
      A1001C159B00311E8D0000000000000000000000000000000000000000000000
      0000E4D4C300FCFEFF00FFFFFF00FDFFFF00FDFEFC00FFF8F500FEF7F400FDF6
      F300FCF6F100FDF4F000FDF4F000FCF3EF00FCF3EF00FBF2EF00FBF2EF00FAF1
      ED00C5BFEE002008A4001B1A9800140498001300A3000B02A6001900A6001900
      A6001900A6001900A6001900A6001900A6001900A6001900A6001900A6001900
      A6001900A6001900A6001900A6001900A6001900A6001900A6001C159B00311E
      8D00000000000000000000000000000000000000000000000000E4D4C300FCFE
      FF00FFFFFF00FDFFFF00FDFEFC00FFF8F500FEF7F400FDF6F300FCF6F100FDF4
      F000FDF4F000FCF3EF00FCF3EF00FBF2EF00FBF2EF00FAB9B0007F897D00E8DB
      DD00D2DEDE00D6D8D200F0E6EC00FFF2E000FEE6D000F7E0D000FFEBDB00F9E5
      D400F7E5D400DA916B00DD946E00DD946E00DD946E00DB906A00DF916C00E194
      6D00F0A17800D1936300E9A77400FFEAB100A2512B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAB9B0007F897D00E8DBDD00D2DEDE00D6D8
      D200F0E6EC00FFF2E000FEE6D000F7E0D000FFEBDB00F9E5D400F7E5D400DA91
      6B00DD946E00DD946E00DD946E00DB906A00DF916C00E1946D00F0A17800D193
      6300E9A77400FFEAB100A2512B00000000000000000000000000000000000000
      00000000000000000000E5D5C400FCFEFF00FFFFFF00FDFFFF00FFFFFE00FFF8
      F500FEF7F400FDF6F300FDF7F200FCF6F100FDF4F000FDF4F000FCF3EF00FCF3
      F000FBF2EF00FAF1ED00C6CDD0002121BB005A4BEC005A5FEA005957EC005958
      EA005C5CEC006162F0006C6CEE006A6CF000676AF1006668F200696AF8006768
      F600696AF8006768F6006263F1006061EF005D5EEC005A5BE9005F5DEC00565E
      E7004F52DC001D0F9D0000000000000000000000000000000000000000000000
      0000E5D5C400FCFEFF00FFFFFF00FDFFFF00FFFFFE00FFF8F500FEF7F400FDF6
      F300FDF7F200FCF6F100FDF4F000FDF4F000FCF3EF00FCF3F000FBF2EF00FAF1
      ED00C6CDD0002121BB005A4BEC005A5FEA005957EC005958EA005C5CEC006162
      F0006C6CEE006A6CF000676AF1006668F200696AF8006768F600696AF8006768
      F6006263F1006061EF005D5EEC005A5BE9005F5DEC00565EE7004F52DC001D0F
      9D00000000000000000000000000000000000000000000000000E5D5C400FCFE
      FF00FFFFFF00FDFFFF00FFFFFE00FFF8F500FEF7F400FDF6F300FDF7F200FCF6
      F100FDF4F000FDF4F000FCF3EF00FCF3F000FBF2EF00E1C8B800B8CCBF00FBF1
      EA00FAF0E900F8EEE700F7EDE600E9E5D200FCEED700FFEADA00F5DECE00F7E3
      D200FCEAD900D3835A00D6865D00D6865D00D5855C00D4835D00D8865D00D581
      5700D27F5200D57D4F00D8704100CD7A4700C755310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1C8B800B8CCBF00FBF1EA00FAF0E900F8EE
      E700F7EDE600E9E5D200FCEED700FFEADA00F5DECE00F7E3D200FCEAD900D383
      5A00D6865D00D6865D00D5855C00D4835D00D8865D00D5815700D27F5200D57D
      4F00D8704100CD7A4700C7553100000000000000000000000000000000000000
      00000000000000000000E5D5C400FCFEFF00FFFFFF00FCFEFF00FFFFFE00FEF7
      F400FEF7F400FDF6F300FDF7F200FDF7F200FCF6F100FBF5F000FCF3EF00FCF3
      F000FBF2EF00FAF1ED00C5CED2001D21BC00594EF200585DF6005E60F4005D5F
      F3005C5EF2005D60F100615FF9005F60F8005F60F6005C60F4006060F4006060
      F4005F5FF3006161F5006161F5006161F5006161F5006262F6006460F5005A62
      F1005358E3002213A40000000000000000000000000000000000000000000000
      0000E5D5C400FCFEFF00FFFFFF00FCFEFF00FFFFFE00FEF7F400FEF7F400FDF6
      F300FDF7F200FDF7F200FCF6F100FBF5F000FCF3EF00FCF3F000FBF2EF00FAF1
      ED00C5CED2001D21BC00594EF200585DF6005E60F4005D5FF3005C5EF2005D60
      F100615FF9005F60F8005F60F6005C60F4006060F4006060F4005F5FF3006161
      F5006161F5006161F5006161F5006262F6006460F5005A62F1005358E3002213
      A400000000000000000000000000000000000000000000000000E5D5C400FCFE
      FF00FFFFFF00FCFEFF00FFFFFE00FEF7F400FEF7F400FDF6F300FDF7F200FDF7
      F200FCF6F100FBF5F000FCF3EF00FCF3F000FBF2EF00FAC8BC00B7D6C700FBF1
      EA00EAF8F700F8EEE700F7EDE600FFEDDE00FFF4E000FFEEDE00FFECDC00F3DF
      CE00FCEAD900D0784A00D37B4D00D27A4C00D27A4C00D3774C00D2774A00D377
      4800D0724400C96D3C00D76C3900CF663300BE49220000000000000000000000
      0000DCE2E100AAB1AC009FAEA600AAA7A900AAA7A900ABA8AA00ABA8AA00ABA9
      A900ACAAAA00ACAAAA00ACAAAA00AAA9AD00AAA9AD00AAA9AD00AAA9AD00B3A8
      A400000000000000000000000000FAC8BC00B7D6C700FBF1EA00EAF8F700F8EE
      E700F7EDE600FFEDDE00FFF4E000FFEEDE00FFECDC00F3DFCE00FCEAD900D078
      4A00D37B4D00D27A4C00D27A4C00D3774C00D2774A00D3774800D0724400C96D
      3C00D76C3900CF663300BE492200000000000000000000000000000000000000
      00000000000000000000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FEF9
      F600FCF7F400FDF6F300FDF7F200FDF7F200FDF7F200FBF5F000FAF4EF00FCF3
      F000FBF2EF00FAF1ED00C6CFD3001E22B600554BE5005055ED005551F0005652
      F1005954F7005B55FA005A56FB005857FA005457F6005357F2005556F4005859
      F7005758F6005556F4005657F5005657F5005657F5005657F5005B55F6005258
      F1004B4FE3001B0DA10000000000000000000000000000000000000000000000
      0000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FEF9F600FCF7F400FDF6
      F300FDF7F200FDF7F200FDF7F200FBF5F000FAF4EF00FCF3F000FBF2EF00FAF1
      ED00C6CFD3001E22B600554BE5005055ED005551F0005652F1005954F7005B55
      FA005A56FB005857FA005457F6005357F2005556F4005859F7005758F6005556
      F4005657F5005657F5005657F5005657F5005B55F6005258F1004B4FE3001B0D
      A100000000000000000000000000000000000000000000000000E6D6C500FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FEF9F600FCF7F400FDF6F300FDF7F200FDF7
      F200FDF7F200FBF5F000FAF4EF00FCF3F000FBF2EF00EFB7AC00AF717100DEE4
      E300CDD9D900E2E8E700F7EDE600F2E9DB00E7D6C300FFECDC00EAD3C300FBE7
      D600FBE9D800CD6B3B00D06E3E00D06E3E00D06E3E00CF6D3D00CF6B3B00D36D
      3C00D16B3700D46B3800CC683100CA602B00C1451C0000000000000000000000
      0000DCD6D100FEFCF200FFFCF100FFF5F300FFF4F200FEF2F000FDF1EF00FDF1
      ED00FCF0EC00FAEEEA00F8ECE800F7EAE200F6E9E100F4E7DF00F3E6DE00FCE0
      D900000000000000000000000000EFB7AC00AF717100DEE4E300CDD9D900E2E8
      E700F7EDE600F2E9DB00E7D6C300FFECDC00EAD3C300FBE7D600FBE9D800CD6B
      3B00D06E3E00D06E3E00D06E3E00CF6D3D00CF6B3B00D36D3C00D16B3700D46B
      3800CC683100CA602B00C1451C00000000000000000000000000000000000000
      00000000000000000000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFB
      F800FEF9F600FBF6F300FCF6F100FCF6F100FCF6F100FBF5F000FAF4EF00FCF3
      F000FBF2EF00FBF2EE00CBC9CF003F40C600867DFC008186FF008183F9008182
      FC008180FF007E7BFF006B68F9006361F6005653EF004B48EB005252FA004E4E
      F6004E4EF6005050F8005050F8005050F8005050F8004F4FF700564EF9004B50
      F200454AE2001A0DA50000000000000000000000000000000000000000000000
      0000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFBF800FEF9F600FBF6
      F300FCF6F100FCF6F100FCF6F100FBF5F000FAF4EF00FCF3F000FBF2EF00FBF2
      EE00CBC9CF003F40C600867DFC008186FF008183F9008182FC008180FF007E7B
      FF006B68F9006361F6005653EF004B48EB005252FA004E4EF6004E4EF6005050
      F8005050F8005050F8005050F8004F4FF700564EF9004B50F200454AE2001A0D
      A500000000000000000000000000000000000000000000000000E6D6C500FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FFFBF800FEF9F600FBF6F300FCF6F100FCF6
      F100FCF6F100FBF5F000FAF4EF00FCF3F000FBF2EF00FDBBB00053959300D6B1
      B500D4D3D500DBC4C900C6C5C700FFF0EB00EED9C400F2DED300F4E2D700F5E5
      D900FAEADE00CA642F00CE663100CF652F00D3663000C7672B00CA672D00CB64
      2D00CB612C00D25E2F00C6622B00D3582600B8401D0000000000000000000000
      0000DACFD100F9FEFD00F5F8F600FBF8F000F9F6EE00F8F5ED00F7F4EC00F8F1
      E800F8F1E800F6EFE600F4EDE400F7E9E300F5E7E100F3E5DF00F2E4DE00F4E8
      DC00000000000000000000000000FDBBB00053959300D6B1B500D4D3D500DBC4
      C900C6C5C700FFF0EB00EED9C400F2DED300F4E2D700F5E5D900FAEADE00CA64
      2F00CE663100CF652F00D3663000C7672B00CA672D00CB642D00CB612C00D25E
      2F00C6622B00D3582600B8401D00000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFD
      FA00FFFAF700FBF6F300FBF5F000FCF6F100FCF6F100FBF5F000FAF4EF00FBF2
      EF00FBF2EF00FBF2EE00C5D3CD004750C5009281FF008E96F4008993FF008390
      F8008491FB00878DF8009191FD009090FA009192FA009092F800938DFC008C86
      FD007572F7005C5AE900473FF7004B47FA004748F0004645F9004545F1004941
      FF00374BDE0021208E0000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFDFA00FFFAF700FBF6
      F300FBF5F000FCF6F100FCF6F100FBF5F000FAF4EF00FBF2EF00FBF2EF00FBF2
      EE00C5D3CD004750C5009281FF008E96F4008993FF008390F8008491FB00878D
      F8009191FD009090FA009192FA009092F800938DFC008C86FD007572F7005C5A
      E900473FF7004B47FA004748F0004645F9004545F1004941FF00374BDE002120
      8E00000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FFFDFA00FFFAF700FBF6F300FBF5F000FCF6
      F100FCF6F100FBF5F000FAF4EF00FBF2EF00FBF2EF00F0C4B700D4C9AB00ECF0
      E400F7FCE700E7FEFA00F8EEE700E3EEE600E8E2CF00EAE0CF00EBE3D200FBF4
      E300F9F2E100C45A2500C85E2900C85D2A00C65D2A00D55D2900D25C2800CF5C
      2900CA5B2900CF5D2100C65E1D00CF571B00C245130000000000000000000000
      0000E4D4C300FFFFFF00FBFCFA00FEF7F400FCF6F100FDF4F000FBF2EE00FBF2
      EF00FBF0EC00F9EFE800F7EDE600F5EEE500F9EBE50082807F00F0E4DE00EFE3
      DD00000000000000000000000000F0C4B700D4C9AB00ECF0E400F7FCE700E7FE
      FA00F8EEE700E3EEE600E8E2CF00EAE0CF00EBE3D200FBF4E300F9F2E100C45A
      2500C85E2900C85D2A00C65D2A00D55D2900D25C2800CF5C2900CA5B2900CF5D
      2100C65E1D00CF571B00C2451300000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFE
      FD00FDF9F800FCF5F200FEF5F200FFF6F200FFF5F100FDF5EE00FAF4ED00FBF2
      EE00FBF2EE00FAF1ED00D3D5D5005C5BCF00A698F600999FEA00939EF000979F
      F900969DF400969FEF009C9BFB009D9CFC009D9DFB009D9DFB009FA0F8009D9E
      F900989DFA00959CFD009FA7F4009196EB009F9FFF009293F5008484F600736D
      EA006B76E6003012AB0000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FDF9F800FCF5
      F200FEF5F200FFF6F200FFF5F100FDF5EE00FAF4ED00FBF2EE00FBF2EE00FAF1
      ED00D3D5D5005C5BCF00A698F600999FEA00939EF000979FF900969DF400969F
      EF009C9BFB009D9CFC009D9DFB009D9DFB009FA0F8009D9EF900989DFA00959C
      FD009FA7F4009196EB009F9FFF009293F5008484F600736DEA006B76E6003012
      AB00000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FDF9F800FCF5F200FEF5F200FFF6
      F200FFF5F100FDF5EE00FAF4ED00FBF2EE00FBF2EE00EAC59F00FFDADA00F2FF
      FE00FCF1FF00F8EFE600F7EEE500FEEAE500F1D4C500F7E5C800EBDBBE00E9DB
      BE00ECDEC100D05B1800D3612200CC5E2200C45B2200BF623500CB734500DB8A
      5D00E59A6E00F2A27900EA9B7400E18D6900D877530000000000000000000000
      0000E5D5C400FFFFFF00FFFFFE00FEF7F400FDF7F200FDF4F000FCF3EF00FBF2
      EF00FBF0EC00FAF0E900F7EDE600F6EFE600F9EBE5007E7C7B00EEE2DC00EFE3
      DD00000000000000000000000000EAC59F00FFDADA00F2FFFE00FCF1FF00F8EF
      E600F7EEE500FEEAE500F1D4C500F7E5C800EBDBBE00E9DBBE00ECDEC100D05B
      1800D3612200CC5E2200C45B2200BF623500CB734500DB8A5D00E59A6E00F2A2
      7900EA9B7400E18D6900D8775300000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFE
      FD00FFFBFA00FCF7F600FEF5F200FDF4F000FCF3EF00FBF3EC00FBF3EC00FAF1
      ED00FAF1ED00FAF0E900FAF0E9004A5EB300A6A9F300909BEF009DA5E800A4A0
      F200A2A2E8009DA4F400B1B2FC00ACACF800ACACFA00AEADFD00ADAAFF00ACAC
      FF00ADAEFF00AEAFFF00ACC0EF009CADE0009D9CFC00A0A2F60094A0EE009CA5
      E50094AAE40032229F0000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FFFBFA00FCF7
      F600FEF5F200FDF4F000FCF3EF00FBF3EC00FBF3EC00FAF1ED00FAF1ED00FAF0
      E900EDF9F3004A5EB3009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5
      E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5
      E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5009CA5E5003222
      9F00000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FFFBFA00FCF7F600FEF5F200FDF4
      F000FCF3EF00FBF3EC00FBF3EC00FAF1ED00FAF1ED00F0D1BA00E9D1B300D7DC
      DA00F9EFE800F7EEE500F6EDE400F7F5ED00EBE3D200F1E1D500E9D9CD00FFF3
      E700FFF5E900B4552900D67E5500E99E7800E5A28300E4AB8B00E4AB8C00E3AA
      8B00E1A78A00DCA68700E1A28D00DBA48F00F9AA8F0000000000000000000000
      0000E6D6C500FFFFFF00FEFFFD00FCF7F400FDF7F200FDF7F200FAF4EF00FBF2
      EF00FCF1ED00FAF0E900F7EDE600EFE8DF00F7E9E300FFFEFD00F0E4DE00EFE3
      DD00ABA9A900ACAAAA00ACAAAA00F0D1BA00E9D1B300D7DCDA00F9EFE800F7EE
      E500F6EDE400F7F5ED00EBE3D200F1E1D500E9D9CD00FFF3E700FFF5E900B455
      2900D67E5500E99E7800E5A28300E4AB8B00E4AB8C00E3AA8B00E1A78A00DCA6
      8700E1A28D00DBA48F00F9AA8F00000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FE00FFFDFC00FEF9F800FCF5F200FDF4F100FDF4F000FCF3EF00FAF2EB00FAF1
      ED00FAF1ED00FAF0E900FAF0E900FAF0E900FAF0E900FAF0E900FAF0E900FAF0
      E900F7EDE6009A9BC700CCCFFF00BABBF700BAB9FB00BEBCFF00B7B9F900BABA
      FA00BCBBFD00BDBAFF00ACB0EB00B8C7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFFFE00FFFDFC00FEF9
      F800FCF5F200FDF4F100FDF4F000FCF3EF00FAF2EB00FAF1ED00FAF1ED00F9F0
      EC00FAF0E900FAF0E900F8EEE700F7EEE500F6EDE400F5E7E100F7EDE600F3E7
      E100FBEBE500F1E6E200FFFEF900FFFFFB00ECE0DC00F1E5DB00F1E3DD00B9A0
      8C00C1BDC200E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFE00FFFDFC00FEF9F800FCF5F200FDF4
      F100FDF4F000FCF3EF00FAF2EB00FAF1ED00FAF1ED00C266550043718200DF71
      3D00E7802300E87A1400E87A1400E97B1500E97B1500E2781B00DF751800E278
      1B00DE741700E6B39900E6B39900E6B39900E6B39900E4B39900E5B49A00E5B4
      9A00E6B59B00DEB69900EEB3A000EAAF9C00E8BFA60000000000000000000000
      0000E5D5C400FFFFFF00FEFFFD00FFFAF700FBF5F000FCF6F100FAF4EF00FBF2
      EF00FCF1ED00FAF0E900F8EEE700F4EDE400F8EAE4007D7B7A00EEE2DC00EFE3
      DD00FDF1ED00FCF0EC00FAEEEA00C266550043718200DF713D00E7802300E87A
      1400E87A1400E97B1500E97B1500E2781B00DF751800E2781B00DE741700E6B3
      9900E6B39900E6B39900E6B39900E4B39900E5B49A00E5B49A00E6B59B00DEB6
      9900EEB3A000EAAF9C00E8BFA600000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FFFEFD00FDF9F800FBF6F300FCF5F200FFF6F200FDF4F000FBF3EC00FAF1
      ED00F9F0EC00FAEFEB00FAF0E900F9EFE800F8EEE700F7EEE500F6EDE400F7E9
      E300F6ECE5009AA2BF00DCDEFF00CCC6FF00CAC9FB00C7C8FB00CBC8FF00CBC8
      FF00CAC7FE00CAC7FE00B6B4F000DAD8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFEFD00FDF9
      F800FBF6F300FCF5F200FFF6F200FDF4F000FBF3EC00FAF1ED00F9F0EC00FAEF
      EB00FAF0E900F9EFE800F8EEE700F7EEE500F6EDE400F7E9E300F6ECE500F1E5
      DF00FAEAE400C7BDB600807D7800FFFBF600F0E4E000F1E5DB00F0E2DC00B9A0
      8C00C1BDC200E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFEFD00FDF9F800FBF6F300FCF5
      F200FFF6F200FDF4F000FBF3EC00FAF1ED00F9F0EC00BC6A3A006D767300BE5F
      2E00B84A0E00C85C0A00C95D0B00C95D0B00CA5E0C00D05D0600CE5B0400D15E
      0700CD5A0300EABBA500EABBA500EABBA500EABBA500E9BDA600E9BDA600EABE
      A700EABEA700E5C0A400F3BDAC00F2BAA900EFCBB30000000000000000000000
      0000E5D5C400FFFFFF00FFFFFE00FFFBFA00FEF5F200FCF3EF00FBF3EC00FAF1
      ED00F9F1EA00F9EFE800F6EDE400F2E8E100F6E7E400C1BEB900EFE3DF00F0E2
      DC00F8F1E800F8F1E800F6EFE600BC6A3A006D767300BE5F2E00B84A0E00C85C
      0A00C95D0B00C95D0B00CA5E0C00D05D0600CE5B0400D15E0700CD5A0300EABB
      A500EABBA500EABBA500EABBA500E9BDA600E9BDA600EABEA700EABEA700E5C0
      A400F3BDAC00F2BAA900EFCBB300000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FFFFFF00FEFCFB00FBF7F600FAF5F200FBF5F000FDF4F000FDF2EE00FBF0
      EC00FBF0EC00FAEFEB00F9EFE800F8EEE700F7EDE600F7ECE400F6EBE300F4E6
      E000F4EAE3009AA2BF00E1E5FF00D1CEFF00CFD0FC00CCCFFB00D0D0FE00D0D0
      FE00D0D0FE00CFCFFD00B6B4F000DAD8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFFFF00FEFC
      FB00FBF7F600FAF5F200FBF5F000FDF4F000FDF2EE00FBF0EC00FBF0EC00FAEF
      EB00F9EFE800F8EEE700F7EDE600F7ECE400F6EBE300F4E6E000F4EAE300F4E8
      E200F5E5DF00C9BDB7007E7C7400FFFFFA00ECE0DC00F0E4DA00F0E2DC00B9A0
      8C00C1BDC200E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFFFF00FEFCFB00FBF7F600FAF5
      F200FBF5F000FDF4F000FDF2EE00FBF0EC00FBF0EC00B3240000E2B0B000F0C5
      AA00E4C2B200EAC5AF00EAC5AF00EAC5AF00EBC6B000E8C7B700E7C6B600E8C7
      B700E7C6B600ECC6B400ECC6B400ECC6B400ECC6B400EDC7B500EDC7B500EEC8
      B600EEC8B600E5CAB000F1C4B600F2C3B500F3D6C10000000000000000000000
      0000E5D5C400FFFFFF00FFFFFE00FFFEFD00FBF6F300FFF6F200FBF3EC00F9F0
      EC00FAF0E900F8EEE700F6EDE400F6ECE500FAEAE400807D7800F0E4E000F0E2
      DC00FBF2EF00FBF0EC00F9EFE800B3240000E2B0B000F0C5AA00E4C2B200EAC5
      AF00EAC5AF00EAC5AF00EBC6B000E8C7B700E7C6B600E8C7B700E7C6B600ECC6
      B400ECC6B400ECC6B400ECC6B400EDC7B500EDC7B500EEC8B600EEC8B600E5CA
      B000F1C4B600F2C3B500F3D6C100000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFD
      FD00FFFFFF00FFFFFE00FDFBFA00F9F6F200F8F1EE00FAF1ED00FDF2EE00FBF0
      EC00FAEFEB00F9EEEA00F8EEE700F8EEE700F8ECE600F6EBE300F6EBE300F7EA
      E200EDE3DC009AA2BF00E2E8FF00D2D0FE00D0D2FA00CDD2F900D1D3FC00D1D3
      FC00D1D3FC00D0D2FB00B6B4F000DAD8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFF
      FE00FDFBFA00F9F6F200F8F1EE00FAF1ED00FDF2EE00FBF0EC00FAEFEB00F9EE
      EA00F8EEE700F8EEE700F8ECE600F6EBE300F6EBE300F7EAE200EDE3DC00F5E9
      E300F4E4DE00C8BCB6007C7A7200FFFFF900F0E2DC00EFE3D900EFE1DB00B89F
      8B00C0BCC100E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFFFE00FDFBFA00F9F6
      F200F8F1EE00FAF1ED00FDF2EE00FBF0EC00FAEFEB00B5281900E1C7C700ECD4
      C200F0CBCD00EBCDBC00EBCDBC00EBCDBC00ECCEBD00F3CEC000F3CEC000F3CE
      C000F4CFC100EFD0C100EFD0C100EFD0C100EFD0C100F0D1C200F0D1C200F1D2
      C300F1D2C300E9D4BE00F4CFC100F6CEC200F9E4CF0000000000000000000000
      0000E5D5C400FFFFFF00FFFFFE00FFFFFF00FDFBFA00F8F1EE00FDF2EE00FAEF
      EB00F8EEE700F8ECE600F6EBE300EDE3DC00F4E4DE007C7A7200F0E2DC00EFE1
      DB00FBF2EF00FBF0EC00FAF0E900B5281900E1C7C700ECD4C200F0CBCD00EBCD
      BC00EBCDBC00EBCDBC00ECCEBD00F3CEC000F3CEC000F3CEC000F4CFC100EFD0
      C100EFD0C100EFD0C100EFD0C100F0D1C200F0D1C200F1D2C300F1D2C300E9D4
      BE00F4CFC100F6CEC200F9E4CF00000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFD
      FD00FFFFFF00FFFFFE00FEFFFD00FDFAF600FAF3F000FAF1ED00FDF1ED00FAEF
      EB00F9EEEA00F8EDE900F7EDE600F7EBE500F6EAE400F5EAE200F5EAE200F5E8
      E000F4EBE2009AA2BF00E0E4FF00D0CDFF00CECFFB00CBCEFA00D0D0FE00D0D0
      FE00D0D0FE00CFCFFD00B6B4F000DAD8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFF
      FE00FEFFFD00FDFAF600FAF3F000FAF1ED00FDF1ED00FAEFEB00F9EEEA00F8ED
      E900F7EDE600F7EBE500F6EAE400F5EAE200F5EAE200F5E8E000F4EBE200EADE
      D800F7E7E100CCC0BA00BCBAB200E5E2DA00EEE0DA00EEE2D800EEE0DA00B79E
      8A00C0BCC100E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFFFE00FEFFFD00FDFA
      F600FAF3F000FAF1ED00FDF1ED00FAEFEB00F9EEEA00A9330A00EAD5D400F1D4
      CD00D9D7CD00F1D7CB00F1D7CB00F1D7CB00F1D7CB00F4D9CF00F4D9CF00F4D9
      CF00F4D9CF00F2D9CF00F2D9CF00F2D9CF00F2D9CF00F3D9D200F3D9D200F3D9
      D200F3D9D200FBDEC900EDDDD700F8D1D300FBEFDD0000000000000000000000
      0000E5D5C400FFFFFF00FFFFFE00FEFEFE00FFFFFE00FEF9F600FCF0EC00F8ED
      E900F6ECE500F6EAE400F4E9E100EFE4DC00F1E1DB00FDFBF300EEE0DA00EDDF
      D900FBF2EF00FCF1ED00FAF0E900A9330A00EAD5D400F1D4CD00D9D7CD00F1D7
      CB00F1D7CB00F1D7CB00F1D7CB00F4D9CF00F4D9CF00F4D9CF00F4D9CF00F2D9
      CF00F2D9CF00F2D9CF00F2D9CF00F3D9D200F3D9D200F3D9D200F3D9D200FBDE
      C900EDDDD700F8D1D300FBEFDD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FEFEFE00FCFEFE00FFFFFE00FFFFFB00FEF9F600FEF3EF00FCF0EC00F9EE
      EA00F8EDE900F7ECE800F6ECE500F6EAE400F6EAE400F5EAE200F4E9E100F5E8
      E000EFE4DC00999FC800E1E3FF00CECDF700D0CCFF00D3D0FF00D0CEFC00D0CE
      FC00D0CEFC00D0CEFC00AFB1F800CED8CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FEFEFE00FCFE
      FE00FFFFFE00FFFFFB00FEF9F600FEF3EF00FCF0EC00F9EEEA00F8EDE900F7EC
      E800F6ECE500F6EAE400F6EAE400F5EAE200F4E9E100F5E8E000EFE4DC00F5EA
      E200F1E1DB00EEE2DC00FDFBF300FEFBF300EEE0DA00EDE1D700EDDFD900B79E
      8A00C0BCC100E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FEFEFE00FCFEFE00FFFFFE00FFFF
      FB00FEF9F600FEF3EF00FCF0EC00F9EEEA00F8EDE900BA270000EEE0D400F6DB
      C600F4E6D400F8E2D000F8E2D000F8E2D000F8E2D000F8E1D100F8E1D100F8E1
      D100F8E1D100F6E2D100F6E2D100F6E2D100F6E2D100F7E2D300F7E2D300F7E2
      D300F7E2D300FCE3D900FFDEE000FCE3E100DDDDDD0000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFFFF00FEFFFD00FFFDFC00FFFBFA00FCF6
      F100F4ECE500F0E5DD00F3E6DE00EEE4DA00F1DFD800908A8300EBDBD500E9DC
      D400FBF2EF00FCF1ED00FAF0E900BA270000EEE0D400F6DBC600F4E6D400F8E2
      D000F8E2D000F8E2D000F8E2D000F8E1D100F8E1D100F8E1D100F8E1D100F6E2
      D100F6E2D100F6E2D100F6E2D100F7E2D300F7E2D300F7E2D300F7E2D300FCE3
      D900FFDEE000FCE3E10000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FDFF
      FF00FEFEFE00FEFFFD00FFFFFE00FFFFFE00FFFDFC00FDF9F800FAF6F500FBEF
      EB00F7EBE500F5E9E300F4EAE300F6EDE400F4EBE200F1E8DF00EFE6DD00F5E6
      DD00EFE5DB00AAA9DB00DDE3FF00CACDFF00C9CAFF00CDCEFF00CBCEFF00CBCE
      FF00CBCEFF00CBCEFF00ADB1FF00D1E1E0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FDFFFF00FEFEFE00FEFF
      FD00FFFFFE00FFFFFE00FFFDFC00FDF9F800FAF6F500FBEFEB00F7EBE500F5E9
      E300F4EAE300F6EDE400F4EBE200F1E8DF00EFE6DD00F5E6DD00EFE5DB00F0E4
      DA00F5E3DC00CEC2BC0096938B00FCF6F100EEDFDC00EFDFD300EBDED600B19C
      8600BCBEBF00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FDFFFF00FEFEFE00FEFFFD00FFFFFE00FFFF
      FE00FFFDFC00FDF9F800FAF6F500FBEFEB00F7EBE500A01F0600F7E8E500F2E5
      CF00F9E7DC00F6E6DA00F6E6DA00F6E6DA00F6E6DA00F8E7DE00F8E7DE00F8E7
      DE00F8E7DE00F6E7DE00F6E7DE00F6E7DE00F6E7DE00F7E8DF00F7E8DF00F7E8
      DF00F7E8DF00F7E6EA00FFE1ED00F1E5E500DDDDDD0000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FEFEFE00FFFFFF00FFFFFE00FFFFFE00FFFC
      F800FDF7F200F8ECE600EEE0DA00E7DDD300F0DDD600F5EEE500E8D5CE00E5D5
      CE00FAF1ED00F9F1EA00F9EFE800A01F0600F7E8E500F2E5CF00F9E7DC00F6E6
      DA00F6E6DA00F6E6DA00F6E6DA00F8E7DE00F8E7DE00F8E7DE00F8E7DE00F6E7
      DE00F6E7DE00F6E7DE00F6E7DE00F7E8DF00F7E8DF00F7E8DF00F7E8DF00F7E6
      EA00FFE1ED00F1E5E50000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FCFE
      FE00FDFDFD00FEFFFD00FFFEFD00FFFFFE00FFFEFD00FFFBFA00FDF9F800FFF6
      F200FCF1ED00F7EDE600F4EAE300F2E8E100F1E6DE00F0E5DD00F0E5DD00F3E4
      DB00EEE4DA00C4C0E400262AA7002022A6002222AA002224A6002022A6002022
      A6002022A6002022A6002E258D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FCFEFE00FDFDFD00FEFF
      FD00FFFEFD00FFFFFE00FFFEFD00FFFBFA00FDF9F800FFF6F200FCF1ED00F7ED
      E600F4EAE300F2E8E100F1E6DE00F0E5DD00F0E5DD00F3E4DB00EEE4DA00F0E4
      DA00F4E2DB00CABFB700908D8500FFFBF400ECDBD800EEDED200EADDD500B29B
      8500BCBEBF00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FCFEFE00FDFDFD00FEFFFD00FFFEFD00FFFF
      FE00FFFEFD00FFFBFA00FDF9F800FFF6F200FCF1ED00CE1D0000B4190A00A832
      0800B0250B00B92B0C00B92B0C00B92B0C00B92B0C00B8290D00B8290D00B829
      0D00B8290D00B62A0D00B62A0D00B62A0D00B62A0D00B62A0B00B62A0B00B62A
      0B00B62A0B00C2361900B9220700AE230800B42F1B0000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFEFF00FFFFFF00FEFEFE00FEFEFE00FFFE
      FA00FDF8F500FEF5F100F8EEE700E7DCD400ECD9D100ADA49A00E9D4CC00E1CF
      C800F9F0EC00FAF0E900F8EEE700CE1D0000B4190A00A8320800B0250B00B92B
      0C00B92B0C00B92B0C00B92B0C00B8290D00B8290D00B8290D00B8290D00B62A
      0D00B62A0D00B62A0D00B62A0D00B62A0B00B62A0B00B62A0B00B62A0B00C236
      1900B9220700AE230800B42F1B00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FEFEFE00FEFFFD00FFFEFD00FFFDFC00FFFCFB00FFFBFA00FFFA
      F500FCF6F100F9F0EC00F4ECE500F2E8E100F0E5DD00F2E5DD00F3E6DE00F0E1
      D800EEE4DA00EEE2D800F1DFD800D1C4BC00908A8300FAF0E900EBDBD500EEDC
      D100E9DCD400B29B8500BDBFC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FEFE
      FE00FEFFFD00FFFEFD00FFFDFC00FFFCFB00FFFBFA00FFFAF500FCF6F100F9F0
      EC00F4ECE500F2E8E100F0E5DD00F2E5DD00F3E6DE00F0E1D800EEE4DA00EEE2
      D800F1DFD800D1C4BC00908A8300FEF8F100EBDBD500EEDCD100E9DCD400B29B
      8500BDBFC000DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FEFEFE00FEFFFD00FFFE
      FD00FFFDFC00FFFCFB00FFFBFA00FFFAF500FCF6F100F9F0EC00F4ECE500F2E8
      E100F0E5DD00F2E5DD00F3E6DE00F0E1D800EEE4DA00EEE2D800F1DFD800D1C4
      BC00908A8300FEF8F100EBDBD500EEDCD100E9DCD400B29B8500BDBFC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFC
      FB00FDF8F500FCF3EF00F8EDE900F4EEE100EAD7C800CDC0B000E4CDBE00E6CB
      BD00FAEFEB00F8EEE700F8ECE600F6EBE300EDE3DC00F4E4DE007C7A7200F0E2
      DC00EFE1DB00FBF2EF00FCF1ED00FAF0E900F7EDE600EFE8DF00F7E9E300FFF4
      F200F0E4DE00EFE3DD00FDF1ED00FCF0EC00FAEEEA00F8ECE800F7EAE200F6E9
      E100F4E7DF00F3E6DE00FCE0D900000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFDFC00FFFDFC00FEFCFB00FDFA
      F500FBF8F300F9F5F000F9F0EC00F6ECE500F3E7E100F1E3DD00F0E3DB00F2E3
      DA00EBE1D700EBDFD500F1DFD800CBBEB600C3BEB500E3DCD300EBD8D300ECDA
      CF00E8D8D100B0998300BFBEC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFEFD00FFFDFC00FFFDFC00FEFCFB00FDFAF500FBF8F300F9F5
      F000F9F0EC00F6ECE500F3E7E100F1E3DD00F0E3DB00F2E3DA00EBE1D700EBDF
      D500F1DFD800CBBEB600C3BEB500E3DCD300EBD8D300ECDACF00E8D8D100B099
      8300BFBEC000E2E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FD00FFFDFC00FFFDFC00FEFCFB00FDFAF500FBF8F300F9F5F000F9F0EC00F6EC
      E500F3E7E100F1E3DD00F0E3DB00F2E3DA00EBE1D700EBDFD500F1DFD800CBBE
      B600C3BEB500E3DCD300EBD8D300ECDACF00E8D8D100B0998300BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FFFB
      FA00FCF7F400FAF1ED00F6EBE700F2E9DC00F1DFD400C0AFA200E4CABC00DCBD
      AE00F8EDE900F6ECE500F6EAE400F4E9E100EFE4DC00F1E1DB00FBF5F000EEE0
      DA00EDDFD900FBF2EF00FCF1ED00FAF0E900F8EEE700F4EDE400F8EAE4007D7B
      7A00EEE2DC00EFE3DD00F8F1E800F8F1E800F6EFE600F4EDE400F7E9E300F5E7
      E100F3E5DF00F2E4DE00F4E8DC00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFE
      FA00FFFCF800FEFAF500FDF7F200FBF2EE00F8ECE600F3E5DF00EEE0DA00EFE0
      D700E7DDD300E6DAD000F0DDD600E8D8D100F5EEE500F5ECE300E8D5CE00EBD7
      CC00E5D5CE00B0988200BFBEC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFEFA00FFFCF800FEFA
      F500FDF7F200FBF2EE00F8ECE600F3E5DF00EEE0DA00EFE0D700E7DDD300E6DA
      D000F0DDD600E8D8D100F5EEE500F5ECE300E8D5CE00EBD7CC00E5D5CE00B098
      8200BFBEC000E2E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFFFFE00FFFFFE00FFFEFA00FFFCF800FEFAF500FDF7F200FBF2
      EE00F8ECE600F3E5DF00EEE0DA00EFE0D700E7DDD300E6DAD000F0DDD600E8D8
      D100F5EEE500F5ECE300E8D5CE00EBD7CC00E5D5CE00B0988200BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FFFC
      F800FDF7F200FBF0EC00F5E9E300C9B5A400CBB4A400CCB09F00D6B5A100C9B1
      A500FCF6F100F4ECE500F0E5DD00F3E6DE00EEE4DA00F1DFD800908A8300EBDB
      D500E9DCD400FAF1ED00F9F1EA00F9EFE800F6EDE400F2E8E100F6E7E400C1BE
      B900EFE3DF00F0E2DC00FBF2EF00FBF0EC00F9EFE800F7EDE600F5EEE500F9EB
      E50082807F00F0E4DE00EFE3DD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFF
      FB00FFFEFA00FFFCF800FEFAF500FFF6F200FDF2EE00F8ECE600F2E6E000EEDF
      D600ECE2D800ECE0D600E4D1C900D8C9C000B1ABA000F6ECE200E6D3CB00E8D4
      C900E4D2CB00AE968000BFBEC000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFFFB00FFFEFA00FFFC
      F800FEFAF500FFF6F200FDF2EE00F8ECE600F2E6E000EEDFD600ECE2D800ECE0
      D600E4D1C900D8C9C000B1ABA000F6ECE200E6D3CB00E8D4C900E4D2CB00AE96
      8000BFBEC000E1DFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFFFE00FFFFFB00FFFEFA00FFFCF800FEFAF500FFF6
      F200FDF2EE00F8ECE600F2E6E000EEDFD600ECE2D800ECE0D600E4D1C900D8C9
      C000B1ABA000F6ECE200E6D3CB00E8D4C900E4D2CB00AE968000BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FFFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFB
      F700FBF5F000F8EEE700F2E6E000FFFFF800F3F7F200F4ECE500E6DDCF00F7F1
      EC00FFFFFF00FDF7F200F8ECE600EEE0DA00E7DDD300F0DDD600F5EEE500E8D5
      CE00E5D5CE00F9F0EC00FAF0E900F8EEE700F6EDE400F6ECE500FAEAE400807D
      7800F0E4E000F0E2DC00FBF2EF00FBF0EC00FAF0E900F7EDE600F6EFE600F9EB
      E5007E7C7B00EEE2DC00EFE3DD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFE
      FF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFD
      FC00FFFEFA00FFFCF800FDF8F500FEF8F300FEF5F100FCF1ED00F8EEE700F3E3
      DC00E7DCD400E8D9D000ECD9D100D5C4BB00ADA49A00F1E7DD00E9D4CC00E8D2
      C700E1CFC800AC947E00BEBDBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FFFEFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFDFC00FFFEFA00FFFC
      F800FDF8F500FEF8F300FEF5F100FCF1ED00F8EEE700F3E3DC00E7DCD400E8D9
      D000ECD9D100D5C4BB00ADA49A00F1E7DD00E9D4CC00E8D2C700E1CFC800AC94
      7E00BEBDBF00E1DFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FFFEFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFDFC00FFFEFA00FFFCF800FDF8F500FEF8
      F300FEF5F100FCF1ED00F8EEE700F3E3DC00E7DCD400E8D9D000ECD9D100D5C4
      BB00ADA49A00F1E7DD00E9D4CC00E8D2C700E1CFC800AC947E00BEBDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0CEC700FAFCF600FFFEFF00FDFFFF00FCFEFF00FBFDFD00FCFDFB00FFF8
      F500FBF2EE00F7EDE600F0E4DE00FFFAF300E9EBDF00E8D6CB00EBEFE900FCFC
      FC00FFFFFF00FFFFFF00FEF5F100F8EEE700E7DCD400ECD9D100ADA49A00E9D4
      CC00E1CFC800FAEFEB00F8EEE700F8ECE600F6EBE300EDE3DC00F4E4DE007C7A
      7200F0E2DC00EFE1DB00FBF2EF00FCF1ED00FAF0E900F7EDE600EFE8DF00F7E9
      E300FFFEFD00F0E4DE00EFE3DD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFE
      FF00FEFDFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FDFFFF00FDFFFF00FFFD
      FC00FFFDFC00FFFCF800FDF8F500FDF7F200FBF5F000FAF1ED00F6EDE900FAEA
      E300F1E6DE00E6D7CE00E8D5CD00D0BFB600B2A99F00F2E8DE00E3CEC600E6D0
      C500DFCDC600AD927D00C0BDBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FEFDFF00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FDFFFF00FDFFFF00FFFDFC00FFFDFC00FFFC
      F800FDF8F500FDF7F200FBF5F000FAF1ED00F6EDE900FAEAE300F1E6DE00E6D7
      CE00E8D5CD00D0BFB600B2A99F00F2E8DE00E3CEC600E6D0C500DFCDC600AD92
      7D00C0BDBF00E1DFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FEFDFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FDFFFF00FDFFFF00FFFDFC00FFFDFC00FFFCF800FDF8F500FDF7
      F200FBF5F000FAF1ED00F6EDE900FAEAE300F1E6DE00E6D7CE00E8D5CD00D0BF
      B600B2A99F00F2E8DE00E3CEC600E6D0C500DFCDC600AD927D00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D2CB00FFFFF900FCFCFC00FFFDFF00FFFEFE00FFFDFC00FEFAF900FFF5
      F500FBEFED00F8E9E600F1E0DD00FBF2E500E1D6CE00F7F1EA00F5FEFF00FFFF
      FF00FFFFFF00FFFFFF00FCF3EF00F8EDE900F4EEE100EAD7C800CDC0B000E4CD
      BE00E6CBBD00F8EDE900F6ECE500F6EAE400F4E9E100EFE4DC00F1E1DB00FBF5
      F000EEE0DA00EDDFD900FBF2EF00FCF1ED00FAF0E900F8EEE700F4EDE400F8EA
      E4007D7B7A00EEE2DC00EFE3DD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FEFCFB00FEFBF700FDF8F500FDF6F300FCF3EF00FAEFEB00F8EDE900F2E9
      DC00F4EEE100ECE1D300EAD7C800D5C0B100CDC0B000E0D1C100E4CDBE00D7CE
      C000E6CBBD00A58D8100C2C3BA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFB
      F700FDF8F500FDF6F300FCF3EF00FAEFEB00F8EDE900F2E9DC00F4EEE100ECE1
      D300EAD7C800D5C0B100CDC0B000E0D1C100E4CDBE00D7CEC000E6CBBD00A58D
      8100C2C3BA00D4DEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFBF700FDF8F500FDF6
      F300FCF3EF00FAEFEB00F8EDE900F2E9DC00F4EEE100ECE1D300EAD7C800D5C0
      B100CDC0B000E0D1C100E4CDBE00D7CEC000E6CBBD00A58D8100C2C3BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDD0C800F7FFF500F7FCFA00FFFBFF00FFFCFF00FFFDFF00FFFAFC00FFF4
      F200F9EDE900F4E4DE00EEDAD500F3E3D700F1F2EE00ECFAF600FFFAFF00FFFF
      FF00FFFFFF00FFFFFF00FAF1ED00F6EBE700F2E9DC00F1DFD400C0AFA200E4CA
      BC00DCBDAE00FCF6F100F4ECE500F0E5DD00F3E6DE00EEE4DA00F1DFD800908A
      8300EBDBD500E9DCD400FAF1ED00F9F1EA00F9EFE800F6EDE400F2E8E100F6E7
      E400C1BEB900EFE3DF00F0E2DC00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FEFCFB00FEFBF700FDF8F500FCF5F200FBF2EE00FAEFEB00F7ECE800F4E7
      E500EAE1DE00F1E5E100E6D2CD00E4CEC900E9D9D300ECD9D400DFC6C200D7C8
      B800E5C8BA00A28A7E00C8C6BE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFB
      F700FDF8F500FCF5F200FBF2EE00FAEFEB00F7ECE800F4E7E500EAE1DE00F1E5
      E100E6D2CD00E4CEC900E9D9D300ECD9D400DFC6C200D7C8B800E5C8BA00A28A
      7E00C8C6BE00D6DEDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFBF700FDF8F500FCF5
      F200FBF2EE00FAEFEB00F7ECE800F4E7E500EAE1DE00F1E5E100E6D2CD00E4CE
      C900E9D9D300ECD9D400DFC6C200D7C8B800E5C8BA00A28A7E00C8C6BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1D1CC00DECEC700DECAC900DFCCBD00DECCBB00DCCAB900DCC8B600DAC1
      B100D4BCAA00CCB4A000C7AF9B00FFF9F400F8FFFF00F7FEFB00FEFEFE00FFFF
      FF00FFFFFF00FDF7F200FBF0EC00F5E9E300C9B5A400CBB4A400CCB09F00D6B5
      A100C9B1A500FFFFFF00FDF7F200F8ECE600EEE0DA00E7DDD300F0DDD600F5EE
      E500E8D5CE00E5D5CE00F9F0EC00FAF0E900F8EEE700F6EDE400F6ECE500FAEA
      E400807D7800F0E4E000F0E2DC00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FFFBFA00FDFAF600FCF7F400FCF6F100FAF1ED00F9EEEA00F6EBE700F7E6
      DD00F2E9DC00F1E8DB00F1DFD400DFC9BD00C0AFA200E9D8CB00E4CABC00DECA
      B900DCBDAE00A0887C00D2CFC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFBFA00FDFA
      F600FCF7F400FCF6F100FAF1ED00F9EEEA00F6EBE700F7E6DD00F2E9DC00F1E8
      DB00F1DFD400DFC9BD00C0AFA200E9D8CB00E4CABC00DECAB900DCBDAE00A088
      7C00D2CFC7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFBFA00FDFAF600FCF7F400FCF6
      F100FAF1ED00F9EEEA00F6EBE700F7E6DD00F2E9DC00F1E8DB00F1DFD400DFC9
      BD00C0AFA200E9D8CB00E4CABC00DECAB900DCBDAE00A0887C00D2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5D5C400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBF5F000F8EEE700F2E6E000FFFFFF00F3F7F200F4ECE500E6DD
      CF00F7F1EC00FFFFFF00FFFFFF00FEF5F100F8EEE700E7DCD400ECD9D100ADA4
      9A00E9D4CC00E1CFC800FAEFEB00F8EEE700F8ECE600F6EBE300EDE3DC00F4E4
      DE007C7A7200F0E2DC00EFE1DB00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FFFCF800FEF9F600FEF7F400FDF4F000FAF1ED00F8EDE900F6EAE400F8E9
      E000E5E0D700E3E1D700E9DED600DACBC200C2B6AC00E1D5C900D6C3B600D8BE
      AD00E4C7B90098827700E1DBD400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFCF800FEF9
      F600FEF7F400FDF4F000FAF1ED00F8EDE900F6EAE400F8E9E000E5E0D700E3E1
      D700E9DED600DACBC200C2B6AC00E1D5C900D6C3B600D8BEAD00E4C7B9009882
      7700E1DBD4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFCF800FEF9F600FEF7F400FDF4
      F000FAF1ED00F8EDE900F6EAE400F8E9E000E5E0D700E3E1D700E9DED600DACB
      C200C2B6AC00E1D5C900D6C3B600D8BEAD00E4C7B90098827700E1DBD4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0CEC700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBF2EE00F7EDE600F0E4DE00FFFFFF00E9EBDF00E8D6CB00EBEF
      E900FFFFFF00FFFFFF00FFFFFF00FCF3EF00F8EDE900F4EEE100EAD7C800CDC0
      B000E4CDBE00E6CBBD00F8EDE900F6ECE500F6EAE400F4E9E100EFE4DC00F1E1
      DB00FDFBF300EEE0DA00EDDFD900000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFE
      FA00FFFCF800FEF9F600FDF7F200FCF3EF00FBF0EC00F7EDE600F5E9E300E5C3
      B300C9B5A400C0B09F00CBB4A400CFB2A300CCB09F00CEB39F00D6B5A100CEB5
      A500C9B1A500C2B0A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFEFA00FFFCF800FEF9
      F600FDF7F200FCF3EF00FBF0EC00F7EDE600F5E9E300E5C3B300C9B5A400C0B0
      9F00CBB4A400CFB2A300CCB09F00CEB39F00D6B5A100CEB5A500C9B1A500C2B0
      A900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFEFA00FFFCF800FEF9F600FDF7F200FCF3
      EF00FBF0EC00F7EDE600F5E9E300E5C3B300C9B5A400C0B09F00CBB4A400CFB2
      A300CCB09F00CEB39F00D6B5A100CEB5A500C9B1A500C2B0A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E5D2CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FBEFED00F8E9E600F1E0DD00FBF2E500E1D6CE00F7F1EA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAF1ED00F6EBE700F2E9DC00F1DFD400C0AF
      A200E4CABC00DCBDAE00FCF6F100F4ECE500F0E5DD00F3E6DE00EEE4DA00F1DF
      D800908A8300EBDBD500E9DCD400000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      F900FFFCF800FDF8F500FCF6F100FBF2EE00F9EFE800F6EAE400F4E8E200D2BE
      BD00FFFDFA00FAFFFD00FFFDFD00FFF6F600FFF3F100F3E8E400F0E0D900F2DC
      D000D6C5BC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFDF900FFFCF800FDF8
      F500FCF6F100FBF2EE00F9EFE800F6EAE400F4E8E200D2BEBD00FFFDFA00FAFF
      FD00FFFDFD00FFF6F600FFF3F100F3E8E400F0E0D900F2DCD000D6C5BC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDF900FFFCF800FDF8F500FCF6F100FBF2
      EE00F9EFE800F6EAE400F4E8E200D2BEBD00FFFDFA00FAFFFD00FFFDFD00FFF6
      F600FFF3F100F3E8E400F0E0D900F2DCD000D6C5BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDD0C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF4F200F9EDE900F4E4DE00EEDAD500F3E3D700F1F2EE00ECFAF600FFFF
      FF00FFFFFF00FFFFFF00FDF7F200FBF0EC00F5E9E300C9B5A400CBB4A400CCB0
      9F00D6B5A100C9B1A500FFFCF800FDF7F200F8ECE600EEE0DA00E7DDD300F0DD
      D600F5EEE500E8D5CE00E5D5CE00000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFC
      F800FEFBF700FCF7F400FBF5F000FAF1ED00F8EEE700F5E9E300F2E6E000D2BF
      B700FFFFF800F5FFF800F3F7F200F5F1EC00F4ECE500E7E1D600E6DDCF00D2C3
      BA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FEFBF700FCF7
      F400FBF5F000FAF1ED00F8EEE700F5E9E300F2E6E000D2BFB700FFFFF800F5FF
      F800F3F7F200F5F1EC00F4ECE500E7E1D600E6DDCF00D2C3BA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FEFBF700FCF7F400FBF5F000FAF1
      ED00F8EEE700F5E9E300F2E6E000D2BFB700FFFFF800F5FFF800F3F7F200F5F1
      EC00F4ECE500E7E1D600E6DDCF00D2C3BA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1D1CC00DECEC700DECAC900DFCCBD00DECCBB00DCCAB900DCC8
      B600DAC1B100D4BCAA00CCB4A000C7AF9B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBF5F000F8EEE700F2E6E000FFFFFC00F3F7F200F4EC
      E500E6DDCF00F7F1EC00FFFEFA00FDF8F500FEF5F100F8EEE700E7DCD400ECD9
      D100ADA49A00E9D4CC00E1CFC800000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFC
      F800FDFAF600FBF7F200FAF4EF00F9F0EC00F7EDE600F4E8E200F1E5DF00DEC1
      BA00FFFDF400F7FAF100F6F3EE00F6EAE600EFDFD800E5D7CB00D6C5B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FDFAF600FBF7
      F200FAF4EF00F9F0EC00F7EDE600F4E8E200F1E5DF00DEC1BA00FFFDF400F7FA
      F100F6F3EE00F6EAE600EFDFD800E5D7CB00D6C5B80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FDFAF600FBF7F200FAF4EF00F9F0
      EC00F7EDE600F4E8E200F1E5DF00DEC1BA00FFFDF400F7FAF100F6F3EE00F6EA
      E600EFDFD800E5D7CB00D6C5B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0CEC700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBF2EE00F7EDE600F0E4DE00FFFFFC00E9EBDF00E8D6
      CB00EBEFE900FEFFFD00FEFCFB00FDF8F500FCF3EF00F8EDE900F4EEE100EAD7
      C800CDC0B000E4CDBE00E6CBBD00000000000000000000000000000000000000
      00000000000000000000E0CEC700FDFFFF00FAFCF600F9FCFF00FFFEFF00FDFF
      FF00FDFFFF00FDFFFF00FCFEFF00FBFDFD00FBFDFD00FAFCFC00FCFDFB00FFFA
      F700FFF8F500FEF5F200FBF2EE00FBF0EC00F7EDE600F3E7E100F0E4DE00DBC1
      BB00FFFAF300F3F6ED00E9EBDF00F2E2D600E8D6CB00D0C5BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0CEC700FDFFFF00FAFCF600F9FCFF00FFFEFF00FDFFFF00FDFFFF00FDFF
      FF00FCFEFF00FBFDFD00FBFDFD00FAFCFC00FCFDFB00FFFAF700FFF8F500FEF5
      F200FBF2EE00FBF0EC00F7EDE600F3E7E100F0E4DE00DBC1BB00FFFAF300F3F6
      ED00E9EBDF00F2E2D600E8D6CB00D0C5BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0CEC700FDFF
      FF00FAFCF600F9FCFF00FFFEFF00FDFFFF00FDFFFF00FDFFFF00FCFEFF00FBFD
      FD00FBFDFD00FAFCFC00FCFDFB00FFFAF700FFF8F500FEF5F200FBF2EE00FBF0
      EC00F7EDE600F3E7E100F0E4DE00DBC1BB00FFFAF300F3F6ED00E9EBDF00F2E2
      D600E8D6CB00D0C5BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D2CB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FBEFED00F8E9E600F1E0DD00FBF2E500E1D6CE00F7F1
      EA00FFFFFE00FEFFFD00FFFBFA00FCF7F400FAF1ED00F6EBE700F2E9DC00F1DF
      D400C0AFA200E4CABC00DCBDAE00000000000000000000000000000000000000
      00000000000000000000E8D0CA00FEFCFC00FFFDF800FEFAFF00FFFAFC00FCFF
      FD00FCFFFD00FCFFFD00FEFFFB00FEFFFB00FEFFFA00FDFFF900FCFEF800FFFC
      F700FFFAF300FCF6EF00FBF3EC00FAF1E800F6EDE400F2E7DF00EEE4DA00D5C2
      BA00FFF3EB00EFEEE400F3E6DE00E2D3CA00D7C4BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8D0CA00FEFCFC00FFFDF800FEFAFF00FFFAFC00FCFFFD00FCFFFD00FCFF
      FD00FEFFFB00FEFFFB00FEFFFA00FDFFF900FCFEF800FFFCF700FFFAF300FCF6
      EF00FBF3EC00FAF1E800F6EDE400F2E7DF00EEE4DA00D5C2BA00FFF3EB00EFEE
      E400F3E6DE00E2D3CA00D7C4BC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8D0CA00FEFC
      FC00FFFDF800FEFAFF00FFFAFC00FCFFFD00FCFFFD00FCFFFD00FEFFFB00FEFF
      FB00FEFFFA00FDFFF900FCFEF800FFFCF700FFFAF300FCF6EF00FBF3EC00FAF1
      E800F6EDE400F2E7DF00EEE4DA00D5C2BA00FFF3EB00EFEEE400F3E6DE00E2D3
      CA00D7C4BC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDD0C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFF4F200F9EDE900F4E4DE00EEDAD500F3E3D700F1F2EE00ECFA
      F600FFFFFE00FEFFFD00FFFCF800FDF7F200FBF0EC00F5E9E300C9B5A400CBB4
      A400CCB09F00D6B5A100C9B1A500000000000000000000000000000000000000
      00000000000000000000E5D2CB00FAFCFC00FFFFF900FAFEFF00FCFCFC00FFFE
      FF00FFFDFF00FFFDFF00FFFEFE00FFFDFE00FFFDFC00FFFBFA00FEFAF900FFF8
      F800FFF5F500FCF3F000FBEFED00FAEEEA00F8E9E600F5E4E100F1E0DD00D4C7
      B900FBF2E500F5E2DB00E1D6CE00DCC6C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5D2CB00FAFCFC00FFFFF900FAFEFF00FCFCFC00FFFEFF00FFFDFF00FFFD
      FF00FFFEFE00FFFDFE00FFFDFC00FFFBFA00FEFAF900FFF8F800FFF5F500FCF3
      F000FBEFED00FAEEEA00F8E9E600F5E4E100F1E0DD00D4C7B900FBF2E500F5E2
      DB00E1D6CE00DCC6C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D2CB00FAFC
      FC00FFFFF900FAFEFF00FCFCFC00FFFEFF00FFFDFF00FFFDFF00FFFEFE00FFFD
      FE00FFFDFC00FFFBFA00FEFAF900FFF8F800FFF5F500FCF3F000FBEFED00FAEE
      EA00F8E9E600F5E4E100F1E0DD00D4C7B900FBF2E500F5E2DB00E1D6CE00DCC6
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1D1CC00DECEC700DECAC900DFCCBD00DECCBB00DCCA
      B900DCC8B600DAC1B100D4BCAA00CCB4A000C7AF9B00FFFFFC00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFBF700FBF5F000F8EEE700F2E6E000FFFFF800F3F7
      F200F4ECE500E6DDCF0000000000000000000000000000000000000000000000
      00000000000000000000E8D0CA00FEFCFC00FDFBF300FBFAFC00FFFFFF00FCFF
      FD00FCFFFD00FBFEFC00FCFFFB00FCFFFB00FBFFF900FBFDF700F9FBF500FEFC
      F400FBF9EF00F7F5EB00F7F0E700F6EDE300F2E8DE00EFE3D900EBDFD300D3C7
      B500FFEFE400EBDED600D7C1BC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8D0CA00FEFCFC00FDFBF300FBFAFC00FFFFFF00FCFFFD00FCFFFD00FBFE
      FC00FCFFFB00FCFFFB00FBFFF900FBFDF700F9FBF500FEFCF400FBF9EF00F7F5
      EB00F7F0E700F6EDE300F2E8DE00EFE3D900EBDFD300D3C7B500FFEFE400EBDE
      D600D7C1BC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8D0CA00FEFC
      FC00FDFBF300FBFAFC00FFFFFF00FCFFFD00FCFFFD00FBFEFC00FCFFFB00FCFF
      FB00FBFFF900FBFDF700F9FBF500FEFCF400FBF9EF00F7F5EB00F7F0E700F6ED
      E300F2E8DE00EFE3D900EBDFD300D3C7B500FFEFE400EBDED600D7C1BC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0CEC700FAFCF600FFFEFF00FDFFFF00FCFE
      FF00FBFDFD00FCFDFB00FFF8F500FBF2EE00F7EDE600F0E4DE00FFFAF300E9EB
      DF00E8D6CB000000000000000000000000000000000000000000000000000000
      00000000000000000000DDD0C800FAFFFF00F7FFF500F8FEFD00F7FCFA00FDFB
      FF00FFFBFF00FFFBFF00FFFCFF00FFFCFF00FFFDFF00FEFBFD00FFFAFC00FFF8
      F500FFF4F200FCF1ED00F9EDE900F7E8E500F4E4DE00F1DED900EEDAD500DBC6
      B700F3E3D700D6C2BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDD0C800FAFFFF00F7FFF500F8FEFD00F7FCFA00FDFBFF00FFFBFF00FFFB
      FF00FFFCFF00FFFCFF00FFFDFF00FEFBFD00FFFAFC00FFF8F500FFF4F200FCF1
      ED00F9EDE900F7E8E500F4E4DE00F1DED900EEDAD500DBC6B700F3E3D700D6C2
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDD0C800FAFF
      FF00F7FFF500F8FEFD00F7FCFA00FDFBFF00FFFBFF00FFFBFF00FFFCFF00FFFC
      FF00FFFDFF00FEFBFD00FFFAFC00FFF8F500FFF4F200FCF1ED00F9EDE900F7E8
      E500F4E4DE00F1DED900EEDAD500DBC6B700F3E3D700D6C2BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5D2CB00FFFFF900FCFCFC00FFFDFF00FFFE
      FE00FFFDFC00FEFAF900FFF5F500FBEFED00F8E9E600F1E0DD00FBF2E500E1D6
      CE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3D1CA00FBFEFC00FEFFF700FDFFFF00FEFCFB00FDFF
      FF00FDFFFF00FCFEFE00FCFFFD00FCFFFD00FBFEFC00FBFCF800F9FAF600FDFA
      F200FCF6EF00F8F2EB00F7F0E700F3ECE300F0E7DD00ECE3D900EAE0D600DAC7
      BA00D8C5BE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E3D1CA00FBFEFC00FEFFF700FDFFFF00FEFCFB00FDFFFF00FDFFFF00FCFE
      FE00FCFFFD00FCFFFD00FBFEFC00FBFCF800F9FAF600FDFAF200FCF6EF00F8F2
      EB00F7F0E700F3ECE300F0E7DD00ECE3D900EAE0D600DAC7BA00D8C5BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3D1CA00FBFE
      FC00FEFFF700FDFFFF00FEFCFB00FDFFFF00FDFFFF00FCFEFE00FCFFFD00FCFF
      FD00FBFEFC00FBFCF800F9FAF600FDFAF200FCF6EF00F8F2EB00F7F0E700F3EC
      E300F0E7DD00ECE3D900EAE0D600DAC7BA00D8C5BE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DDD0C800F7FFF500F7FCFA00FFFBFF00FFFC
      FF00FFFDFF00FFFAFC00FFF4F200F9EDE900F4E4DE00EEDAD500F3E3D7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1D1CC00E3D5D600DECEC700DCCACB00DECAC900DFCC
      BD00DFCCBD00DFCCBD00DECCBB00DDCBBA00DCCAB900DDC9B700DCC8B600DCC3
      B300DAC1B100D7BFAD00D4BCAA00D0B8A600CCB4A000C9B19D00C7AF9B00D4C4
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1D1CC00E3D5D600DECEC700DCCACB00DECAC900DFCCBD00DFCCBD00DFCC
      BD00DECCBB00DDCBBA00DCCAB900DDC9B700DCC8B600DCC3B300DAC1B100D7BF
      AD00D4BCAA00D0B8A600CCB4A000C9B19D00C7AF9B00D4C4BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1D1CC00E3D5
      D600DECEC700DCCACB00DECAC900DFCCBD00DFCCBD00DFCCBD00DECCBB00DDCB
      BA00DCCAB900DDC9B700DCC8B600DCC3B300DAC1B100D7BFAD00D4BCAA00D0B8
      A600CCB4A000C9B19D00C7AF9B00D4C4BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1D1CC00DECEC700DECAC900DFCCBD00DECC
      BB00DCCAB900DCC8B600DAC1B100D4BCAA00CCB4A000C7AF9B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EBE5E600EBE5E600EBE5E600EBE5E600EBE5
      E600EBE5E600EBE5E600EBE5E600EBE5E600EBE5E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCE2E100C5CCC900AAB1AC00A3B0A8009FAEA600AAA7
      A900AAA7A900AAA7A900AAA7A900AAA7A900ABA8AA00ABA8AA00ABA8AA00ABA9
      A900ABA9A900ABA9A900ACAAAA00ACAAAA00ACAAAA00ACAAAA00ACAAAA00AAA9
      AD00AAA9AD00A8AEA9007B897D007D8B7F007F8D8100818F8300808E82007F8D
      81007E8C80007D8B7F007E847F00848A8500E4E7E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8AEA9007B89
      7D007D8B7F007F8D8100818F8300808E82007F8D81007E8C80007D8B7F007E84
      7F00848A8500E4E7E50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5CC
      C900AAB1AC00A3B0A8009FAEA600AAA7A900AAA7A900AAA7A900AAA7A900AAA7
      A900ABA8AA00ABA8AA00ABA8AA00ABA9A900ABA9A900998D9F005F687500766A
      7600736E7700626F61005B707100776B770074716C00737169006D6E6A007573
      6800626E70006C746A006C746A006C746A006C746A0069716A0069716A006A73
      69006B75690071736D006B7564006E7965006D70670000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009B483900973F100093370200AA4F3400D1A69D00D6DB
      D200000000000000000000000000000000000000000000000000000000000000
      00000B5B02000F630500255B1600095C00002C7300000C610F000C5D00000356
      0B000D57000037690300215F0D00000000000000000000000000000000000000
      00000000000000000000DECCCB00D6C2BD00BEA5A100BAA09A00BDA19A00BCA4
      9000BCA49000BCA49000BCA49000BCA49000BBA38F00BBA38F00BBA38F00BBA3
      8F00BCA49000BCA49000BCA49000BBA38F00BBA38F00BAA28E00BAA28E00BDA5
      9300BDA5930057B763007ACF850089D998008DD79D0091D99D0092D79E0090D8
      9C008ED99B0087D4960065C4730053945D00EAE4E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000057B763007ACF
      850089D998008DD79D0091D99D0092D79E0090D89C008ED99B0087D4960065C4
      730053945D00EAE4E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECCCB00D6C2
      BD00BEA5A100BAA09A00BDA19A00BCA49000BCA49000BCA49000BCA49000BCA4
      9000BBA38F00BBA38F00BBA38F00BBA38F00BCA4900048974E0071B96D0070CE
      79006B813200ED3F1B00DF481500DE470E00EE3B1400ED420E00E7431600E040
      1800ED441100E9431E00E9431E00E9431E00E9431E00E3401A00E23F1800E644
      1A00E6441A00FF551B00FF963300FFAF2500FFA01E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9864E00A63B0100A7520C00C6723000AA521600953F09008A2B0300CCB3
      8B00C5C4C600D6C8CC00D0D8D800EDDFE1000000000000000000000000000000
      00003AC20C0035990000D8EBAC008CEC23002C830400129B03002E96090046A3
      0000289D0400218717001F5F0000000000000000000000000000000000000000
      00000000000000000000DCD6D100FFFFF800FEFCF200FCF7EE00FFFCF100FFF5
      F300FFF5F300FFF4F200FFF4F200FFF3F100FEF2F000FEF2F000FDF1EF00FDF1
      ED00FDF1ED00FDF1ED00FCF0EC00FBEFEB00FAEEEA00F8ECE800F8ECE800F7EA
      E200F7EAE2006CC77B009DE0AD00ABEAC000AFE7C400B5E9C400B4E7C500B2E8
      C300B0E9C200ABE5BC0087DE94005F9A6700EAE4E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006CC77B009DE0
      AD00ABEAC000AFE7C400B5E9C400B4E7C500B2E8C300B0E9C200ABE5BC0087DE
      94005F9A6700EAE4E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCD6D100FFFF
      F800FEFCF200FCF7EE00FFFCF100FFF5F300FFF5F300FFF4F200FFF4F200FFF3
      F100FEF2F000FEF2F000FDF1EF00FDF1ED00FDF1ED0069906300798E6100649A
      5E006C7437009D4C0800B8330700984E1E009E4E110086493500A5460E00AE48
      0D00A54615009845120098451200984512009845120098420E0099430D009F4A
      1200A5501800B0673500B7823200B98E2700C38C2B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BF45
      3500972802009B653000BF6E3100E49C7A00E4BD8600D4855A00A6602B008F15
      0000C7A69D00ABBEAF00C6B6C800BFC8CB00C9CBD500D8DDC200EED3FE00D2F5
      EB00ECE6E1004AB501001DA20000F1F3E70078E0050004C2050009D30A0000E4
      020071FD1000369D000019570300000000000000000000000000000000000000
      00000000000000000000D1CCC900FFFFFC00FFFEF900FDF9F400FFF8F400FBF6
      F500FBF6F500FAF5F400F9F4F300F9F4F300F8F3F200F7F2F100F7F2F100F8F1
      EE00F8F1EE00F8F1EE00F7F0ED00F6EFEC00F4EDEA00F3ECE900F2EBE800F5EB
      E400F4EAE3006DC67D00A1DFB100B0E9C300B5E7C900B8E9C900B7E7CA00B7E8
      C800B5E8C600AEE4C10090DF9C00659A6E00EBE4E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006DC67D00A1DF
      B100B0E9C300B5E7C900B8E9C900B7E7CA00B7E8C800B5E8C600AEE4C10090DF
      9C00659A6E00EBE4E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1CCC900FFFF
      FC00FFFEF900FDF9F400FFF8F400FBF6F500FBF6F500FAF5F400F9F4F300F9F4
      F300F8F3F200F7F2F100F7F2F100F8F1EE00F8F1EE00DB640E00EB752400D871
      2200F2843200DD882500D2642800B5BD8000FF833F00C1978A00C27D4C00E387
      3600DF893D00E8C0AE00E9C1AF00EAC2B000E9C1AF00DFC5B400EFC1B000F1BB
      AA00BD9E8700865E6000895A4500C1776500CE5C4B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B75A43008C45
      0500B04B0700BF4C2100DCBEA300BA794C00CE785400DFB07A00CC7F5800BD62
      2F00831F0000B8A19900B2B2B200AEB0B800B5B6AD00C1B4CA00C4E0B500CDB2
      C600E6E1DE00CCCADD002DB5090026A20900FFF7FA0093F44A0002CB000008C5
      04000CEB0D002B9D0A00014D0000000000000000000000000000000000000000
      00000000000000000000DACFD100FFFEFE00F9FEFD00FAFFFD00F5F8F600FBF8
      F000FBF8F000FAF7EF00F9F6EE00F8F5ED00F8F5ED00F7F4EC00F7F4EC00F8F1
      E800F8F1E800F8F1E800F8F1E800F7F0E700F6EFE600F5EEE500F4EDE400F7E9
      E300F7E9E3006FC480009EE0AC00ADEABE00AFE8C200B5EAC300B4E8C300B2E9
      C200B2EAC100ABE6BA008ED7990065976D00EBE3EA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006FC480009EE0
      AC00ADEABE00AFE8C200B5EAC300B4E8C300B2E9C200B2EAC100ABE6BA008ED7
      990065976D00EBE3EA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DACFD100FFFE
      FE00F9FEFD00FAFFFD00F5F8F600FBF8F000FBF8F000FAF7EF00F9F6EE00F8F5
      ED00F8F5ED00F7F4EC00F7F4EC00F8F1E800F8F1E800D8BABF00F8F1E800CACD
      DB00DBDAE400A8CFC000DAFFFF00FFE6EE00D6D6C600EBDDD100FFF6E300FFEE
      DB00FCF3E600E8B9A400E9BAA500E9BAA500E9BAA500EFB6A700EDB3A000E4B5
      9900FFEBC300D4D6940087D58E00C5A49400C066470000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AB702000A3230000A94A
      1E00B4623F00B55B3200CE946300B6570E00A35A2600AE704000EDB08E00C879
      48009C4E0C008A2D1400BE9E8100BF95AE00B1B1B100A6AEA70090AC8800C9B3
      BF00B9B5BA00C1CAB600CDBFE3002FB70B001EAD0000FFF7FE00BBEC440000D1
      000004D4000009970E00235B0800000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FAFCFD00F8F9F700FEF7
      F400FDF6F300FCF5F200FEF5F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2
      EF00FBF2EF00FAF1ED00FBF0EC00FAF0E900F9EFE800F8EEE700F7EDE600F4E8
      E400F5EEE50068C2760095D8AB00A3E4B700A4E3B900A7E5BD00A8E4BC00A6E4
      BC00A5E5BB009FE2B5007FD9900059946200EDE2EA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000068C2760095D8
      AB00A3E4B700A4E3B900A7E5BD00A8E4BC00A6E4BC00A5E5BB009FE2B5007FD9
      900059946200EDE2EA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FAFCFD00F8F9F700FEF7F400FDF6F300FCF5F200FEF5F100FEF5
      F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00EFC2BE00FBF0EC00FAF0
      E900F9EFE800F8EEE700FFF5F000FFE8D800E9BFA800E5C5AE00D6BDA900F4DC
      CA00FFE9D100E6AF9400E7B09500E7B09500E6AF9400E5AF9800E3AE9300E2B2
      8E00F6CDA000EDD8A1005DD86400E7D9A400C95D4C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1864E008C2A02009E641800B856
      2C00CE884D00C8A26C00B5562B00B1483500B34F1900AC531600C3753300E6AF
      8800D5915C00A1440500912F2500AD9C8900AFADA3009DAEA000B3B0C0009FB2
      9F00A79CA600B8B5B7009BBB8A00BFB6CB003AAE000027990600F4FBFE00A3EB
      8B001CC3020047A00D001E5C0200000000000000000000000000000000000000
      00000000000000000000E4D4C300FCFEFF00FFFFFF00FBFDFE00FBFCFA00FFF8
      F500FEF7F400FDF6F300FCF6F100FEF5F100FDF4F000FCF3EF00FBF2EE00FBF2
      EF00FBF2EF00FAF1ED00FBF0EC00FAF0E900F9EFE800F8EEE700F7EDE600F9ED
      E900F5EEE5005EBE710088D6A10096E1AE0096DEAF0098E0B1009ADFB20098E0
      B10097E2AF0091DFAA0073D5890052905C00EAE2E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005EBE710088D6
      A10096E1AE0096DEAF0098E0B1009ADFB20098E0B10097E2AF0091DFAA0073D5
      890052905C00EAE2E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4D4C300FCFE
      FF00FFFFFF00FBFDFE00FBFCFA00FFF8F500FEF7F400FDF6F300FCF6F100FEF5
      F100FDF4F000FCF3EF00FBF2EE00FBF2EF00FBF2EF00D6CEB0004E957400A4C1
      B200B8BBB200DCD2D200F1FFFF00EAE6E500CFD5C400EDD5C900ECD5C600F4DF
      D000F8E5D600DF9F8000E0A08100E1A18200E0A08100E1A78400E5A48500D3A0
      8000FFF9D600FFFCE5007FC86C00E6FACD00984F390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D68853009B350400A64F1700C05E3000D08F
      7000D49B6E00B45E2A00A43F0000A8451F00AD4F2100AA522900A3621E00C460
      2A00EBA58700D79659009451240091250300A9988B00B4ACAC00A8A5AE0098B5
      B200A99F9800A0A8B500A4ABA400AF9CAF00B8B9BD0044BF0300138D1100FFFC
      FF0070EF0000297C020014630200000000000000000000000000000000000000
      00000000000000000000E4D4C300FCFEFF00FFFFFF00FDFFFF00FDFEFC00FFF8
      F500FEF7F400FDF6F300FCF6F100FDF4F000FDF4F000FCF3EF00FCF3EF00FBF2
      EF00FBF2EF00FAF1ED00FBF0EC00FBF1EA00FAF0E900F8EEE700F7EDE600F9ED
      E900F2EBE20055BB6A007CD4980088DFA50088DCA5008BDDA8008ADCA7008BDE
      A7008ADFA50083DAA00067D08100478B5600E9E2E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000055BB6A007CD4
      980088DFA50088DCA5008BDDA8008ADCA7008BDEA7008ADFA50083DAA00067D0
      8100478B5600E9E2E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4D4C300FCFE
      FF00FFFFFF00FDFFFF00FDFEFC00FFF8F500FEF7F400FDF6F300FCF6F100FDF4
      F000FDF4F000FCF3EF00FCF3EF00FBF2EF00FBF2EF00FAB9B0007F897D00E8DB
      DD00D2DEDE00D6D8D200F0E6EC00FFF2E000FEE6D000F7E0D000FFEBDB00F9E5
      D400F7E5D400DA916B00DD946E00DD946E00DD946E00DB906A00DF916C00E194
      6D00F0A17800D1936300E9A77400FFEAB100A2512B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DB7B530098311100C26F2B00B8400500C9916E00D79E
      8500C7521F009F4A1D00A54B29009E4E0100A2430000B0580C00A7451B00B364
      3900C0633600E5B39F00C9793A00B15C24008E311A00B28F8B009EA2A700B0A4
      A400A9B3C400BEA08D009AAAB7009BB4A000B294A100A9A0A3003FC400002D95
      0000F1FBDD008BDF5B00004E0300000000000000000000000000000000000000
      00000000000000000000E5D5C400FCFEFF00FFFFFF00FDFFFF00FFFFFE00FFF8
      F500FEF7F400FDF6F300FDF7F200FCF6F100FDF4F000FDF4F000FCF3EF00FCF3
      F000FBF2EF00FAF1ED00FBF0EC00FBF1EA00FAF0E900F8EEE700F7EDE600F7EB
      E700F6EFE6004FB9660071D191007EDC9C007CD99C007FD99E007FD99E007FD9
      9E007DDA9D0077D7970060CE7C0041885000E8E1E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004FB9660071D1
      91007EDC9C007CD99C007FD99E007FD99E007FD99E007DDA9D0077D7970060CE
      7C0041885000E8E1E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FCFE
      FF00FFFFFF00FDFFFF00FFFFFE00FFF8F500FEF7F400FDF6F300FDF7F200FCF6
      F100FDF4F000FDF4F000FCF3EF00FCF3F000FBF2EF00E1C8B800B8CCBF00FBF1
      EA00FAF0E900F8EEE700F7EDE600E9E5D200FCEED700FFEADA00F5DECE00F7E3
      D200FCEAD900D3835A00D6865D00D6865D00D5855C00D4835D00D8865D00D581
      5700D27F5200D57D4F00D8704100CD7A4700C755310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9806500823E0900B3712300D7986600B06D4E00C3806900BE6F
      2000AC5B1800A83C0200AE542500AB4A0600A83E0F0098430B00A6521E00A754
      0600AF6C2F00C9572F00E0B68100D78D6300AA3615009C341700A5A28600B7A8
      A600B3A3BB009BB2A300B6A3A0009FAAA800AAACA000A8ADAC00C29BB1002FBB
      0A0041940200D6F5D6001B610700000000000000000000000000000000000000
      00000000000000000000E5D5C400FCFEFF00FFFFFF00FCFEFF00FFFFFE00FEF7
      F400FEF7F400FDF6F300FDF7F200FDF7F200FCF6F100FBF5F000FCF3EF00FCF3
      F000FBF2EF00FAF1ED00FBF0EC00FBF1EA00FAF0E900F8EEE700F7EDE600F6EA
      E600F5EEE5004FB564006BCC8C0074D8970070D6950071D7960076D7970076D7
      970074D694006ED18D0059C27300447F5300EFE0EE0000000000000000000000
      000000000000000000000000000000000000DCE2E100AAB1AC009FAEA600AAA7
      A900AAA7A900ABA8AA00ABA8AA00ABA9A900ACAAAA00ACAAAA00ACAAAA00AAA9
      AD00AAA9AD00AAA9AD00AAA9AD00B3A8A4000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004FB564006BCC
      8C0074D8970070D6950071D7960076D7970076D7970074D694006ED18D0059C2
      7300447F5300EFE0EE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FCFE
      FF00FFFFFF00FCFEFF00FFFFFE00FEF7F400FEF7F400FDF6F300FDF7F200FDF7
      F200FCF6F100FBF5F000FCF3EF00FCF3F000FBF2EF00FAC8BC00B7D6C700FBF1
      EA00EAF8F700F8EEE700F7EDE600FFEDDE00FFF4E000FFEEDE00FFECDC00F3DF
      CE00FCEAD900D0784A00D37B4D00D27A4C00D27A4C00D3774C00D2774A00D377
      4800D0724400C96D3C00D76C3900CF663300BE49220000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE8553008A3D0000CE764700DBA48500F0C9A300CBAC6F00B14E0000AC42
      0C00AB592200AE632500AC420000AE582200AF500600A0480200AA420000B85B
      3400A34E0000C15B1A00C56C5800D4B09200D79B5F00965014008D1E0000B0A8
      9B009DADA600BD98B200A5AEA100C0A7B5009CB1A9009CAFB200AEB0AA00B09A
      BD0030AD03002E9B0000115B0100000000000000000000000000000000000000
      00000000000000000000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FEF9
      F600FCF7F400FDF6F300FDF7F200FDF7F200FDF7F200FBF5F000FAF4EF00FCF3
      F000FBF2EF00FAF1ED00FCF1ED00FBF1EA00FAF0E900F9EFE800F7EDE600FBEF
      EB00EAFFE90055BB690072D0900076D6960070D191006ED2910072D4920070D5
      91006CD6910067D38B0044CD6B0034864500EBE5E60000000000000000000000
      000000000000000000000000000000000000DCD6D100FEFCF200FFFCF100FFF5
      F300FFF4F200FEF2F000FDF1EF00FDF1ED00FCF0EC00FAEEEA00F8ECE800F7EA
      E200F6E9E100F4E7DF00F3E6DE00FCE0D9000000000000000000000000000000
      000000000000000000000000000000000000000000000000000055BB690072D0
      900076D6960070D191006ED2910072D4920070D591006CD6910067D38B0044CD
      6B0034864500EBE5E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6D6C500FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FEF9F600FCF7F400FDF6F300FDF7F200FDF7
      F200FDF7F200FBF5F000FAF4EF00FCF3F000FBF2EF00EFB7AC00AF717100DEE4
      E300CDD9D900E2E8E700F7EDE600F2E9DB00E7D6C300FFECDC00EAD3C300FBE7
      D600FBE9D800CD6B3B00D06E3E00D06E3E00D06E3E00CF6D3D00CF6B3B00D36D
      3C00D16B3700D46B3800CC683100CA602B00C1451C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D992
      530087481600CE6B4F00E3AB7A00ECD1B600E8BA8400CF886600B9783B00A438
      0900AE521D00AC5A1200BB642400B7442300B5601C00AD591800B34932009A37
      0000AE692000BC560D00AE622000BA652100DEB57600C9885500A66717008A17
      0000B5AA8A00B5A8B000AD99B0009CB2B800B0A39B00ABA9A100AF9FB100B4A6
      BE00B3C3A40050B90A001A620000000000000000000000000000000000000000
      00000000000000000000E6D6C500FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFB
      F800FEF9F600FBF6F300FCF6F100FCF6F100FCF6F100FBF5F000FAF4EF00FCF3
      F000FBF2EF00FBF2EE00FCF1ED00FBF1EA00D0D3D100D1C9D000DCC5D400CDCA
      D300BCCBBD007FCD900094E1AE0099E6B30093E2AF008EE0AC0078D69B006FD1
      950064CD8E005CCD8A005DC67D003F845100BDB2BC00D2CAD400DCCEDA00D1CE
      D000C9CFCA00EAE4E9000000000000000000DACFD100F9FEFD00F5F8F600FBF8
      F000F9F6EE00F8F5ED00F7F4EC00F8F1E800F8F1E800F6EFE600F4EDE400F7E9
      E300F5E7E100F3E5DF00F2E4DE00F4E8DC000000000000000000000000000000
      000000000000D0D3D100D1C9D000DCC5D400CDCAD300BCCBBD007FCD900094E1
      AE0099E6B30093E2AF008EE0AC0078D69B006FD1950064CD8E005CCD8A005DC6
      7D003F845100BDB2BC00D2CAD400DCCEDA00D1CED000C9CFCA00EAE4E9000000
      0000000000000000000000000000000000000000000000000000E6D6C500FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FFFBF800FEF9F600FBF6F300FCF6F100FCF6
      F100FCF6F100FBF5F000FAF4EF00FCF3F000FBF2EF00FDBBB00053959300D6B1
      B500D4D3D500DBC4C900C6C5C700FFF0EB00EED9C400F2DED300F4E2D700F5E5
      D900FAEADE00CA642F00CE663100CF652F00D3663000C7672B00CA672D00CB64
      2D00CB612C00D25E2F00C6622B00D3582600B8401D0000000000000000000000
      0000000000000000000000000000000000000000000000000000D09056008E40
      1200D58D6300E5AA7900F0CECF00E9CE8E00D07C6A00C9862F00CE7D5800C57D
      4E00A3490E00A05A0D00AF551E00BA682700B3591800AD5A2600A85C1A00AC51
      1A00A3450400A5672000B3521800BD561F00C9714900E8A18000D18B7300AE65
      0F0091110000A3ABA000A1AEBE00AB989B00ACAAA200A8ABAF00A2A09600AFC2
      A900C2C0CC00C3D8AB00F4F0DD00000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FCFEFF00FEFFFD00FFFD
      FA00FFFAF700FBF6F300FBF5F000FCF6F100FCF6F100FBF5F000FAF4EF00FBF2
      EF00FBF2EF00FBF2EE00FCF1ED0090CE98003AA8480044AA520056B1620056B4
      6D006BB9790086EBA000A8E5BF00A8E5BF00A5E4BD00A5E6BF00ACE5B800A7E5
      B7009FE6B40095E5B00083E09B0060C679005FAF72004CB25A004AAA56003CAD
      4B0034914000B9D3BC000000000000000000E4D4C300FFFFFF00FBFCFA00FEF7
      F400FCF6F100FDF4F000FBF2EE00FBF2EF00FBF0EC00F9EFE800F7EDE600F5EE
      E500F9EBE50082807F00F0E4DE00EFE3DD000000000000000000000000000000
      000090CE98003AA8480044AA520056B1620056B46D006BB9790086EBA000A8E5
      BF00A8E5BF00A5E4BD00A5E6BF00ACE5B800A7E5B7009FE6B40095E5B00083E0
      9B0060C679005FAF72004CB25A004AAA56003CAD4B0034914000B9D3BC000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FCFEFF00FEFFFD00FFFDFA00FFFAF700FBF6F300FBF5F000FCF6
      F100FCF6F100FBF5F000FAF4EF00FBF2EF00FBF2EF00F0C4B700D4C9AB00ECF0
      E400F7FCE700E7FEFA00F8EEE700E3EEE600E8E2CF00EAE0CF00EBE3D200FBF4
      E300F9F2E100C45A2500C85E2900C85D2A00C65D2A00D55D2900D25C2800CF5C
      2900CA5B2900CF5D2100C65E1D00CF571B00C245130000000000000000000000
      00000000000000000000000000000000000000000000E3AC69009A3D3A00DA90
      4E00E5A78100EFE3D100E9CCA000D6867F00D49A4E00D1845D00C5884600CD86
      6500D18C4D00AF510800A5541B00AB5D1A00B45D1A00AE612800AE682200BF69
      2D00A4320900B3561E009D621D00BA693C00B3591900C07F4C00E59F7A00D081
      5A00B16023009A2B0500ABA29400AFA4A600A8B4B600ACADB100ABBFB200C8C3
      BA00D8D6D600E6E0FF0000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFE
      FD00FDF9F800FCF5F200FEF5F200FFF6F200FFF5F100FDF5EE00FAF4ED00FBF2
      EE00FBF2EE00FAF1ED00FAF2EB00FBF1EA00ABD7B0008FD49B00ACE1B900B7EA
      C800AFE1C300BBEAC900B5EAC900B4E9C800B3E8C700B3E8C700B0E7C600B0E7
      C600AFE6C500AFE6C500ABE6BA00AFEBC3009BD9B100A3E2B6008FE4A00066A7
      6F00C6E5C600000000000000000000000000E5D5C400FFFFFF00FFFFFE00FEF7
      F400FDF7F200FDF4F000FCF3EF00FBF2EF00FBF0EC00FAF0E900F7EDE600F6EF
      E600F9EBE5007E7C7B00EEE2DC00EFE3DD000000000000000000000000000000
      000000000000ABD7B0008FD49B00ACE1B900B7EAC800AFE1C300BBEAC900B5EA
      C900B4E9C800B3E8C700B3E8C700B0E7C600B0E7C600AFE6C500AFE6C500ABE6
      BA00AFEBC3009BD9B100A3E2B6008FE4A00066A76F00C6E5C600000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FDF9F800FCF5F200FEF5F200FFF6
      F200FFF5F100FDF5EE00FAF4ED00FBF2EE00FBF2EE00EAC59F00FFDADA00F2FF
      FE00FCF1FF00F8EFE600F7EEE500FEEAE500F1D4C500F7E5C800EBDBBE00E9DB
      BE00ECDEC100D05B1800D3612200CC5E2200C45B2200BF623500CB734500DB8A
      5D00E59A6E00F2A27900EA9B7400E18D6900D877530000000000000000000000
      000000000000000000000000000000000000E2A972009F392300D2995400E6AD
      9400EFE5D400ECC6A800DFA48400D2A06B00D59A7300D4946400D4946B00D897
      6400D5885700C6833E00BC5B2100B2522E00C2702900B4682000B3593A00A446
      0000B06A3400BA613C00BB691C00AD511000B9642C00AC610500C37C4A00DBAA
      9000B8895100B14A0C009A3E0300A6998900ACA9B900A1ADB100C1BABD00E0D8
      D900F3F9DA000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFE
      FD00FFFBFA00FCF7F600FEF5F200FDF4F000FCF3EF00FBF3EC00FBF3EC00FAF1
      ED00FAF1ED00FAF1ED00F9F1EA00FAF0E900F9EFE800ADD6B6009ADFA600BCF1
      CA00C3EAD400C4EDD200C2EECF00C1EDCE00C1EDCE00C1EDCE00BEEDCD00BEED
      CD00BEEDCD00BDECCC00B8EAC800BBE8CD00B9EACA00A2E6AF006DA87B00C1DB
      C40000000000000000000000000000000000E6D6C500FFFFFF00FEFFFD00FCF7
      F400FDF7F200FDF7F200FAF4EF00FBF2EF00FCF1ED00FAF0E900F7EDE600EFE8
      DF00F7E9E300FFFEFD00F0E4DE00EFE3DD00ABA9A900ACAAAA00ACAAAA00ACAA
      AA00AAA9AD00AAA9AD00ADD6B6009ADFA600BCF1CA00C3EAD400C4EDD200C2EE
      CF00C1EDCE00C1EDCE00C1EDCE00BEEDCD00BEEDCD00BEEDCD00BDECCC00B8EA
      C800BBE8CD00B9EACA00A2E6AF006DA87B00C1DBC40000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFEFD00FFFBFA00FCF7F600FEF5F200FDF4
      F000FCF3EF00FBF3EC00FBF3EC00FAF1ED00FAF1ED00F0D1BA00E9D1B300D7DC
      DA00F9EFE800F7EEE500F6EDE400F7F5ED00EBE3D200F1E1D500E9D9CD00FFF3
      E700FFF5E900B4552900D67E5500E99E7800E5A28300E4AB8B00E4AB8C00E3AA
      8B00E1A78A00DCA68700E1A28D00DBA48F00F9AA8F0000000000000000000000
      0000000000000000000000000000D68B6B00AC513C00D7965900DEBB9900FCDD
      C600F7DACC00D7B09000D5A67A00D0AC7600E2A37D00E39D7800CFA27700E2A0
      6F00E7906E00CFA56A00D79E6A00B3321F00C57E3F00AC642400B8453000B35F
      1D00B2762400C26D4700CD5E1000B86B1C00B46B3700AE5C1B00B7683700BB74
      1D00E9A69D00D38B6100A3560D0094250000B2A49E00C6B8C400C4D8D900F4EC
      D500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FE00FFFDFC00FEF9F800FCF5F200FDF4F100FDF4F000FCF3EF00FAF2EB00FAF1
      ED00FAF1ED00F9F0EC00FAF0E900FAF0E900F8EEE700F7EEE500AFDBB40096CA
      A200BBEECC00C3EED300C3ECD000C3ECD000C4EDD100C4EDD100C3EFD200C3EF
      D200C2EED100C2EED100C9F2D700B4E5C500BCF4CB0080B08600CDE1D5000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FEFFFD00FFFA
      F700FBF5F000FCF6F100FAF4EF00FBF2EF00FCF1ED00FAF0E900F8EEE700F4ED
      E400F8EAE4007D7B7A00EEE2DC00EFE3DD00FDF1ED00FCF0EC00FAEEEA00F8EC
      E800F7EAE200F6E9E100F4E7DF00AFDBB40096CAA200BBEECC00C3EED300C3EC
      D000C3ECD000C4EDD100C4EDD100C3EFD200C3EFD200C2EED100C2EED100C9F2
      D700B4E5C500BCF4CB0080B08600CDE1D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFE00FFFDFC00FEF9F800FCF5F200FDF4
      F100FDF4F000FCF3EF00FAF2EB00FAF1ED00FAF1ED00C266550043718200DF71
      3D00E7802300E87A1400E87A1400E97B1500E97B1500E2781B00DF751800E278
      1B00DE741700E6B39900E6B39900E6B39900E6B39900E4B39900E5B49A00E5B4
      9A00E6B59B00DEB69900EEB3A000EAAF9C00E8BFA60000000000000000000000
      00000000000000000000C0927000BD553000D59C6F00F0C1AB00F2E9CE00EED5
      BB00F0C09C00CA876600D1B48D00E5BA8F00DDA67B00E0AF7F00F2A47F00CAA6
      7E00DDAA8A00D5996B00D7A68600DEAC7E00A8481A00BB4F2D00B1753A00BF67
      3800B96E4200C9760200C46D5D00BF611800BF6A0600B05D4E00BE720200BE5B
      2700BC7D5100ED9D8000DB775E00AA6A2A0096390800D3B2A900E5E4E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FFFEFD00FDF9F800FBF6F300FCF5F200FFF6F200FDF4F000FBF3EC00FAF1
      ED00F9F0EC00FAEFEB00FAF0E900F9EFE800F8EEE700F7EEE500F6EDE400B3E2
      BC008CD7A100B7E7CA00BEEBD000BFECD100C0EDD200C0EDD200BEEED200BEEE
      D200BDEDD100BDEDD100C3E7D100B1F0C40063A57100D6ECD400000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFE00FFFB
      FA00FEF5F200FCF3EF00FBF3EC00FAF1ED00F9F1EA00F9EFE800F6EDE400F2E8
      E100F6E7E400C1BEB900EFE3DF00F0E2DC00F8F1E800F8F1E800F6EFE600F4ED
      E400F7E9E300F5E7E100F3E5DF00F2E4DE00B3E2BC008CD7A100B7E7CA00BEEB
      D000BFECD100C0EDD200C0EDD200BEEED200BEEED200BDEDD100BDEDD100C3E7
      D100B1F0C40063A57100D6ECD400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFEFD00FDF9F800FBF6F300FCF5
      F200FFF6F200FDF4F000FBF3EC00FAF1ED00F9F0EC00BC6A3A006D767300BE5F
      2E00B84A0E00C85C0A00C95D0B00C95D0B00CA5E0C00D05D0600CE5B0400D15E
      0700CD5A0300EABBA500EABBA500EABBA500EABBA500E9BDA600E9BDA600EABE
      A700EABEA700E5C0A400F3BDAC00F2BAA900EFCBB30000000000000000000000
      000000000000D69F8A00B1552200B2732F00F1C0AA00F4E1DC00F9E4C800E8C2
      AA00C8865300C77F5500CB9E6B00E0AD8C00F9BC9000E2B59400D9B88B00ECB2
      8E00D9AC8B00DCAE7E00F2B29300C5A06E00B6572600B3653A00C86F3600C182
      4800CB6C4000A9703800C66F3D00B9694400C5884A00B56A0400B3673700BF5D
      3300CE5F1900B5855100E9B19800CA7C4D00B04A09008F431300F2DECD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FFFFFF00FEFCFB00FBF7F600FAF5F200FBF5F000FDF4F000FDF2EE00FBF0
      EC00FBF0EC00FAEFEB00F9EFE800F8EEE700F7EDE600F7ECE400F6EBE300F4E6
      E000C5EAC8008CCA9A00B6E5C400B8EAC800C1F1D400B3E2C800BEE8CF00B4E1
      C600C1F0D000BFECCB00B1F6C30070A67B00D9F3DB0000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFE00FFFE
      FD00FBF6F300FFF6F200FBF3EC00F9F0EC00FAF0E900F8EEE700F6EDE400F6EC
      E500FAEAE400807D7800F0E4E000F0E2DC00FBF2EF00FBF0EC00F9EFE800F7ED
      E600F5EEE500F9EBE50082807F00F0E4DE00EFE3DD00C5EAC8008CCA9A00B6E5
      C400B8EAC800C1F1D400B3E2C800BEE8CF00B4E1C600C1F0D000BFECCB00B1F6
      C30070A67B00D9F3DB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FFFFFF00FEFCFB00FBF7F600FAF5
      F200FBF5F000FDF4F000FDF2EE00FBF0EC00FBF0EC00B3240000E2B0B000F0C5
      AA00E4C2B200EAC5AF00EAC5AF00EAC5AF00EBC6B000E8C7B700E7C6B600E8C7
      B700E7C6B600ECC6B400ECC6B400ECC6B400ECC6B400EDC7B500EDC7B500EEC8
      B600EEC8B600E5CAB000F1C4B600F2C3B500F3D6C10000000000000000000000
      0000DCA19800B5594000BD853600B7682900F7E7DA00FEDED900DED0B300D394
      8000CC815500C9814500D0864C00C7986200E8B09D00EDB8A400D5BB9700ECBD
      8500E4AB8C00EBC89000CD9C6A00C55D4600BC813C00C2803900CA7E5A00C375
      2800B1803A00CC6C5F00B65D3100D6B28E00F0B89F00DFBA8800B3562900C37A
      3000B6634400CA6D3500C1803B00E2AB8600D3956D00AA4E0500883100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFD
      FD00FFFFFF00FFFFFE00FDFBFA00F9F6F200F8F1EE00FAF1ED00FDF2EE00FBF0
      EC00FAEFEB00F9EEEA00F8EEE700F8EEE700F8ECE600F6EBE300F6EBE300F7EA
      E200EDE3DC00CDF0D50083CA9100B3EBC000BFEECE00C6F6D900B7E9C900BEEC
      CF00B5E8C300B2F4C10064947000DCEFE0000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFE00FFFF
      FF00FDFBFA00F8F1EE00FDF2EE00FAEFEB00F8EEE700F8ECE600F6EBE300EDE3
      DC00F4E4DE007C7A7200F0E2DC00EFE1DB00FBF2EF00FBF0EC00FAF0E900F7ED
      E600F6EFE600F9EBE5007E7C7B00EEE2DC00EFE3DD00ABA9A900CDF0D50083CA
      9100B3EBC000BFEECE00C6F6D900B7E9C900BEECCF00B5E8C300B2F4C1006494
      7000DCEFE0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFFFE00FDFBFA00F9F6
      F200F8F1EE00FAF1ED00FDF2EE00FBF0EC00FAEFEB00B5281900E1C7C700ECD4
      C200F0CBCD00EBCDBC00EBCDBC00EBCDBC00ECCEBD00F3CEC000F3CEC000F3CE
      C000F4CFC100EFD0C100EFD0C100EFD0C100EFD0C100F0D1C200F0D1C200F1D2
      C300F1D2C300E9D4BE00F4CFC100F6CEC200F9E4CF000000000000000000F3C4
      B600B7785600BE6A4E00D6A67C00CC805600EADACA00F3C0AC00EEC9A700D3AD
      8A00C78F6C00C9755900CA714F00C9813300C89D5A00D3B18D00E3B07E00E6CB
      B600E2B08200E1B28C00AE5A1900D2865100C4823400C2835100C6794800C57A
      5300C9783B00BA5A3200E3BCA600E7C1A300FFE0E100F8F0E900E6CFC700A462
      3900C5704000BC5F2E00D2721E00BA7C5300E2A47E00DB8F5B00B7591E007B20
      0500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FDFD
      FD00FFFFFF00FFFFFE00FEFFFD00FDFAF600FAF3F000FAF1ED00FDF1ED00FAEF
      EB00F9EEEA00F8EDE900F7EDE600F7EBE500F6EAE400F5EAE200F5EAE200F5E8
      E000F4EBE200EADED800CBF4D40090C49C00AFE7BC00B9EBC900BEECCF00BBF2
      CB00ABE6B9006A987400C0BCC100000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFE00FEFE
      FE00FFFFFE00FEF9F600FCF0EC00F8EDE900F6ECE500F6EAE400F4E9E100EFE4
      DC00F1E1DB00FDFBF300EEE0DA00EDDFD900FBF2EF00FCF1ED00FAF0E900F7ED
      E600EFE8DF00F7E9E300FFFEFD00F0E4DE00EFE3DD00FDF1ED00FCF0EC00CBF4
      D40090C49C00AFE7BC00B9EBC900BEECCF00BBF2CB00ABE6B9006A9874000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FDFDFD00FFFFFF00FFFFFE00FEFFFD00FDFA
      F600FAF3F000FAF1ED00FDF1ED00FAEFEB00F9EEEA00A9330A00EAD5D400F1D4
      CD00D9D7CD00F1D7CB00F1D7CB00F1D7CB00F1D7CB00F4D9CF00F4D9CF00F4D9
      CF00F4D9CF00F2D9CF00F2D9CF00F2D9CF00F2D9CF00F3D9D200F3D9D200F3D9
      D200F3D9D200FBDEC900EDDDD700F8D1D300FBEFDD000000000000000000D7B0
      A200D07C5800DBA77E00E7B99000ECC2B500E3AC7F00F1F3D600F8EDD100FCD9
      BF00D59B5A00D7CCA600F7D9BC00E5CCAC00D0806300DB9B7D00ECB79C00E7BE
      7F00E2B48500BE592500BF8E5600D4825900BF7F4900D0825400C0803F00CE76
      4D00C06B3E00E0C89A00E6B1A400FFF1F300F2E6E000F4E6C900FFFFE500F5BE
      BB00B0691F00BE773300B0694700D2605300C07B4200E9A79400C8884700B966
      1B006F241C000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FDFFFF00FFFFFF00FDFFFF00FFFFFE00FFFF
      FF00FEFEFE00FCFEFE00FFFFFE00FFFFFB00FEF9F600FEF3EF00FCF0EC00F9EE
      EA00F8EDE900F7ECE800F6ECE500F6EAE400F6EAE400F5EAE200F4E9E100F5E8
      E000EFE4DC00F5EAE200F1E1DB00D4FDDD0079C08700B4E3C200C1E7D100ACED
      BC005A9C6900B79E8A00C0BCC100000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFF
      FF00FEFFFD00FFFDFC00FFFBFA00FCF6F100F4ECE500F0E5DD00F3E6DE00EEE4
      DA00F1DFD800908A8300EBDBD500E9DCD400FBF2EF00FCF1ED00FAF0E900F8EE
      E700F4EDE400F8EAE4007D7B7A00EEE2DC00EFE3DD00F8F1E800F8F1E800F6EF
      E600D4FDDD0079C08700B4E3C200C1E7D100ACEDBC005A9C6900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FDFF
      FF00FFFFFF00FDFFFF00FFFFFE00FFFFFF00FEFEFE00FCFEFE00FFFFFE00FFFF
      FB00FEF9F600FEF3EF00FCF0EC00F9EEEA00F8EDE900BA270000EEE0D400F6DB
      C600F4E6D400F8E2D000F8E2D000F8E2D000F8E2D000F8E1D100F8E1D100F8E1
      D100F8E1D100F6E2D100F6E2D100F6E2D100F6E2D100F7E2D300F7E2D300F7E2
      D300F7E2D300FCE3D900FFDEE000FCE3E100DDDDDD000000000000000000DEB6
      AA00CC6F4800EFE1A600EFB8A900D9B99600DCA68700D2AF7D00F5DBCD00F0F6
      DD00F8DFBF00E8A48700E4B69700F1BDAC00ECB49100E1BB9900DEB1A600E1BB
      8B00BC652500B8815A00DC8A6100C4825200D8876400CA855300C57E5C00C974
      3000EDB2A800E6C4A600F3FBCC00EFC2D500F3FBEA00EDE8E500F9C6A600F5FA
      F800F8CFC000AD642A00BB753900C6793000B7614300C6825500DEB18C00C87F
      2300A96538008F1F120000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FDFF
      FF00FEFEFE00FEFFFD00FFFFFE00FFFFFE00FFFDFC00FDF9F800FAF6F500FBEF
      EB00F7EBE500F5E9E300F4EAE300F6EDE400F4EBE200F1E8DF00EFE6DD00F5E6
      DD00EFE5DB00F0E4DA00F5E3DC00CEC2BC00E3FFE9006BAD7A00A3E5B1006394
      6E00EBDED600B19C8600BCBEBF00000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FEFE
      FE00FFFFFF00FFFFFE00FFFFFE00FFFCF800FDF7F200F8ECE600EEE0DA00E7DD
      D300F0DDD600F5EEE500E8D5CE00E5D5CE00FAF1ED00F9F1EA00F9EFE800F6ED
      E400F2E8E100F6E7E400C1BEB900EFE3DF00F0E2DC00FBF2EF00FBF0EC00F9EF
      E800F7EDE600E3FFE9006BAD7A00A3E5B10063946E00EFE3DD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FDFFFF00FEFEFE00FEFFFD00FFFFFE00FFFF
      FE00FFFDFC00FDF9F800FAF6F500FBEFEB00F7EBE500A01F0600F7E8E500F2E5
      CF00F9E7DC00F6E6DA00F6E6DA00F6E6DA00F6E6DA00F8E7DE00F8E7DE00F8E7
      DE00F8E7DE00F6E7DE00F6E7DE00F6E7DE00F6E7DE00F7E8DF00F7E8DF00F7E8
      DF00F7E8DF00F7E6EA00FFE1ED00F1E5E500DDDDDD000000000000000000CCB9
      AC00D2915E00D8B89500DCA67D00EBA78200DEBB9300DBA98B00F0A98800EAE2
      D100FFE7DD00E1D6D200D69D7D00DDB68900E6B28300F9ECCC00F1D8E200CB61
      4A00CE826500DBA05A00CC836500D4865800CA836800C8835200D6854C00E1AD
      8500E4C3AF00FCDAE000F8DCCB00EAF1CE00FBE5D300F3D1D800FAD3E200F2F6
      D200F5E0D800F1C8C500BF622500B47A2800C0783000AD772A00CC7A4A00F2AF
      8800C3806500AD5A270093490700000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FCFE
      FE00FDFDFD00FEFFFD00FFFEFD00FFFFFE00FFFEFD00FFFBFA00FDF9F800FFF6
      F200FCF1ED00F7EDE600F4EAE300F2E8E100F1E6DE00F0E5DD00F0E5DD00F3E4
      DB00EEE4DA00F0E4DA00F4E2DB00CABFB700908D8500EBFFEC0087B69000EDFD
      F200EADDD500B29B8500BCBEBF00000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFE
      FF00FFFFFF00FEFEFE00FEFEFE00FFFEFA00FDF8F500FEF5F100F8EEE700E7DC
      D400ECD9D100ADA49A00E9D4CC00E1CFC800F9F0EC00FAF0E900F8EEE700F6ED
      E400F6ECE500FAEAE400807D7800F0E4E000F0E2DC00FBF2EF00FBF0EC00FAF0
      E900F7EDE600F6EFE600EBFFEC0087B69000EDFDF200EFE3DD00ABA9A900ACAA
      AA00ACAAAA00ACAAAA00AAA9AD00AAA9AD00AAA9AD00AAA9AD00B3A8A4000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FCFEFE00FDFDFD00FEFFFD00FFFEFD00FFFF
      FE00FFFEFD00FFFBFA00FDF9F800FFF6F200FCF1ED00CE1D0000B4190A00A832
      0800B0250B00B92B0C00B92B0C00B92B0C00B92B0C00B8290D00B8290D00B829
      0D00B8290D00B62A0D00B62A0D00B62A0D00B62A0D00B62A0B00B62A0B00B62A
      0B00B62A0B00C2361900B9220700AE230800B42F1B000000000000000000DAC4
      B900C88C6800D69F8000E1AE7600EAAF7D00D4AA8500DEAC9500DCAE8500E097
      8300EFE6CB00F0F2D400F0DED300E2927900F5F1D800F2D5CE00E0AF8900E1CD
      B400ECC99E00D2857200CC8D6700CD914F00E0896100BA7A4300E4ADA400E9C8
      9A00F9E5CC00F6D8CD00F2DADA00EAE3CA00FFD0B500F1E4CE00ECE1D300FFE3
      DE00FAE5C500F7ECD800ECBACC00D4802700B26B3200B8732E00CB744200C380
      4700E0AC7D00D68D5B0096460900000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FEFEFE00FEFFFD00FFFEFD00FFFDFC00FFFCFB00FFFBFA00FFFA
      F500FCF6F100F9F0EC00F4ECE500F2E8E100F0E5DD00F2E5DD00F3E6DE00F0E1
      D800EEE4DA00EEE2D800F1DFD800D1C4BC00908A8300FEF8F100EBDBD500EEDC
      D100E9DCD400B29B8500BDBFC000000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFE00FEFFFD00FEFCFB00FDF8F500FCF3EF00F8EDE900F4EE
      E100EAD7C800CDC0B000E4CDBE00E6CBBD00FAEFEB00F8EEE700F8ECE600F6EB
      E300EDE3DC00F4E4DE007C7A7200F0E2DC00EFE1DB00FBF2EF00FCF1ED00FAF0
      E900F7EDE600EFE8DF00F7E9E300FFFEFD00F0E4DE00EFE3DD00FDF1ED00FCF0
      EC00FAEEEA00F8ECE800F7EAE200F6E9E100F4E7DF00F3E6DE00FCE0D9000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FEFEFE00FEFFFD00FFFE
      FD00FFFDFC00FFFCFB00FFFBFA00FFFAF500FCF6F100F9F0EC00F4ECE500F2E8
      E100F0E5DD00F2E5DD00F3E6DE00F0E1D800EEE4DA00EEE2D800F1DFD800D1C4
      BC00908A8300FEF8F100EBDBD500EEDCD100E9DCD400B29B8500BDBFC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4C9BF00C6764D00CE997400DBB67E00E5AD8A00DDBB9000E8B6A400DAA6
      7800DAA86E00F2E8D700FAD7DB00F9F7D500EFD0B900E4A09900D1D1A100EEBF
      A000EBC6BE00ECD3A100D2836200D39D6800BE764C00E8AC8200E4CDA000E9CC
      C500E5D3C800F0DAB000E9E2D900F4D1AF00FFD9D500E9EDC400FBE6D000F8DB
      D200E8D3B800F1DBC200F6ECDB00DDB29F00D57B4500D2764D00B7743D00BA6D
      2800C98B3F00D99B7500A2443700000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFD00FFFDFC00FFFDFC00FEFCFB00FDFA
      F500FBF8F300F9F5F000F9F0EC00F6ECE500F3E7E100F1E3DD00F0E3DB00F2E3
      DA00EBE1D700EBDFD500F1DFD800CBBEB600C3BEB500E3DCD300EBD8D300ECDA
      CF00E8D8D100B0998300BFBEC000000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFE00FEFFFD00FFFBFA00FCF7F400FAF1ED00F6EBE700F2E9
      DC00F1DFD400C0AFA200E4CABC00DCBDAE00F8EDE900F6ECE500F6EAE400F4E9
      E100EFE4DC00F1E1DB00FDFBF300EEE0DA00EDDFD900FBF2EF00FCF1ED00FAF0
      E900F8EEE700F4EDE400F8EAE4007D7B7A00EEE2DC00EFE3DD00F8F1E800F8F1
      E800F6EFE600F4EDE400F7E9E300F5E7E100F3E5DF00F2E4DE00F4E8DC000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFE
      FD00FFFDFC00FFFDFC00FEFCFB00FDFAF500FBF8F300F9F5F000F9F0EC00F6EC
      E500F3E7E100F1E3DD00F0E3DB00F2E3DA00EBE1D700EBDFD500F1DFD800CBBE
      B600C3BEB500E3DCD300EBD8D300ECDACF00E8D8D100B0998300BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8BFB000D3775A00D5A08C00DDB67800D7AE8D00E1A88900DEBA
      9400DDB38900DC7E6700F8E0CC00F8F2C900E29D7C00ECBCA400F6B39400DACD
      AD00E9C8A700DDB4A500E4D1A400D4735700D1B18000E2C7A500F2CCBA00F9DB
      C000EBD4C500E6C6A900EAE1A200E5C8BA00FFD5D800DFD8B700F3D3C000EED2
      BA00EBD9C200F1D7BF00F3DFCD00EFDEE200E7B99700B86E1600C97D4D00C86F
      4A00B87F5200B0532200DBB49400000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFFFE00FFFE
      FA00FFFCF800FEFAF500FDF7F200FBF2EE00F8ECE600F3E5DF00EEE0DA00EFE0
      D700E7DDD300E6DAD000F0DDD600E8D8D100F5EEE500F5ECE300E8D5CE00EBD7
      CC00E5D5CE00B0988200BFBEC000000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFE00FEFFFD00FFFCF800FDF7F200FBF0EC00F5E9E300C9B5
      A400CBB4A400CCB09F00D6B5A100C9B1A500FCF6F100F4ECE500F0E5DD00F3E6
      DE00EEE4DA00F1DFD800908A8300EBDBD500E9DCD400FAF1ED00F9F1EA00F9EF
      E800F6EDE400F2E8E100F6E7E400C1BEB900EFE3DF00F0E2DC00FBF2EF00FBF0
      EC00F9EFE800F7EDE600F5EEE500F9EBE50082807F00F0E4DE00EFE3DD000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FFFFFE00FFFFFE00FFFEFA00FFFCF800FEFAF500FDF7F200FBF2
      EE00F8ECE600F3E5DF00EEE0DA00EFE0D700E7DDD300E6DAD000F0DDD600E8D8
      D100F5EEE500F5ECE300E8D5CE00EBD7CC00E5D5CE00B0988200BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F8C9C500D0755600C9A58100EEB58200EDB28A00E3AF
      9E00EAB38C00DCB99700D6BA8B00D3846900DCC39B00EDC1A400E8C0BB00F1BF
      8300DBC2A000F3C6AB00D9997A00FAE1D100E9C6A400E0BEAE00E6C9A200F5CB
      B400EECD9C00F1C9B600ECDBCE00FBBFAF00EAD4AA00E5CAC600ECC1AE00F4CF
      BB00FBE3CB00E6D3C400E6D1B500EFD3CC00EDDEC400EFC2B400C06E2600C86D
      3A00A6712000E7AF9200D69BB700000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FFFFFE00FFFF
      FB00FFFEFA00FFFCF800FEFAF500FFF6F200FDF2EE00F8ECE600F2E6E000EEDF
      D600ECE2D800ECE0D600E4D1C900D8C9C000B1ABA000F6ECE200E6D3CB00E8D4
      C900E4D2CB00AE968000BFBEC000000000000000000000000000000000000000
      000000000000000000000000000000000000E5D5C400FFFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFE00FEFFFD00FEFBF700FBF5F000F8EEE700F2E6E000FFFF
      F800F3F7F200F4ECE500E6DDCF00F7F1EC00FFFCF800FDF7F200F8ECE600EEE0
      DA00E7DDD300F0DDD600F5EEE500E8D5CE00E5D5CE00F9F0EC00FAF0E900F8EE
      E700F6EDE400F6ECE500FAEAE400807D7800F0E4E000F0E2DC00FBF2EF00FBF0
      EC00FAF0E900F7EDE600F6EFE600F9EBE5007E7C7B00EEE2DC00EFE3DD000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFFFE00FFFFFB00FFFEFA00FFFCF800FEFAF500FFF6
      F200FDF2EE00F8ECE600F2E6E000EEDFD600ECE2D800ECE0D600E4D1C900D8C9
      C000B1ABA000F6ECE200E6D3CB00E8D4C900E4D2CB00AE968000BFBEC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1D5B300D3835E00C9A27600D3C19800EA9F
      8900E9C2A600E6B9A400DBA89400D6C17D00EBBE9D00E9C48000F6B6B600DDB9
      A700F2C69D00D8A88400FDE4E200ECE8E700FCEFE100E8BEB200E4D1B600EFBC
      A200E0C79D00EBBCA000EBBC9C00EFCAA800E5D2B700DEC7AD00F3CFC500F0C5
      B400F1C7A200E7C4C000EDCBBB00F3CEA800F0CEB100F1E1B600D2AB9D00CD51
      2800D2A39B00CAA8A20000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFE
      FF00FFFEFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FFFD
      FC00FFFEFA00FFFCF800FDF8F500FEF8F300FEF5F100FCF1ED00F8EEE700F3E3
      DC00E7DCD400E8D9D000ECD9D100D5C4BB00ADA49A00F1E7DD00E9D4CC00E8D2
      C700E1CFC800AC947E00BEBDBF00000000000000000000000000000000000000
      000000000000000000000000000000000000E0CEC700FAFCF600FFFEFF00FDFF
      FF00FCFEFF00FBFDFD00FCFDFB00FFF8F500FBF2EE00F7EDE600F0E4DE00FFFA
      F300E9EBDF00E8D6CB00EBEFE900FCFCFC00FFFEFA00FDF8F500FEF5F100F8EE
      E700E7DCD400ECD9D100ADA49A00E9D4CC00E1CFC800FAEFEB00F8EEE700F8EC
      E600F6EBE300EDE3DC00F4E4DE007C7A7200F0E2DC00EFE1DB00FBF2EF00FCF1
      ED00FAF0E900F7EDE600EFE8DF00F7E9E300FFFEFD00F0E4DE00EFE3DD000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FFFEFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FFFDFC00FFFEFA00FFFCF800FDF8F500FEF8
      F300FEF5F100FCF1ED00F8EEE700F3E3DC00E7DCD400E8D9D000ECD9D100D5C4
      BB00ADA49A00F1E7DD00E9D4CC00E8D2C700E1CFC800AC947E00BEBDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2C8AA00CA765200E4BD9700DCAC
      8A00E3AF8A00ECAA9100EBCAA900F1BCA100E3BD9A00E0BBA100DEBD9600F1BD
      9F00DAA18800EBE1BF00EDF5E400FFF7FE00FFFBF700F5FFF600F0F3EA00E4AD
      9800E9B99D00E1C5A300EACA9900EFC1AF00E1AC8B00E0C39C00F2CCAE00F3C7
      AA00E7BE9700E3CFA600EBC8BA00F1C0A600F5DDC700E0C0BA00BC5D0D00D0A1
      8200D7BCB2000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFE
      FF00FEFDFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FDFFFF00FDFFFF00FFFD
      FC00FFFDFC00FFFCF800FDF8F500FDF7F200FBF5F000FAF1ED00F6EDE900FAEA
      E300F1E6DE00E6D7CE00E8D5CD00D0BFB600B2A99F00F2E8DE00E3CEC600E6D0
      C500DFCDC600AD927D00C0BDBF00000000000000000000000000000000000000
      000000000000000000000000000000000000E5D2CB00FFFFF900FCFCFC00FFFD
      FF00FFFEFE00FFFDFC00FEFAF900FFF5F500FBEFED00F8E9E600F1E0DD00FBF2
      E500E1D6CE00F7F1EA00F5FEFF00FFFFFF00FEFCFB00FDF8F500FCF3EF00F8ED
      E900F4EEE100EAD7C800CDC0B000E4CDBE00E6CBBD00F8EDE900F6ECE500F6EA
      E400F4E9E100EFE4DC00F1E1DB00FDFBF300EEE0DA00EDDFD900FBF2EF00FCF1
      ED00FAF0E900F8EEE700F4EDE400F8EAE4007D7B7A00EEE2DC00EFE3DD000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFEFF00FEFDFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FDFFFF00FDFFFF00FFFDFC00FFFDFC00FFFCF800FDF8F500FDF7
      F200FBF5F000FAF1ED00F6EDE900FAEAE300F1E6DE00E6D7CE00E8D5CD00D0BF
      B600B2A99F00F2E8DE00E3CEC600E6D0C500DFCDC600AD927D00C0BDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3CDC100CB715200DBBC
      8900E0C9A300E2BD8900E59F8700F4B2B700E3C99300DFC0AB00EAC6A200DCA9
      8800F6DAC200F1EAE100F7FCED00F6F8F900FAF9FF00F6F7F500FFFAFE00F9FF
      F600F3F3DB00E7BFA600E7ADA100D8AE8100DDC7A400E7BF9C00E8C08F00E6B7
      9100F1C0B000DBCD9800E0BC9E00E6B8BE00E4CD8F00BE700C00D6A69A00D9B9
      B400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FEFCFB00FEFBF700FDF8F500FDF6F300FCF3EF00FAEFEB00F8EDE900F2E9
      DC00F4EEE100ECE1D300EAD7C800D5C0B100CDC0B000E0D1C100E4CDBE00D7CE
      C000E6CBBD00A58D8100C2C3BA00000000000000000000000000000000000000
      000000000000000000000000000000000000DDD0C800F7FFF500F7FCFA00FFFB
      FF00FFFCFF00FFFDFF00FFFAFC00FFF4F200F9EDE900F4E4DE00EEDAD500F3E3
      D700F1F2EE00ECFAF600FFFAFF00FFFFFF00FFFBFA00FCF7F400FAF1ED00F6EB
      E700F2E9DC00F1DFD400C0AFA200E4CABC00DCBDAE00FCF6F100F4ECE500F0E5
      DD00F3E6DE00EEE4DA00F1DFD800908A8300EBDBD500E9DCD400FAF1ED00F9F1
      EA00F9EFE800F6EDE400F2E8E100F6E7E400C1BEB900EFE3DF00F0E2DC000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFBF700FDF8F500FDF6
      F300FCF3EF00FAEFEB00F8EDE900F2E9DC00F4EEE100ECE1D300EAD7C800D5C0
      B100CDC0B000E0D1C100E4CDBE00D7CEC000E6CBBD00A58D8100C2C3BA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D1BC00C278
      4E00DABF8C00F1B19F00DCCCA700D9C39A00E4BCA000DDC19800DB9F7100F1DC
      DB00F6FBEC00FFF3EC00FCF2F800FAFBFF00FEF2F000F1F6ED00F9EDF900EEF4
      F300FFF9FC00FBFAF600FFF0E900DAB2A600E5B18D00E0B29300E2B59400E4B9
      8600D8B29A00E9A89A00F4CC9C00DFB5A900DE764B00DD9D8400DCBDA6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FEFCFB00FEFBF700FDF8F500FCF5F200FBF2EE00FAEFEB00F7ECE800F4E7
      E500EAE1DE00F1E5E100E6D2CD00E4CEC900E9D9D300ECD9D400DFC6C200D7C8
      B800E5C8BA00A28A7E00C8C6BE00000000000000000000000000000000000000
      000000000000000000000000000000000000F1D1CC00DECEC700DECAC900DFCC
      BD00DECCBB00DCCAB900DCC8B600DAC1B100D4BCAA00CCB4A000C7AF9B00FFF9
      F400F8FFFF00F7FEFB00FEFEFE00FFFFFF00FFFCF800FDF7F200FBF0EC00F5E9
      E300C9B5A400CBB4A400CCB09F00D6B5A100C9B1A500FFFCF800FDF7F200F8EC
      E600EEE0DA00E7DDD300F0DDD600F5EEE500E8D5CE00E5D5CE00F9F0EC00FAF0
      E900F8EEE700F6EDE400F6ECE500FAEAE400807D7800F0E4E000F0E2DC000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FEFCFB00FEFBF700FDF8F500FCF5
      F200FBF2EE00FAEFEB00F7ECE800F4E7E500EAE1DE00F1E5E100E6D2CD00E4CE
      C900E9D9D300ECD9D400DFC6C200D7C8B800E5C8BA00A28A7E00C8C6BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6C0
      B400CE8E7000DBBA8C00E7BE9D00EFC8B200DBC39500F1D2AB00F3B5A300F4F7
      E800FFF7EE00FFFEFF00E8EEF500F6F7F300FFF2F400F2FFFB00F7F4E600FFF2
      FD00E6FEF400ECF8E400FFFBF400FFFFF200FFFCF700F6F7FB00F2FBE100EBED
      F700E7FDE100F4FFE700F6E2EF00D8905000BC967400E7D1CB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FFFBFA00FDFAF600FCF7F400FCF6F100FAF1ED00F9EEEA00F6EBE700F7E6
      DD00F2E9DC00F1E8DB00F1DFD400DFC9BD00C0AFA200E9D8CB00E4CABC00DECA
      B900DCBDAE00A0887C00D2CFC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5D5C400FFFFFF00FFFF
      FC00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFBF700FBF5F000F8EEE700F2E6
      E000FFFFF800F3F7F200F4ECE500E6DDCF00F7F1EC00FFFEFA00FDF8F500FEF5
      F100F8EEE700E7DCD400ECD9D100ADA49A00E9D4CC00E1CFC800FAEFEB00F8EE
      E700F8ECE600F6EBE300EDE3DC00F4E4DE007C7A7200F0E2DC00EFE1DB000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFBFA00FDFAF600FCF7F400FCF6
      F100FAF1ED00F9EEEA00F6EBE700F7E6DD00F2E9DC00F1E8DB00F1DFD400DFC9
      BD00C0AFA200E9D8CB00E4CABC00DECAB900DCBDAE00A0887C00D2CFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7E7BF00D7715E00D6CC9C00F5B3A100F4C7AC00ECA9AE00DCC89800F4DF
      C400FFFBFD00F0F6EB00FAFFFF00E8F6F000F2F9F200FDF6F900FEF0EA00F1FF
      F900F5FBFF00F8F9F700F7F8FC00F8EAEE00FAF6FB00FEF2EE00FFF7FF00FFF4
      F600FCEEF900FFF8FF00C4793400C29A5200EBC7CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      FC00FFFCF800FEF9F600FEF7F400FDF4F000FAF1ED00F8EDE900F6EAE400F8E9
      E000E5E0D700E3E1D700E9DED600DACBC200C2B6AC00E1D5C900D6C3B600D8BE
      AD00E4C7B90098827700E1DBD400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0CEC700FAFCF600FFFE
      FF00FDFFFF00FCFEFF00FBFDFD00FCFDFB00FFF8F500FBF2EE00F7EDE600F0E4
      DE00FFFAF300E9EBDF00E8D6CB00EBEFE900FCFCFC00FEFCFB00FDF8F500FCF3
      EF00F8EDE900F4EEE100EAD7C800CDC0B000E4CDBE00E6CBBD00F8EDE900F6EC
      E500F6EAE400F4E9E100EFE4DC00F1E1DB00FDFBF300EEE0DA00EDDFD9000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDFC00FFFCF800FEF9F600FEF7F400FDF4
      F000FAF1ED00F8EDE900F6EAE400F8E9E000E5E0D700E3E1D700E9DED600DACB
      C200C2B6AC00E1D5C900D6C3B600D8BEAD00E4C7B90098827700E1DBD4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDE4C200DF755D00D6D4B600FBC5A400DDC2B400E6C5B100E2A7
      7900FAFFF000FAEEEE00F8F6EE00F7FFF300F2F0F600F6F2F700F2FFF800FDF7
      FC00FDF1EF00FAF6FF00F9F7F700F1F8F300FFFFF800F5F1FC00FCF4F400FEF8
      F900FFFFEC00C4693600CB9E8900E0C8D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFE
      FA00FFFCF800FEF9F600FDF7F200FCF3EF00FBF0EC00F7EDE600F5E9E300E5C3
      B300C9B5A400C0B09F00CBB4A400CFB2A300CCB09F00CEB39F00D6B5A100CEB5
      A500C9B1A500C2B0A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5D2CB00FFFFF900FCFC
      FC00FFFDFF00FFFEFE00FFFDFC00FEFAF900FFF5F500FBEFED00F8E9E600F1E0
      DD00FBF2E500E1D6CE00F7F1EA00F5FEFF00FFFFFF00FFFBFA00FCF7F400FAF1
      ED00F6EBE700F2E9DC00F1DFD400C0AFA200E4CABC00DCBDAE00FCF6F100F4EC
      E500F0E5DD00F3E6DE00EEE4DA00F1DFD800908A8300EBDBD500E9DCD4000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFEFA00FFFCF800FEF9F600FDF7F200FCF3
      EF00FBF0EC00F7EDE600F5E9E300E5C3B300C9B5A400C0B09F00CBB4A400CFB2
      A300CCB09F00CEB39F00D6B5A100CEB5A500C9B1A500C2B0A900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2EFD000C8854000DDC0AB00F6E7AF00ECBEB600E9D8
      B100D29F8B00F2FFFA00F6FFF500FFE9EC00F1FDFF00F8FFF900F4F5F900FFF1
      FF00FCEFED00FFF8F500F8FFF000F5FDF600EAF8F200F5FFEB00FBFEFC00F7F8
      EF00BD714100CFA08100EACCBB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFD
      F900FFFCF800FDF8F500FCF6F100FBF2EE00F9EFE800F6EAE400F4E8E200D2BE
      BD00FFFDFA00FAFFFD00FFFDFD00FFF6F600FFF3F100F3E8E400F0E0D900F2DC
      D000D6C5BC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDD0C800F7FFF500F7FC
      FA00FFFBFF00FFFCFF00FFFDFF00FFFAFC00FFF4F200F9EDE900F4E4DE00EEDA
      D500F3E3D700F1F2EE00ECFAF600FFFAFF00FFFFFF00FFFCF800FDF7F200FBF0
      EC00F5E9E300C9B5A400CBB4A400CCB09F00D6B5A100C9B1A500FFFCF800FDF7
      F200F8ECE600EEE0DA00E7DDD300F0DDD600F5EEE500E8D5CE00E5D5CE000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFDF900FFFCF800FDF8F500FCF6F100FBF2
      EE00F9EFE800F6EAE400F4E8E200D2BEBD00FFFDFA00FAFFFD00FFFDFD00FFF6
      F600FFF3F100F3E8E400F0E0D900F2DCD000D6C5BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8E1D200D1958500E1B8A100ECDFB900F9D0
      B700E5DFB600D8A88C00FFF7F500F8FDFB00F8F7F300FCF6F700F6FBFE00FFF4
      F100FDFDEB00F6FAFB00FBF0FF00FDEFF100F9F9E700FFFEF900F1E1FF00DB77
      3C00C49F8B00E8D5C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFC
      F800FEFBF700FCF7F400FBF5F000FAF1ED00F8EEE700F5E9E300F2E6E000D2BF
      B700FFFFF800F5FFF800F3F7F200F5F1EC00F4ECE500E7E1D600E6DDCF00D2C3
      BA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F1D1CC00DECEC700DECA
      C900DFCCBD00DECCBB00DCCAB900DCC8B600DAC1B100D4BCAA00CCB4A000C7AF
      9B00FFF9F400F8FFFF00F7FEFB00FEFEFE00FFFFFF00FEFBF700FBF5F000F8EE
      E700F2E6E000FFFFF800F3F7F200F4ECE500E6DDCF00F7F1EC00FFFEFA00FDF8
      F500FEF5F100F8EEE700E7DCD400ECD9D100ADA49A00E9D4CC00E1CFC8000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FEFBF700FCF7F400FBF5F000FAF1
      ED00F8EEE700F5E9E300F2E6E000D2BFB700FFFFF800F5FFF800F3F7F200F5F1
      EC00F4ECE500E7E1D600E6DDCF00D2C3BA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7CFC300D8918300F0C6BA00E4DE
      AF00FBC8CF00ECEBCF00D1AF7A00FFF3F700F9FAF800F0FEF800FAF4E700EFFD
      F700F4F9FC00FFF3FF00FEEDF000FBFFFF00F5FFF800F0E5E800CC822A00C790
      9F00F5E2D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5C400FBFDFE00FFFFFF00FDFFFF00FFFFFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFE00FEFFFD00FEFFFD00FFFC
      F800FDFAF600FBF7F200FAF4EF00F9F0EC00F7EDE600F4E8E200F1E5DF00DEC1
      BA00FFFDF400F7FAF100F6F3EE00F6EAE600EFDFD800E5D7CB00D6C5B8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0CEC700FAFC
      F600FFFEFF00FDFFFF00FCFEFF00FBFDFD00FCFDFB00FFF8F500FBF2EE00F7ED
      E600F0E4DE00FFFAF300E9EBDF00E8D6CB00EBEFE900FCFCFC00FEFCFB00FDF8
      F500FCF3EF00F8EDE900F4EEE100EAD7C800CDC0B000E4CDBE00E6CBBD000000
      0000000000000000000000000000000000000000000000000000E5D5C400FBFD
      FE00FFFFFF00FDFFFF00FFFFFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FEFFFD00FEFFFD00FFFCF800FDFAF600FBF7F200FAF4EF00F9F0
      EC00F7EDE600F4E8E200F1E5DF00DEC1BA00FFFDF400F7FAF100F6F3EE00F6EA
      E600EFDFD800E5D7CB00D6C5B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3E0D800D2856500EEDE
      C700EAE0B100ECD7C100E9D3D500E0B87D00F5F8FF00FDFEFC00F4F9FA00FFFA
      F900F7FFFE00FDF0E800FCF8F700EBFFF300EBE7E200C6871400DE976B00E1E4
      DB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0CEC700FDFFFF00FAFCF600F9FCFF00FFFEFF00FDFF
      FF00FDFFFF00FDFFFF00FCFEFF00FBFDFD00FBFDFD00FAFCFC00FCFDFB00FFFA
      F700FFF8F500FEF5F200FBF2EE00FBF0EC00F7EDE600F3E7E100F0E4DE00DBC1
      BB00FFFAF300F3F6ED00E9EBDF00F2E2D600E8D6CB00D0C5BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D2CB00FFFF
      F900FCFCFC00FFFDFF00FFFEFE00FFFDFC00FEFAF900FFF5F500FBEFED00F8E9
      E600F1E0DD00FBF2E500E1D6CE00F7F1EA00F5FEFF00FFFFFF00FFFBFA00FCF7
      F400FAF1ED00F6EBE700F2E9DC00F1DFD400C0AFA200E4CABC00DCBDAE000000
      0000000000000000000000000000000000000000000000000000E0CEC700FDFF
      FF00FAFCF600F9FCFF00FFFEFF00FDFFFF00FDFFFF00FDFFFF00FCFEFF00FBFD
      FD00FBFDFD00FAFCFC00FCFDFB00FFFAF700FFF8F500FEF5F200FBF2EE00FBF0
      EC00F7EDE600F3E7E100F0E4DE00DBC1BB00FFFAF300F3F6ED00E9EBDF00F2E2
      D600E8D6CB00D0C5BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDE4E100CF93
      7B00EFD6BC00F1DBD000F6E2C300F9E6DF00D1AB7100F0FFF900FEEAEF00FFFC
      F900F1FEFC00F9F0F300FFFDFD00F8EAFC00CA883700DA9F6E00EDDED5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8D0CA00FEFCFC00FFFDF800FEFAFF00FFFAFC00FCFF
      FD00FCFFFD00FCFFFD00FEFFFB00FEFFFB00FEFFFA00FDFFF900FCFEF800FFFC
      F700FFFAF300FCF6EF00FBF3EC00FAF1E800F6EDE400F2E7DF00EEE4DA00D5C2
      BA00FFF3EB00EFEEE400F3E6DE00E2D3CA00D7C4BC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDD0C800F7FF
      F500F7FCFA00FFFBFF00FFFCFF00FFFDFF00FFFAFC00FFF4F200F9EDE900F4E4
      DE00EEDAD500F3E3D700F1F2EE00ECFAF600FFFAFF00FFFFFF00FFFCF800FDF7
      F200FBF0EC00F5E9E300C9B5A400CBB4A400CCB09F00D6B5A100C9B1A5000000
      0000000000000000000000000000000000000000000000000000E8D0CA00FEFC
      FC00FFFDF800FEFAFF00FFFAFC00FCFFFD00FCFFFD00FCFFFD00FEFFFB00FEFF
      FB00FEFFFA00FDFFF900FCFEF800FFFCF700FFFAF300FCF6EF00FBF3EC00FAF1
      E800F6EDE400F2E7DF00EEE4DA00D5C2BA00FFF3EB00EFEEE400F3E6DE00E2D3
      CA00D7C4BC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F0DD
      DA00DAA68200E9D8C500F9D6C900FFE8DD00ECE5D600E4A38E00F1FFE600F2EE
      E900F6F7F500FFFFFE00F7F3F900E0834C00D7A0850000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D2CB00FAFCFC00FFFFF900FAFEFF00FCFCFC00FFFE
      FF00FFFDFF00FFFDFF00FFFEFE00FFFDFE00FFFDFC00FFFBFA00FEFAF900FFF8
      F800FFF5F500FCF3F000FBEFED00FAEEEA00F8E9E600F5E4E100F1E0DD00D4C7
      B900FBF2E500F5E2DB00E1D6CE00DCC6C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1D1CC00DECE
      C700DECAC900DFCCBD00DECCBB00DCCAB900DCC8B600DAC1B100D4BCAA00CCB4
      A000C7AF9B00FFF9F400F8FFFF00F7FEFB00FEFEFE00FFFFFF00FEFBF700FBF5
      F000F8EEE700F2E6E000FFFFF800F3F7F200F4ECE500E6DDCF00000000000000
      0000000000000000000000000000000000000000000000000000E5D2CB00FAFC
      FC00FFFFF900FAFEFF00FCFCFC00FFFEFF00FFFDFF00FFFDFF00FFFEFE00FFFD
      FE00FFFDFC00FFFBFA00FEFAF900FFF8F800FFF5F500FCF3F000FBEFED00FAEE
      EA00F8E9E600F5E4E100F1E0DD00D4C7B900FBF2E500F5E2DB00E1D6CE00DCC6
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F8E400DF946800E8E0E000F8DDB800FAD7D400F0E7B500DDA9A900FFFC
      FF00F9EFDD00F9FFF900CE774F00C3A27500F5E0E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8D0CA00FEFCFC00FDFBF300FBFAFC00FFFFFF00FCFF
      FD00FCFFFD00FBFEFC00FCFFFB00FCFFFB00FBFFF900FBFDF700F9FBF500FEFC
      F400FBF9EF00F7F5EB00F7F0E700F6EDE300F2E8DE00EFE3D900EBDFD300D3C7
      B500FFEFE400EBDED600D7C1BC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0CE
      C700FAFCF600FFFEFF00FDFFFF00FCFEFF00FBFDFD00FCFDFB00FFF8F500FBF2
      EE00F7EDE600F0E4DE00FFFAF300E9EBDF00E8D6CB0000000000000000000000
      0000000000000000000000000000000000000000000000000000E8D0CA00FEFC
      FC00FDFBF300FBFAFC00FFFFFF00FCFFFD00FCFFFD00FBFEFC00FCFFFB00FCFF
      FB00FBFFF900FBFDF700F9FBF500FEFCF400FBF9EF00F7F5EB00F7F0E700F6ED
      E300F2E8DE00EFE3D900EBDFD300D3C7B500FFEFE400EBDED600D7C1BC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECF5E000E9A05C00DDDAF300F6C59D00E8C9C000DADBAF00D6AA
      9D00EAF1E200DA846C00E2A99300E8DCE2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DDD0C800FAFFFF00F7FFF500F8FEFD00F7FCFA00FDFB
      FF00FFFBFF00FFFBFF00FFFCFF00FFFCFF00FFFDFF00FEFBFD00FFFAFC00FFF8
      F500FFF4F200FCF1ED00F9EDE900F7E8E500F4E4DE00F1DED900EEDAD500DBC6
      B700F3E3D700D6C2BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5D2
      CB00FFFFF900FCFCFC00FFFDFF00FFFEFE00FFFDFC00FEFAF900FFF5F500FBEF
      ED00F8E9E600F1E0DD00FBF2E500E1D6CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDD0C800FAFF
      FF00F7FFF500F8FEFD00F7FCFA00FDFBFF00FFFBFF00FFFBFF00FFFCFF00FFFC
      FF00FFFDFF00FEFBFD00FFFAFC00FFF8F500FFF4F200FCF1ED00F9EDE900F7E8
      E500F4E4DE00F1DED900EEDAD500DBC6B700F3E3D700D6C2BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E09B5200E7D5B600E7D5C400FFE8E800EDE3
      CB00D2927300D4B18F00EEE1CB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3D1CA00FBFEFC00FEFFF700FDFFFF00FEFCFB00FDFF
      FF00FDFFFF00FCFEFE00FCFFFD00FCFFFD00FBFEFC00FBFCF800F9FAF600FDFA
      F200FCF6EF00F8F2EB00F7F0E700F3ECE300F0E7DD00ECE3D900EAE0D600DAC7
      BA00D8C5BE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDD0
      C800F7FFF500F7FCFA00FFFBFF00FFFCFF00FFFDFF00FFFAFC00FFF4F200F9ED
      E900F4E4DE00EEDAD500F3E3D700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E3D1CA00FBFE
      FC00FEFFF700FDFFFF00FEFCFB00FDFFFF00FDFFFF00FCFEFE00FCFFFD00FCFF
      FD00FBFEFC00FBFCF800F9FAF600FDFAF200FCF6EF00F8F2EB00F7F0E700F3EC
      E300F0E7DD00ECE3D900EAE0D600DAC7BA00D8C5BE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAF3DF00DCB19E00F3E0CB00E7E1BE00CF93
      6500BEA29700FAE4DF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1D1CC00E3D5D600DECEC700DCCACB00DECAC900DFCC
      BD00DFCCBD00DFCCBD00DECCBB00DDCBBA00DCCAB900DDC9B700DCC8B600DCC3
      B300DAC1B100D7BFAD00D4BCAA00D0B8A600CCB4A000C9B19D00C7AF9B00D4C4
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1D1
      CC00DECEC700DECAC900DFCCBD00DECCBB00DCCAB900DCC8B600DAC1B100D4BC
      AA00CCB4A000C7AF9B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F1D1CC00E3D5
      D600DECEC700DCCACB00DECAC900DFCCBD00DFCCBD00DFCCBD00DECCBB00DDCB
      BA00DCCAB900DDC9B700DCC8B600DCC3B300DAC1B100D7BFAD00D4BCAA00D0B8
      A600CCB4A000C9B19D00C7AF9B00D4C4BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E6DED100DFB29100D29A8100DBCA
      C100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000B80000008A0000000100010000000000F00C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFC00000000000000000000
      0000000000000000FFC00000001C000000000000000000000000000000000000
      FFC00000001C000000000000000000000000000000000000FFC00000001C0000
      00000000000000000000000000000000FFC00000001C00000000000000000000
      0000000000000000FFC00000001C000000000000000000000000000000000000
      FFC00000001C000000000000000000000000000000000000FFC00000001C0000
      00000000000000000000000000000000FF800000001C00000000000000000000
      0000000000000000FE000000001C000000000000000000000000000000000000
      FC000000001C000000000000000000000000000000000000F8000000001C0000
      00000000000000000000000000000000F8000000001C00000000000000000000
      0000000000000000F0000000001C000000000000000000000000000000000000
      E0000000001C000000000000000000000000000000000000E0000000001C0000
      00000000000000000000000000000000C0000000001C00000000000000000000
      0000000000000000C0000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      0000000000000000000000000000000080000000001C00000000000000000000
      000000000000000080000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      0000000000000000000000000000000080000000001C00000000000000000000
      000000000000000080000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      00000000000000000000000000000000C0000000001C00000000000000000000
      0000000000000000C0000000001C000000000000000000000000000000000000
      C0000000001C000000000000000000000000000000000000E0000000001C0000
      00000000000000000000000000000000F0000000001C00000000000000000000
      0000000000000000F8000000001C000000000000000000000000000000000000
      FC000000003C000000000000000000000000000000000000FE000000007C0000
      00000000000000000000000000000000FFC0000000FC00000000000000000000
      0000000000000000FFC0000001FC000000000000000000000000000000000000
      FFC0000003FC000000000000000000000000000000000000FFC0000007FC0000
      00000000000000000000000000000000FFC000000FFC00000000000000000000
      0000000000000000FFC000001FFC000000000000000000000000000000000000
      FFC000003FFC000000000000000000000000000000000000FFC000007FFC0000
      00000000000000000000000000000000FFC00000FFFC00000000000000000000
      0000000000000000FFFFFFFFFFFC000000000000000000000000000000000000
      FFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC00000000FFF800
      000003FFE0000000007FFFFE00000100FC00000000FFF000000003FFC0000000
      007FFFFE00000100FC00000000FFF000000003FFC0000000007FFFFE00000100
      FC00000000FFF000000003FFC0000000007FFFFE00000100FC00000000FFF000
      000003FFC0000000007FFFFE00000100FC00000000FFF000000003FFC0000000
      007FFFFE00000100FC0000000003F0000000000FC0000000007FFFFE00000100
      FC0000000003F0000000000FC0000000007FFFFE00000100FC0000000003F000
      0000000FC0000000007FFFFE00000100FC0000000003F0000000000FC0000000
      0070000E00000100FC0000000003F0000000000FC00000000070000E00000100
      FC0000000003F0000000000FC00000000070000E00000100FC0000000003F000
      0000000FC00000000070000E00000100FC0000000003F0000000000FC0000000
      0070000E00000100FC0000000003F0000000000FC00000000070000000000100
      FC00000000FFF000000003FFC00000000070000000000100FC00000000FFF000
      000003FFC00000000070000000000100FC00000000FFF000000003FFC0000000
      0070000000000100FC00000000FFF000000003FFC00000000070000000000100
      FC00000000FFF000000003FFC00000000070000000000100FC00000000FFF000
      000003FFC00000000070000000000300FC00000000FFF000000003FFC0000000
      0070000000000300FC00000001FFF000000003FFC00000000070000000000100
      FC00000001FFF000000003FFC00000001FF0000000000100FC00000001FFF000
      000003FFC00000001FF0000000000100FC00000001FFF000000003FFC0000000
      1FF0000000000100FC00000001FFF000000003FFC00000001FF0000000000100
      FC00000001FFF000000003FFC00000001FF0000000000100FC00000001FFF000
      000003FFC00000001FF0000000000100FC00000001FFF000000003FFC0000000
      1FF0000000000100FC00000001FFF000000003FFC00000001FF0000000000100
      FC00000001FFF000000007FFC00000001FFFF80000000100FC00000001FFF000
      000007FFC00000001FFFF80000000100FC00000003FFF00000000FFFC0000000
      3FFFF80000000100FC00000007FFF00000001FFFC00000007FFFF80000000100
      FC0000000FFFF00000003FFFC0000000FFFFF80000000100FC0000001FFFF000
      00007FFFC0000001FFFFFFFC00000100FC0000003FFFF0000000FFFFC0000003
      FFFFFFFC00000100FC0000007FFFF0000001FFFFC0000007FFFFFFFC00000100
      FC000000FFFFF0000003FFFFC000000FFFFFFFFC00000300FC000001FFFFF000
      0007FFFFC000001FFFFFFFFFFE000700FC000003FFFFF000000FFFFFC000003F
      FFFFFFFFFE000F00FC000007FFFFF000001FFFFFC000007FFFFFFFFFFE001F00
      FC00000FFFFFF000003FFFFFC00000FFFFFFFFFFFE003F00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFE007FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FC000000007FFFFFFFC003FFE0000000007FFFFC0FF00100
      FC000000007FFFFFFFC003FFC0000000007FFFF000F00100FC000000007FFFFF
      FFC003FFC0000000007FFFE000000100FC000000007FFFFFFFC003FFC0000000
      007FFFC000000100FC000000007FFFFFFFC003FFC0000000007FFF8000000100
      FC000000007FFFFFFFC003FFC0000000007FFF0000000100FC000000007FFFFF
      FFC003FFC0000000007FFE0000000100FC000000007FFFFFFFC003FFC0000000
      007FFC0000000100FC000000007FFFFFFFC003FFC0000000007FF80000000100
      FC000000007F0000FFC003FFC0000000007FF00000000100FC000000007F0000
      FFC003FFC0000000007FE00000000100FC00000000030000F800001FC0000000
      007FC00000000100FC00000000030000F000001FC0000000007F800000000300
      FC00000000070000F800003FC0000000007F000000000700FC000000000F0000
      0000007FC0000000007E000000000F00FC000000001F0000000000FFC0000000
      007C000000001F00FC000000003F0000000001FFC00000000078000000001F00
      FC000000007F0000000003FFC00000000070000000001F00FC00000000FF0000
      000007FFC00000000060000000000F00FC00000001FF000000001FFFC0000000
      0060000000000700FC00000001FF000000003FFFC00000000060000000000300
      FC00000001FF000000003FFFC00000000060000000000100FC00000001FF0000
      0000001FC00000000060000000000100FC00000001FF00000000001FC0000000
      1FF0000000000100FC00000001FF00000000001FC00000001FF8000000000100
      FC00000001FF00000000001FC00000001FFC000000000100FC00000001FF0000
      0000001FC00000001FFE000000000300FC00000001FF00000000001FC0000000
      1FFF000000000700FC00000001FF00000000001FC00000001FFF800000000F00
      FC00000001FF00000000001FC00000001FFFC00000001F00FC00000001FF0000
      0000001FC00000001FFFE00000003F00FC00000001FFFF800000001FC0000000
      1FFFF00000007F00FC00000001FFFF800000001FC00000001FFFF8000000FF00
      FC00000003FFFF800000001FC00000003FFFFC000001FF00FC00000007FFFF80
      0000001FC00000007FFFFE000003FF00FC0000000FFFFF800000001FC0000000
      FFFFFF000007FF00FC0000001FFFFFFFC000001FC0000001FFFFFF80000FFF00
      FC0000003FFFFFFFC000001FC0000003FFFFFFC0001FFF00FC0000007FFFFFFF
      C000001FC0000007FFFFFFE0007FFF00FC000000FFFFFFFFC000003FC000000F
      FFFFFFF0007FFF00FC000001FFFFFFFFFFE0007FC000001FFFFFFFF800FFFF00
      FC000003FFFFFFFFFFE000FFC000003FFFFFFFFE01FFFF00FC000007FFFFFFFF
      FFE001FFC000007FFFFFFFFE03FFFF00FC00000FFFFFFFFFFFE003FFC00000FF
      FFFFFFFF0FFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000}
  end
  object ilBig: TImageList
    Height = 114
    Width = 143
    Left = 1168
    Top = 24
  end
  object ImageList2: TImageList
    Height = 46
    Width = 46
    Left = 728
    Top = 32
    Bitmap = {
      494C010109000E0004002E002E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000B80000008A0000000100200000000000C08C
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E100C9C9
      C900AFAFAF00A7A7A700ABABAB00A7A7A700A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900A9A9A900AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00A9A9A900A9A9A900A9A9A900AAAAAA00AAAA
      AA00ABABAB00ABABAB00ABABAB00A7A7A700AAAAAA00B2B2B200C8C8C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB00C6C6
      C600A3A3A3009E9E9E00A2A2A2009F9F9F009F9F9F009F9F9F009F9F9F00A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A0009F9F9F009F9F
      9F009F9F9F009F9F9F009F9F9F00A1A1A100A1A1A100A1A1A100A2A2A200A2A2
      A200A2A2A200A2A2A200A2A2A2009D9D9D00A4A4A4009B9B9B00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FCFC
      FC00F6F6F600F8F8F800F6F6F600F4F4F400F4F4F400F4F4F400F3F3F300F2F2
      F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0F000EFEFEF00EEEE
      EE00EDEDED00EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E8E8E800E7E7
      E700E7E7E700E6E6E600E6E6E600E6E6E600DFDFDF00A6A6A600BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00FDFD
      FD00FDFDFD00FAFAFA00F5F5F500F6F6F600F6F6F600F5F5F500F4F4F400F3F3
      F300F3F3F300F2F2F200F2F2F200F1F1F100F0F0F000EFEFEF00EEEEEE00EDED
      ED00ECECEC00EBEBEB00EBEBEB00EAEAEA00E9E9E900E8E8E800E7E7E700E6E6
      E600E5E5E500E5E5E500E5E5E500E8E8E800E2E2E2009D9D9D00BBBBBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4D4D400FDFD
      FD00FCFCFC00F4F4F400F0F0F000EBEBEB00EBEBEB00ECECEC00EDEDED00EEEE
      EE00EFEFEF00F0F0F000F1F1F100F0F0F000F0F0F000EFEFEF00EEEEEE00EDED
      ED00EDEDED00ECECEC00ECECEC00E8E8E800E7E7E700E6E6E600E5E5E500E4E4
      E400E3E3E300E3E3E300E3E3E300E4E4E400E5E5E5009F9F9F00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB00F2F2
      F200EDEDED00EBEBEB00DDDDDD00DCDCDC00D3D3D300D9D9D900DDDDDD00E4E4
      E400E8E8E800EBEBEB00ECECEC00EEEEEE00F0F0F000F1F1F100F0F0F000EFEF
      EF00EEEEEE00EDEDED00ECECEC00E8E8E800EBEBEB00ECECEC00E1E1E100E9E9
      E900FDFDFD00FEFEFE00E3E3E300E5E5E500E3E3E3009F9F9F00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00E1E1
      E100D6D6D600CACACA00C0C0C000B3B3B300BABABA00B9B9B900C0C0C000CACA
      CA00D3D3D300DCDCDC00E4E4E400E8E8E800EBEBEB00EEEEEE00EFEFEF00EEEE
      EE00EDEDED00EDEDED00ECECEC00E8E8E800E9E9E900E4E4E400EFEFEF00C2C2
      C2007D7D7D00FBFBFB00E2E2E200E5E5E500E3E3E3009F9F9F00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00A9A9A900C2C2
      C200BBBBBB00AEAEAE00AAAAAA00A5A5A500A4A4A400A0A0A000AEAEAE00ADAD
      AD00B5B5B500BDBDBD00CACACA00D9D9D900E1E1E100EAEAEA00EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EAEAEA00EAEAEA00E9E9E900E8E8E800BFBF
      BF0079797900FEFEFE00E0E0E000E5E5E500E3E3E3009F9F9F00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500D6D6D600B5B5B5009A9A9A00A6A6
      A600A8A8A800A0A0A0009D9D9D0097979700949494009A9A9A00969696009797
      9700A4A4A400A5A5A500B4B4B400C1C1C100CFCFCF00E1E1E100EAEAEA00EDED
      ED00EDEDED00EDEDED00EEEEEE00E8E8E800E7E7E700E8E8E800EAEAEA00C2C2
      C20080808000F9F9F900E5E5E500E5E5E500E3E3E3009F9F9F00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5E5E500CFCFCF00BABABA00A1A1A100808080005B5B
      5B0042424200313131002D2D2D00313131004141410091919100989898009696
      960096969600969696009E9E9E00A7A7A700B6B6B600CDCDCD00DEDEDE00E8E8
      E800ECECEC00EDEDED00ECECEC00E8E8E800EDEDED00E9E9E900E7E7E700C2C2
      C200BBBBBB00E6E6E600E4E4E400E5E5E500E3E3E3009F9F9F00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E3E3E300CACACA00B5B5B500717171003C3C3C002C2C2C002A2A
      2A002F2F2F0030303000292929002B2B2B002A2A2A002C2C2C002B2B2B003737
      37009595950092929200959595009A9A9A00A4A4A400B6B6B600CCCCCC00DFDF
      DF00EBEBEB00EDEDED00EBEBEB00E9E9E900E6E6E600EAEAEA00E5E5E500E8E8
      E800FDFDFD00FDFDFD00E3E3E300E5E5E500E3E3E3009F9F9F00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CBCBCB009898980045454500303030002E2E2E00323232002F2F
      2F002D2D2D002F2F2F0030303000303030002D2D2D00303030002C2C2C003030
      30002D2D2D0043434300929292009595950099999900A3A3A300B6B6B600CECE
      CE00E1E1E100EBEBEB00ECECEC00EAEAEA00E7E7E700EEEEEE00E6E6E600C4C4
      C4007B7B7B00F9F9F900E5E5E500E5E5E500E3E3E3009E9E9E00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6D6D6008989890030303000323232003131310034343400313131003232
      320032323200323232003131310031313100323232002D2D2D00323232002F2F
      2F00313131002F2F2F002F2F2F00929292009292920098989800A6A6A600BDBD
      BD00D4D4D400E5E5E500EBEBEB00E8E8E800EDEDED00E8E8E800E9E9E900C1C1
      C1007B7B7B00FEFEFE00E1E1E100E6E6E600E3E3E3009E9E9E00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEA
      EA008B8B8B003232320037373700343434003434340036363600333333003333
      3300333333003636360034343400323232003737370031313100323232003434
      34002F2F2F00313131002E2E2E0030303000909090009595950099999900AEAE
      AE00CACACA00DEDEDE00E6E6E600EAEAEA00E6E6E600EBEBEB00E5E5E500C0C0
      C0007C7C7C00FAFAFA00E3E3E300E5E5E500E2E2E2009C9C9C00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5A5
      A5003D3D3D003737370035353500323232003B3B3B0039393900373737003737
      370039393900343434003A3A3A003636360033333300363636003A3A3A003131
      31003535350033333300363636002F2F2F00383838008F8F8F0097979700A5A5
      A500B8B8B800D4D4D400E6E6E600EEEEEE00E7E7E700E9E9E900E8E8E800C0C0
      C000BCBCBC00E7E7E700E2E2E200E5E5E500E2E2E2009C9C9C00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF005858
      5800333333003D3D3D00373737003A3A3A003737370039393900383838003A3A
      3A00353535003B3B3B00373737003B3B3B003939390036363600343434003B3B
      3B003535350039393900353535003A3A3A0031313100494949008E8E8E009A9A
      9A00B2B2B200CDCDCD00DDDDDD00E6E6E600ECECEC00E8E8E800E9E9E900E5E5
      E500FCFCFC00FDFDFD00E1E1E100E4E4E400E1E1E1009C9C9C00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000959595003B3B
      3B003E3E3E003D3D3D00393939003B3B3B003A3A3A00D2D2D200CBCBCB00CCCC
      CC00C7C7C700CCCCCC00CDCDCD00CACACA00C7C7C700C7C7C700C4C4C400C7C7
      C70038383800363636003A3A3A00383838003A3A3A00393939008D8D8D009C9C
      9C00A7A7A700C3C3C300DDDDDD00E8E8E800EBEBEB00E4E4E400E7E7E700BCBC
      BC007D7D7D00FAFAFA00E5E5E500E3E3E300E0E0E0009B9B9B00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E9E900525252004040
      4000393939003D3D3D003C3C3C00393939003F3F3F003C3C3C003C3C3C003E3E
      3E00D3D3D300D2D2D200D0D0D000CFCFCF00CFCFCF003A3A3A003E3E3E003838
      38003B3B3B0038383800393939003A3A3A003A3A3A0035353500484848009090
      9000A2A2A200B2B2B200D4D4D400E1E1E100E8E8E800E8E8E800E6E6E600BFBF
      BF007C7C7C00FDFDFD00DFDFDF00E1E1E100DFDFDF009B9B9B00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C6003E3E3E003F3F
      3F0040404000404040003E3E3E003C3C3C003F3F3F0040404000404040003B3B
      3B00D2D2D200DADADA00D4D4D400D6D6D600D2D2D2003B3B3B003A3A3A003A3A
      3A003C3C3C003C3C3C00383838003B3B3B003C3C3C0039393900393939008D8D
      8D0099999900B7B7B700C8C8C800E1E1E100E2E2E200EBEBEB00E4E4E400BCBC
      BC0079797900FDFDFD00E2E2E200E0E0E000DFDFDF009A9A9A00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F9F9F003D3D3D003D3D
      3D003E3E3E00414141003D3D3D003F3F3F003E3E3E003F3F3F00414141003F3F
      3F00E1E1E100D7D7D700DCDCDC00DADADA00D9D9D9003E3E3E00424242003D3D
      3D00404040003C3C3C003C3C3C003C3C3C003C3C3C003A3A3A003C3C3C008E8E
      8E009A9A9A00ACACAC00CCCCCC00DFDFDF00E9E9E900E1E1E100E6E6E600BEBE
      BE00B7B7B700E0E0E000E1E1E100DFDFDF00DEDEDE009A9A9A00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006D6D6D00424242004040
      40003F3F3F0042424200414141003F3F3F00434343003F3F3F003F3F3F004040
      4000E5E5E500E3E3E300E3E3E300DDDDDD00E2E2E2003F3F3F00404040004040
      40003F3F3F003E3E3E003D3D3D003C3C3C003C3C3C003D3D3D003A3A3A005151
      51009B9B9B00ADADAD00C7C7C700DDDDDD00E2E2E200EBEBEB00DFDFDF00E2E2
      E200FAFAFA00F8F8F800DEDEDE00DFDFDF00DEDEDE009A9A9A00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4E00444444004040
      4000404040003F3F3F00404040004242420043434300404040003E3E3E004040
      4000E6E6E600E7E7E700E5E5E500E7E7E700E6E6E6003F3F3F00424242004040
      40003F3F3F003F3F3F003D3D3D003E3E3E003D3D3D003B3B3B003D3D3D004444
      440098989800AFAFAF00CBCBCB00DEDEDE00E1E1E100E2E2E200E0E0E000C4C4
      C4008C8C8C00F6F6F600DDDDDD00DCDCDC00DCDCDC0098989800BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000045454500424242004040
      400043434300414141004242420042424200414141004A4A4A00525252005454
      5400F2F2F200EAEAEA00EFEFEF00ECECEC00EBEBEB005D5D5D004E4E4E004A4A
      4A0040404000424242003E3E3E003D3D3D0041414100404040003E3E3E003E3E
      3E00A2A2A200BBBBBB00D0D0D000DEDEDE00E3E3E300E1E1E100E3E3E300BCBC
      BC008C8C8C00F9F9F900DCDCDC00DADADA00DBDBDB0097979700BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000505050003E3E3E004646
      4600434343004545450041414100494949005D5D5D006E6E6E006F6F6F007272
      7200F3F3F300F7F7F700F1F1F100EFEFEF00F2F2F200747474006F6F6F006B6B
      6B005C5C5C00464646003F3F3F003F3F3F003E3E3E003E3E3E003F3F3F004646
      4600A4A4A400BDBDBD00D7D7D700DCDCDC00E0E0E000DEDEDE00DEDEDE00BFBF
      BF008A8A8A00F4F4F400DBDBDB00D8D8D800D8D8D80096969600BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000078787800434343004545
      45004040400043434300505050006D6D6D007A7A7A0078787800F3F3F300F7F7
      F700F5F5F500F3F3F300F6F6F600F5F5F500F0F0F00073737300737373007878
      7800777777006E6E6E004D4D4D003F3F3F003F3F3F0040404000414141004B4B
      4B00B3B3B300C8C8C800D7D7D700E1E1E100DCDCDC00E1E1E100DBDBDB00BFBF
      BF00BBBBBB00DBDBDB00DADADA00D7D7D700D5D5D50094949400BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A9A900454545004343
      4300424242004F4F4F007A7A7A007F7F7F0080808000828282007B7B7B007A7A
      7A007C7C7C007E7E7E007C7C7C00797979007F7F7F007A7A7A007C7C7C007979
      7900787878007A7A7A00767676004C4C4C003F3F3F003F3F3F00414141006B6B
      6B00C1C1C100D5D5D500DADADA00DFDFDF00D8D8D800DCDCDC00DADADA00D9D9
      D900ECECEC00EAEAEA00D6D6D600D6D6D600D3D3D30093939300BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D7D7D700414141004242
      420045454500717171009090900094949400888888008C8C8C00898989009191
      910089898900858585008787870085858500848484007B7B7B00818181008585
      850081818100838383007E7E7E00676767003F3F3F004242420042424200BDBD
      BD00D4D4D400DFDFDF00E2E2E200DCDCDC00DFDFDF00DCDCDC00D2D2D200C4C4
      C400AAAAAA00E7E7E700D2D2D200D2D2D200D0D0D00091919100BFBFBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666004242
      42004242420090909000979797009F9F9F009B9B9B0099999900979797009595
      9500919191009696960091919100949494008D8D8D00919191008D8D8D008989
      89008E8E8E00878787008989890083838300464646004040400045454500D5D5
      D500DEDEDE00ECECEC00EDEDED00E3E3E300DDDDDD00D5D5D500DCDCDC00C3C3
      C300A4A4A400E6E6E600D4D4D400CFCFCF00CDCDCD008F8F8F00BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B1004444
      440041414100A0A0A000A9A9A900ABABAB00ACACAC00AAAAAA00AAAAAA00A5A5
      A500FDFDFD00F7F7F700F9F9F900F8F8F8009F9F9F009E9E9E009A9A9A009A9A
      9A00949494009393930094949400898989003E3E3E00454545008D8D8D00DBDB
      DB00E9E9E900ECECEC00EBEBEB00EAEAEA00E4E4E400D5D5D500D4D4D400C1C1
      C100A3A3A300EAEAEA00CCCCCC00CCCCCC00CACACA008E8E8E00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007070
      70004545450096969600BBBBBB00BEBEBE00BCBCBC00BABABA00B8B8B800FBFB
      FB00FDFDFD00FBFBFB00FCFCFC00F7F7F700FBFBFB00AAAAAA00ABABAB00A4A4
      A4009C9C9C00A0A0A0009C9C9C007E7E7E004141410053535300DCDCDC00EBEB
      EB00EDEDED00F2F2F200EAEAEA00E8E8E800EAEAEA00DDDDDD00D8D8D800BFBF
      BF00BBBBBB00CCCCCC00CACACA00CBCBCB00C9C9C9008B8B8B00BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D2004444440070707000C4C4C400C8C8C800D1D1D100CCCCCC00CACACA00F9F9
      F900F9F9F900FCFCFC00FBFBFB00FCFCFC00F6F6F600C0C0C000B7B7B700B8B8
      B800B4B4B400AEAEAE009D9D9D005E5E5E0041414100B4B4B400EDEDED00ECEC
      EC00F3F3F300ECECEC00EDEDED00ECECEC00E1E1E100E5E5E500D4D4D400D1D1
      D100DADADA00DADADA00C8C8C800C5C5C500C5C5C50089898900C2C2C2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BABABA00474747008E8E8E00D4D4D400D9D9D900DCDCDC00DBDBDB00DCDC
      DC00FDFDFD00FCFCFC00F9F9F900FAFAFA00D3D3D300CECECE00CDCDCD00C5C5
      C500BFBFBF00ACACAC007474740043434300A5A5A500F0F0F000F2F2F200F4F4
      F400EFEFEF00EFEFEF00ECECEC00E6E6E600E4E4E400E2E2E200DCDCDC00C6C6
      C600ADADAD00D6D6D600C6C6C600C8C8C800B8B8B80088888800CDCDCD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B6B6B6004444440083838300C3C3C300E7E7E700E5E5E500EBEB
      EB00E4E4E400E8E8E800E7E7E700E7E7E700E1E1E100E3E3E300D5D5D500D3D3
      D300A8A8A8006767670045454500A6A6A600F7F7F700F4F4F400F5F5F500F2F2
      F200EEEEEE00ECECEC00E7E7E700E7E7E700DDDDDD00DFDFDF00DDDDDD00C8C8
      C800B3B3B300D3D3D300C1C1C100BCBCBC00C4C4C40083838300DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CACACA00656565004848480083838300C2C2C200D9D9
      D900E6E6E600F3F3F300F1F1F100EEEEEE00DFDFDF00CCCCCC00AAAAAA007272
      72004242420063636300C9C9C900FDFDFD00F8F8F800F5F5F500F8F8F800EFEF
      EF00EFEFEF00ECECEC00E7E7E700C1C1C100B2B2B200AEAEAE00B1B1B100AFAF
      AF00AEAEAE00B1B1B100B2B2B200B1B1B100B1B1B100B1B1B100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE005A5A5A00414141004141
      4100454545003E3E3E0046464600404040004242420044444400424242005555
      5500AAAAAA00ECECEC00FBFBFB00F7F7F700F8F8F800F7F7F700F4F4F400F0F0
      F000EFEFEF00E8E8E800E9E9E900BEBEBE00FBFBFB00FEFEFE00FBFBFB00F6F6
      F600F4F4F400E9E9E900DDDDDD00D9D9D900C5C5C50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3B3B3009797
      97006969690049494900444444004C4C4C006868680095959500CECECE00F3F3
      F300FCFCFC00F9F9F900FDFDFD00FCFCFC00FBFBFB00F5F5F500F4F4F400F0F0
      F000EDEDED00E5E5E500E7E7E700C0C0C000FCFCFC00FCFCFC00F5F5F500F0F0
      F000ECECEC00E0E0E000D9D9D900C2C2C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00F9F9
      F900FCFCFC00FCFCFC00FDFDFD00FEFEFE00FCFCFC00FEFEFE00FCFCFC00FBFB
      FB00FBFBFB00FCFCFC00F6F6F600FBFBFB00F8F8F800F8F8F800F3F3F300F1F1
      F100E8E8E800EEEEEE00E4E4E400C0C0C000F9F9F900F6F6F600F3F3F300E8E8
      E800DCDCDC00D5D5D500C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00FFFF
      FF00FAFAFA00FCFCFC00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FEFE
      FE00FDFDFD00FDFDFD00FCFCFC00F9F9F900F7F7F700F6F6F600F4F4F400EFEF
      EF00EBEBEB00E8E8E800E3E3E300C2C2C200F9F9F900F4F4F400E8E8E800E1E1
      E100D5D5D500C4C4C40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FCFC
      FC00FDFDFD00FDFDFD00FBFBFB00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FDFDFD00F8F8F800F5F5F500F4F4F400F1F1F100EEEE
      EE00E9E9E900E5E5E500E2E2E200C2C2C200F3F3F300EBEBEB00E5E5E500D1D1
      D100C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FBFB
      FB00FDFDFD00FCFCFC00FAFAFA00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00FBFBFB00FAFAFA00F8F8F800F4F4F400F2F2F200EFEFEF00EBEB
      EB00E7E7E700E2E2E200DDDDDD00C5C5C500EFEFEF00E1E1E100D4D4D400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00FBFB
      FB00F9F9F900FBFBFB00FFFFFF00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FAFAFA00F9F9F900F6F6F600F2F2F200EFEFEF00EDEDED00EBEB
      EB00E6E6E600E3E3E300DDDDDD00C2C2C200EDEDED00DBDBDB00C1C1C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00FEFE
      FE00FBFBFB00FDFDFD00FBFBFB00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00F9F9F900F4F4F400F0F0F000EEEEEE00E8E8
      E800E5E5E500DFDFDF00D8D8D800C2C2C200E0E0E000C2C2C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FBFB
      FB00FCFCFC00FFFFFF00FBFBFB00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FCFCFC00FBFBFB00F9F9F900F6F6F600F2F2F200F0F0F000EEEEEE00EAEA
      EA00E7E7E700E2E2E200DDDDDD00C2C2C200C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D2D200D6D6
      D600CDCDCD00CDCDCD00CCCCCC00CACACA00C9C9C900C9C9C900C8C8C800C7C7
      C700C6C6C600C5C5C500C4C4C400C2C2C200BFBFBF00BDBDBD00BABABA00B4B4
      B400B0B0B000ADADAD00A9A9A900C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B9B9003F3F3F00424242004444440041414100444444004343
      430042424200414141004B4B4B00CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E100CACACA00AEAEAE00ACACAC00A9A9A900A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A8A8A800A8A8A800A8A8A800A9A9
      A900A9A9A900A9A9A900AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00B9B9B90070707000888888008C8C8C008D8D8D008E8E8E008B8B
      8B00898989008282820069696900CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CACACA00AEAEAE00ACACAC00A9A9A900A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A700A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900A9A9
      A900AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00ABABAB00A8A8A800B3B3
      B300C6C6C600E0E0E00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00AEAEAE00ACACAC00A9A9A900A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900939393006A6A6A006E6E
      6E0071717100696969006D6D6D006F6F6F006F6F6F006E6E6E006C6C6C006F6F
      6F006D6D6D00707070007070700070707000707070006E6E6E006E6E6E006F6F
      6F0070707000707070006E6E6E00717171006C6C6C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000939393006A6A6A006E6E6E00717171006969
      69006D6D6D006F6F6F006F6F6F006E6E6E006C6C6C006F6F6F006D6D6D007070
      70007070700070707000707070006E6E6E006E6E6E006F6F6F00707070007070
      70006E6E6E00717171006C6C6C00000000000000000000000000000000000000
      00000000000000000000CDCDCD00C2C2C200A6A6A600A1A1A100A1A1A100A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A0009F9F9F009F9F9F009F9F9F009F9F
      9F00A0A0A000A0A0A000A0A0A0009F9F9F009F9F9F009E9E9E009E9E9E00A2A2
      A200A2A2A200BDBDBD00A7A7A700BFBFBF00C4C4C400C6C6C600C7C7C700C4C4
      C400C3C3C300BBBBBB0090909000CDCDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00C2C2C200A6A6A600A1A1A100A1A1A100A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A0009F9F9F009F9F9F009F9F9F009F9F9F00A0A0A000A0A0
      A000A0A0A0009F9F9F009F9F9F009E9E9E009E9E9E00A2A2A200A2A2A200A1A1
      A100A1A1A100A1A1A100A1A1A100A1A1A100A1A1A1009F9F9F00A0A0A0009B9B
      9B00BCBCBC00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00C2C2
      C200A6A6A600A1A1A100A1A1A100A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A0009F9F9F009F9F9F009F9F9F009F9F9F00A0A0A000787878009A9A9A00AAAA
      AA00666666004747470049494900464646004242420045454500474747004545
      4500474747004A4A4A004A4A4A004A4A4A004A4A4A0046464600454545004949
      49004949490056565600838383008E8E8E008383830000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000787878009A9A9A00AAAAAA00666666004747
      4700494949004646460042424200454545004747470045454500474747004A4A
      4A004A4A4A004A4A4A004A4A4A00464646004545450049494900494949005656
      5600838383008E8E8E0083838300000000000000000000000000000000000000
      00000000000000000000D5D5D500FCFCFC00F9F9F900F4F4F400F9F9F900F5F5
      F500F5F5F500F4F4F400F4F4F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F0F0F000EFEFEF00EEEEEE00ECECEC00ECECEC00E9E9
      E900E9E9E900C1C1C100AFAFAF00C7C7C700CDCDCD00D0D0D000CECECE00CCCC
      CC00CACACA00C2C2C20095959500D1D1D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5D5D500FCFCFC00F9F9F900F4F4F400F9F9F900F5F5F500F5F5F500F4F4
      F400F4F4F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1F100F1F1F100F1F1
      F100F0F0F000EFEFEF00EEEEEE00ECECEC00ECECEC00E9E9E900E9E9E900E8E8
      E800E8E8E800E7E7E700E6E6E600E5E5E500E5E5E500E5E5E500E0E0E000A6A6
      A600BCBCBC00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D500FCFC
      FC00F9F9F900F4F4F400F9F9F900F5F5F500F5F5F500F4F4F400F4F4F400F3F3
      F300F2F2F200F2F2F200F1F1F100F1F1F100F1F1F1007E7E7E007E7E7E008282
      82006060600040404000343434004747470044444400494949003F3F3F004141
      4100414141003E3E3E003E3E3E003E3E3E003E3E3E003B3B3B003C3C3C004242
      420048484800606060006F6F6F00737373007474740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007E7E7E007E7E7E0082828200606060004040
      4000343434004747470044444400494949003F3F3F0041414100414141003E3E
      3E003E3E3E003E3E3E003E3E3E003B3B3B003C3C3C0042424200484848006060
      60006F6F6F007373730074747400000000000000000000000000000000000000
      00000000000000000000CBCBCB00FEFEFE00FCFCFC00F7F7F700F7F7F700F6F6
      F600F6F6F600F5F5F500F4F4F400F4F4F400F3F3F300F2F2F200F2F2F200F0F0
      F000F0F0F000F0F0F000EFEFEF00EEEEEE00ECECEC00EBEBEB00EAEAEA00EAEA
      EA00E9E9E900C1C1C100AAAAAA00C3C3C300C7C7C700C8C8C800CBCBCB00C7C7
      C700C7C7C700BEBEBE008F8F8F00D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CBCBCB00FEFEFE00FCFCFC00F7F7F700F7F7F700F6F6F600F6F6F600F5F5
      F500F4F4F400F4F4F400F3F3F300F2F2F200F2F2F200F0F0F000F0F0F000F0F0
      F000EFEFEF00EEEEEE00ECECEC00EBEBEB00EAEAEA00EAEAEA00E9E9E900E9E9
      E900E8E8E800E6E6E600E5E5E500E4E4E400E4E4E400E6E6E600E6E6E6009D9D
      9D00BBBBBB00DEDEDE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB00FEFE
      FE00FCFCFC00F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F4F4F400F4F4
      F400F3F3F300F2F2F200F2F2F200F0F0F000F0F0F00057575700696969006464
      640077777700737373005E5E5E00A9A9A9007C7C7C0097979700757575007878
      78007B7B7B00BFBFBF00C0C0C000C1C1C100C0C0C000C2C2C200C0C0C000BBBB
      BB009A9A9A006363630058585800797979006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000575757006969690064646400777777007373
      73005E5E5E00A9A9A9007C7C7C009797970075757500787878007B7B7B00BFBF
      BF00C0C0C000C1C1C100C0C0C000C2C2C200C0C0C000BBBBBB009A9A9A006363
      6300585858007979790063636300000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FDFDFD00FDFDFD00F7F7F700F5F5
      F500F5F5F500F4F4F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1F100EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00E8E8
      E800EAEAEA00C1C1C1009C9C9C00B8B8B800BCBCBC00BEBEBE00BEBEBE00BDBD
      BD00BABABA00B2B2B20087878700D6D6D6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000FEFEFE00FDFDFD00FDFDFD00F7F7F700F5F5F500F5F5F500F4F4
      F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1F100EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00E8E8E800E8E8E800E7E7
      E700E6E6E600E5E5E500E4E4E400E4E4E400E3E3E300E2E2E200E5E5E5009E9E
      9E00C1C1C100DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FDFDFD00FDFDFD00F7F7F700F5F5F500F5F5F500F4F4F400F3F3F300F2F2
      F200F2F2F200F1F1F100F1F1F100EFEFEF00EFEFEF00BEBEBE00EFEFEF00D0D0
      D000DDDDDD00C6C6C600FAFAFA00EBEBEB00D1D1D100DADADA00F1F1F100EAEA
      EA00F0F0F000B7B7B700B8B8B800B8B8B800B8B8B800B7B7B700B3B3B300B1B1
      B100E1E1E100C1C1C100B7B7B700A2A2A2006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEBEBE00EFEFEF00D0D0D000DDDDDD00C6C6
      C600FAFAFA00EBEBEB00D1D1D100DADADA00F1F1F100EAEAEA00F0F0F000B7B7
      B700B8B8B800B8B8B800B8B8B800B7B7B700B3B3B300B1B1B100E1E1E100C1C1
      C100B7B7B700A2A2A20066666600000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FCFCFC00F8F8F800F6F6
      F600F5F5F500F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100F2F2
      F200F2F2F200F0F0F000F0F0F000EEEEEE00EEEEEE00EDEDED00ECECEC00EDED
      ED00F5F5F500BFBFBF0095959500ACACAC00AEAEAE00B1B1B100B2B2B200B2B2
      B200B0B0B000A9A9A9007B7B7B00CBCBCB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FCFCFC00F8F8F800F6F6F600F5F5F500F4F4
      F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200F0F0
      F000F0F0F000EEEEEE00EEEEEE00EDEDED00ECECEC00E8E8E800E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E6E6E600E2E2E2009E9E
      9E00BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FCFCFC00F8F8F800F6F6F600F5F5F500F4F4F400F4F4F400F4F4
      F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200C5C5C500F0F0F000EFEF
      EF00EEEEEE00EDEDED00F4F4F400E5E5E500BCBCBC00C1C1C100B9B9B900D9D9
      D900E4E4E400ACACAC00ADADAD00ADADAD00ACACAC00AEAEAE00ABABAB00ACAC
      AC00C4C4C400C9C9C900A7A7A700CACACA006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C5C500F0F0F000EFEFEF00EEEEEE00EDED
      ED00F4F4F400E5E5E500BCBCBC00C1C1C100B9B9B900D9D9D900E4E4E400ACAC
      AC00ADADAD00ADADAD00ACACAC00AEAEAE00ABABAB00ACACAC00C4C4C400C9C9
      C900A7A7A700CACACA0063636300000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FFFFFF00FDFDFD00FBFBFB00F7F7
      F700F6F6F600F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1F100F2F2
      F200F2F2F200F0F0F000D8D8D8006B6B6B006363630068686800626262006363
      6300646464006B6B6B0093939300A3A3A300A4A4A400A6A6A600A5A5A500A4A4
      A400A4A4A400A0A0A000818181005D5D5D006565650066666600636363006666
      66005F5F5F008787870000000000000000000000000000000000000000000000
      0000D0D0D000FEFEFE00FFFFFF00FDFDFD00FBFBFB00F7F7F700F6F6F600F5F5
      F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200F0F0
      F000D8D8D8006B6B6B0063636300686868006262620063636300646464006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FFFFFF00FDFDFD00FBFBFB00F7F7F700F6F6F600F5F5F500F5F5F500F4F4
      F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200C5C5C50083838300B9B9
      B900B7B7B700D3D3D300FDFDFD00E6E6E600CFCFCF00D4D4D400D3D3D300DCDC
      DC00E2E2E2009C9C9C009D9D9D009E9E9E009D9D9D00A2A2A200A1A1A1009C9C
      9C00EFEFEF00F5F5F500A4A4A400EAEAEA005050500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C5C50083838300B9B9B900B7B7B700D3D3
      D300FDFDFD00E6E6E600CFCFCF00D4D4D400D3D3D300DCDCDC00E2E2E2009C9C
      9C009D9D9D009E9E9E009D9D9D00A2A2A200A1A1A1009C9C9C00EFEFEF00F5F5
      F500A4A4A400EAEAEA0050505000000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FFFFFF00FEFEFE00FDFDFD00F7F7
      F700F6F6F600F5F5F500F5F5F500F3F3F300F3F3F300F2F2F200F2F2F200F2F2
      F200F2F2F200F0F0F000CDCDCD00393939003F3F3F0032323200323232003434
      34003434340053535300909090009B9B9B00999999009C9C9C009D9D9D009999
      99009A9A9A009999990085858500424242002E2E2E0033333300333333003D3D
      3D003D3D3D004141410000000000000000000000000000000000000000000000
      0000D0D0D000FEFEFE00FFFFFF00FEFEFE00FDFDFD00F7F7F700F6F6F600F5F5
      F500F5F5F500F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F0F0
      F000CDCDCD00393939003F3F3F00323232003232320034343400343434003434
      3400343434003434340034343400343434003434340034343400343434003434
      34003434340034343400343434003434340034343400343434003D3D3D004141
      4100000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FFFFFF00FEFEFE00FDFDFD00F7F7F700F6F6F600F5F5F500F5F5F500F3F3
      F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200BDBDBD0084848400DDDD
      DD00DCDCDC00D5D5D500E8E8E800EEEEEE00E2E2E200DDDDDD00E8E8E800E2E2
      E200E1E1E1008D8D8D009090900090909000909090008C8C8C008E8E8E009090
      90009D9D9D008B8B8B009E9E9E00DBDBDB004E4E4E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD0084848400DDDDDD00DCDCDC00D5D5
      D500E8E8E800EEEEEE00E2E2E200DDDDDD00E8E8E800E2E2E200E1E1E1008D8D
      8D009090900090909000909090008C8C8C008E8E8E00909090009D9D9D008B8B
      8B009E9E9E00DBDBDB004E4E4E00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F7F7
      F700F6F6F600F5F5F500F6F6F600F5F5F500F3F3F300F3F3F300F2F2F200F3F3
      F300F2F2F200F0F0F000CDCDCD004F4F4F007C7C7C0088888800838383008383
      8300878787008C8C8C0093939300939393009292920091919100949494009292
      920094949400929292008D8D8D008B8B8B008888880085858500888888008686
      86007B7B7B003B3B3B0000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F7F7F700F6F6F600F5F5
      F500F6F6F600F5F5F500F3F3F300F3F3F300F2F2F200F3F3F300F2F2F200F0F0
      F000CDCDCD004F4F4F007C7C7C00888888008383830083838300878787008C8C
      8C00939393009393930092929200919191009494940092929200949494009292
      92008D8D8D008B8B8B00888888008585850088888800868686007B7B7B003B3B
      3B00000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F7F7F700F6F6F600F5F5F500F6F6F600F5F5
      F500F3F3F300F3F3F300F2F2F200F3F3F300F2F2F200C5C5C500C5C5C500F0F0
      F000EFEFEF00EDEDED00ECECEC00DFDFDF00E8E8E800E7E7E700DBDBDB00E0E0
      E000E6E6E6007F7F7F0082828200828282008181810080808000828282007D7D
      7D007A7A7A00787878006D6D6D00737373005656560000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C5C500C5C5C500F0F0F000EFEFEF00EDED
      ED00ECECEC00DFDFDF00E8E8E800E7E7E700DBDBDB00E0E0E000E6E6E6007F7F
      7F0082828200828282008181810080808000828282007D7D7D007A7A7A007878
      78006D6D6D007373730056565600000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F6F6
      F600F6F6F600F5F5F500F6F6F600F6F6F600F5F5F500F4F4F400F2F2F200F3F3
      F300F2F2F200F0F0F000CECECE004F4F4F00808080008A8A8A008C8C8C008B8B
      8B008A8A8A008B8B8B008D8D8D008D8D8D008C8C8C008B8B8B008C8C8C008C8C
      8C008B8B8B008D8D8D008D8D8D008D8D8D008D8D8D008E8E8E008D8D8D008C8C
      8C00818181004040400000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F6F6F600F6F6F600F5F5
      F500F6F6F600F6F6F600F5F5F500F4F4F400F2F2F200F3F3F300F2F2F200F0F0
      F000CECECE004F4F4F00808080008A8A8A008C8C8C008B8B8B008A8A8A008B8B
      8B008D8D8D008D8D8D008C8C8C008B8B8B008C8C8C008C8C8C008B8B8B008D8D
      8D008D8D8D008D8D8D008D8D8D008E8E8E008D8D8D008C8C8C00818181004040
      4000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F6F6F600F6F6F600F5F5F500F6F6F600F6F6
      F600F5F5F500F4F4F400F2F2F200F3F3F300F2F2F200C9C9C900CECECE00F0F0
      F000F6F6F600EDEDED00ECECEC00EAEAEA00EFEFEF00EBEBEB00E9E9E900DCDC
      DC00E6E6E6007373730076767600757575007575750074747400737373007373
      73006E6E6E006868680068686800626262004A4A4A0000000000000000000000
      0000E1E1E100AEAEAE00A9A9A900A7A7A700A7A7A700A8A8A800A8A8A800A9A9
      A900AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00A8A8
      A800000000000000000000000000C9C9C900CECECE00F0F0F000F6F6F600EDED
      ED00ECECEC00EAEAEA00EFEFEF00EBEBEB00E9E9E900DCDCDC00E6E6E6007373
      73007676760075757500757575007474740073737300737373006E6E6E006868
      680068686800626262004A4A4A00000000000000000000000000000000000000
      00000000000000000000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00F8F8
      F800F6F6F600F5F5F500F6F6F600F6F6F600F6F6F600F4F4F400F3F3F300F3F3
      F300F2F2F200F0F0F000CFCFCF004D4D4D007A7A7A0082828200818181008282
      8200858585008787870087878700888888008686860085858500858585008888
      8800878787008585850086868600868686008686860086868600858585008585
      85007A7A7A003A3A3A0000000000000000000000000000000000000000000000
      0000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00F8F8F800F6F6F600F5F5
      F500F6F6F600F6F6F600F6F6F600F4F4F400F3F3F300F3F3F300F2F2F200F0F0
      F000CFCFCF004D4D4D007A7A7A00828282008181810082828200858585008787
      8700878787008888880086868600858585008585850088888800878787008585
      85008686860086868600868686008686860085858500858585007A7A7A003A3A
      3A00000000000000000000000000000000000000000000000000D2D2D200FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F8F8F800F6F6F600F5F5F500F6F6F600F6F6
      F600F6F6F600F4F4F400F3F3F300F3F3F300F2F2F200B9B9B90077777700E3E3
      E300D7D7D700E7E7E700ECECEC00E5E5E500D2D2D200E9E9E900D0D0D000E4E4
      E400E5E5E500676767006A6A6A006A6A6A006A6A6A0069696900676767006969
      69006666660067676700626262005B5B5B004646460000000000000000000000
      0000D5D5D500F9F9F900F9F9F900F5F5F500F4F4F400F2F2F200F1F1F100F1F1
      F100F0F0F000EEEEEE00ECECEC00E9E9E900E8E8E800E6E6E600E5E5E500E0E0
      E000000000000000000000000000B9B9B90077777700E3E3E300D7D7D700E7E7
      E700ECECEC00E5E5E500D2D2D200E9E9E900D0D0D000E4E4E400E5E5E5006767
      67006A6A6A006A6A6A006A6A6A00696969006767670069696900666666006767
      6700626262005B5B5B0046464600000000000000000000000000000000000000
      00000000000000000000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00FAFA
      FA00F8F8F800F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F3F3F300F3F3
      F300F2F2F200F1F1F100CBCBCB0068686800A4A4A400A9A9A900A6A6A600A6A6
      A600A6A6A600A2A2A200939393008D8D8D008282820079797900848484008080
      8000808080008282820082828200828282008282820081818100828282008080
      8000777777003C3C3C0000000000000000000000000000000000000000000000
      0000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00FAFAFA00F8F8F800F5F5
      F500F5F5F500F5F5F500F5F5F500F4F4F400F3F3F300F3F3F300F2F2F200F1F1
      F100CBCBCB0068686800A4A4A400A9A9A900A6A6A600A6A6A600A6A6A600A2A2
      A200939393008D8D8D0082828200797979008484840080808000808080008282
      8200828282008282820082828200818181008282820080808000777777003C3C
      3C00000000000000000000000000000000000000000000000000D2D2D200FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FAFAFA00F8F8F800F5F5F500F5F5F500F5F5
      F500F5F5F500F4F4F400F3F3F300F3F3F300F2F2F200BEBEBE008D8D8D00B6B6
      B600D3D3D300C8C8C800C5C5C500F0F0F000D5D5D500DCDCDC00E0E0E000E3E3
      E300E8E8E8005F5F5F006161610060606000616161005F5F5F00606060005E5E
      5E005C5C5C005C5C5C005C5C5C00565656004242420000000000000000000000
      0000D0D0D000FDFDFD00F7F7F700F5F5F500F3F3F300F2F2F200F1F1F100EFEF
      EF00EFEFEF00EDEDED00EBEBEB00E8E8E800E6E6E600E4E4E400E3E3E300E5E5
      E500000000000000000000000000BEBEBE008D8D8D00B6B6B600D3D3D300C8C8
      C800C5C5C500F0F0F000D5D5D500DCDCDC00E0E0E000E3E3E300E8E8E8005F5F
      5F006161610060606000616161005F5F5F00606060005E5E5E005C5C5C005C5C
      5C005C5C5C005656560042424200000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F4F4F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2
      F200F2F2F200F1F1F100CFCFCF0072727200A8A8A800B1B1B100B2B2B200ADAD
      AD00AFAFAF00ACACAC00B1B1B100AFAFAF00B1B1B100B0B0B000AEAEAE00AAAA
      AA009A9A9A0085858500777777007D7D7D007A7A7A007B7B7B00787878007A7A
      7A00747474004141410000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FCFCFC00F9F9F900F5F5
      F500F4F4F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F2F2F200F1F1
      F100CFCFCF0072727200A8A8A800B1B1B100B2B2B200ADADAD00AFAFAF00ACAC
      AC00B1B1B100AFAFAF00B1B1B100B0B0B000AEAEAE00AAAAAA009A9A9A008585
      8500777777007D7D7D007A7A7A007B7B7B00787878007A7A7A00747474004141
      4100000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FCFCFC00F9F9F900F5F5F500F4F4F400F5F5
      F500F5F5F500F4F4F400F3F3F300F2F2F200F2F2F200C4C4C400C1C1C100EBEB
      EB00F5F5F500FAFAFA00EDEDED00EAEAEA00DCDCDC00DCDCDC00DEDEDE00EFEF
      EF00EDEDED00555555005959590059595900595959005A5A5A00595959005959
      5900585858005757570055555500525252004343430000000000000000000000
      0000D0D0D000FFFFFF00FBFBFB00F6F6F600F5F5F500F3F3F300F1F1F100F2F2
      F200F0F0F000EEEEEE00ECECEC00ECECEC00EAEAEA007F7F7F00E3E3E300E2E2
      E200000000000000000000000000C4C4C400C1C1C100EBEBEB00F5F5F500FAFA
      FA00EDEDED00EAEAEA00DCDCDC00DCDCDC00DEDEDE00EFEFEF00EDEDED005555
      55005959590059595900595959005A5A5A005959590059595900585858005757
      5700555555005252520043434300000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00F9F9F900F4F4F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1
      F100F1F1F100F0F0F000D4D4D4007D7D7D00B5B5B500B4B4B400B5B5B500B9B9
      B900B6B6B600B6B6B600B7B7B700B8B8B800B9B9B900B9B9B900BABABA00B9B9
      B900B8B8B800B8B8B800BDBDBD00AEAEAE00BBBBBB00B0B0B000A6A6A6009393
      9300969696004343430000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00F9F9F900F4F4
      F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1F100F1F1F100F0F0
      F000D4D4D4007D7D7D00B5B5B500B4B4B400B5B5B500B9B9B900B6B6B600B6B6
      B600B7B7B700B8B8B800B9B9B900B9B9B900BABABA00B9B9B900B8B8B800B8B8
      B800BDBDBD00AEAEAE00BBBBBB00B0B0B000A6A6A60093939300969696004343
      4300000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00F9F9F900F4F4F400F5F5F500F5F5
      F500F4F4F400F3F3F300F2F2F200F1F1F100F1F1F100BDBDBD00DEDEDE00FDFD
      FD00F6F6F600EDEDED00ECECEC00EAEAEA00D2D2D200DEDEDE00D4D4D400D3D3
      D300D6D6D600535353005A5A5A0058585800555555005E5E5E006E6E6E008585
      8500959595009E9E9E00979797008B8B8B007676760000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00F6F6F600F6F6F600F3F3F300F2F2F200F2F2
      F200F0F0F000EFEFEF00ECECEC00EDEDED00EAEAEA007B7B7B00E1E1E100E2E2
      E200000000000000000000000000BDBDBD00DEDEDE00FDFDFD00F6F6F600EDED
      ED00ECECEC00EAEAEA00D2D2D200DEDEDE00D4D4D400D3D3D300D6D6D6005353
      53005A5A5A0058585800555555005E5E5E006E6E6E0085858500959595009E9E
      9E00979797008B8B8B0076767600000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00F7F7F700F5F5F500F3F3F300F2F2F200F1F1F100F1F1F100F0F0
      F000F0F0F000EFEFEF00EFEFEF0075757500BEBEBE00B2B2B200B8B8B800B9B9
      B900B7B7B700BBBBBB00C8C8C800C2C2C200C3C3C300C5C5C500C3C3C300C4C4
      C400C6C6C600C6C6C600CBCBCB00BABABA00B8B8B800BABABA00B6B6B600B7B7
      B700B8B8B8004949490000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FBFBFB00F7F7
      F700F5F5F500F3F3F300F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000EFEF
      EF00F5F5F50075757500B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B7004949
      4900000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FBFBFB00F7F7F700F5F5F500F3F3
      F300F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000CDCDCD00CACACA00DADA
      DA00EEEEEE00ECECEC00EBEBEB00F2F2F200DEDEDE00DFDFDF00D7D7D700F0F0
      F000F2F2F200525252007B7B7B009A9A9A00A0A0A000A7A7A700A7A7A700A6A6
      A600A4A4A400A2A2A200A2A2A200A3A3A300AAAAAA0000000000000000000000
      0000D2D2D200FFFFFF00FEFEFE00F6F6F600F6F6F600F6F6F600F3F3F300F2F2
      F200F1F1F100EFEFEF00ECECEC00E6E6E600E8E8E800FDFDFD00E3E3E300E2E2
      E200A9A9A900AAAAAA00AAAAAA00CDCDCD00CACACA00DADADA00EEEEEE00ECEC
      EC00EBEBEB00F2F2F200DEDEDE00DFDFDF00D7D7D700F0F0F000F2F2F2005252
      52007B7B7B009A9A9A00A0A0A000A7A7A700A7A7A700A6A6A600A4A4A400A2A2
      A200A2A2A200A3A3A300AAAAAA00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00F9F9F900F4F4F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0
      F000F0F0F000EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00ECECEC00A8A8A800DDDDDD00CCCCCC00CCCCCC00D0D0D000CBCBCB00CDCD
      CD00CECECE00CFCFCF00C1C1C100CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00F9F9
      F900F4F4F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0F000F0F0F000EFEF
      EF00EFEFEF00EFEFEF00EDEDED00ECECEC00EBEBEB00E6E6E600ECECEC00E6E6
      E600EAEAEA00E6E6E600FCFCFC00FDFDFD00E0E0E000E3E3E300E2E2E2009C9C
      9C00BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00F9F9F900F4F4F400F4F4
      F400F3F3F300F2F2F200F0F0F000F0F0F000F0F0F0006B6B6B00717171006D6D
      6D006F6F6F006767670067676700686868006868680067676700646464006767
      670063636300B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B1B1B100B1B1
      B100B2B2B200B1B1B100B3B3B300AFAFAF00BCBCBC0000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00F9F9F900F4F4F400F5F5F500F3F3F300F2F2
      F200F1F1F100EFEFEF00EDEDED00EBEBEB00E9E9E9007A7A7A00E1E1E100E2E2
      E200F1F1F100F0F0F000EEEEEE006B6B6B00717171006D6D6D006F6F6F006767
      670067676700686868006868680067676700646464006767670063636300B0B0
      B000B0B0B000B0B0B000B0B0B000B0B0B000B1B1B100B1B1B100B2B2B200B1B1
      B100B3B3B300AFAFAF00BCBCBC00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FDFDFD00F9F9F900F5F5F500F4F4F400F5F5F500F3F3F300F1F1F100F0F0
      F000EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00E8E8
      E800EBEBEB00A9A9A900E7E7E700D7D7D700D8D8D800D7D7D700D8D8D800D8D8
      D800D7D7D700D7D7D700C6C6C600D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFDFD00F9F9
      F900F5F5F500F4F4F400F5F5F500F3F3F300F1F1F100F0F0F000EFEFEF00EFEF
      EF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00E8E8E800EBEBEB00E4E4
      E400E9E9E900BCBCBC007B7B7B00F9F9F900E4E4E400E3E3E300E1E1E1009C9C
      9C00BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFDFD00F9F9F900F5F5F500F4F4
      F400F5F5F500F3F3F300F1F1F100F0F0F000EFEFEF0064646400747474005A5A
      5A00444444004F4F4F005050500050505000515151004F4F4F004D4D4D005050
      50004C4C4C00B9B9B900B9B9B900B9B9B900B9B9B900BABABA00BABABA00BBBB
      BB00BBBBBB00BBBBBB00BDBDBD00BBBBBB00C7C7C70000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FBFBFB00F5F5F500F2F2F200F1F1F100F0F0
      F000EFEFEF00EEEEEE00EBEBEB00E7E7E700E7E7E700BCBCBC00E3E3E300E1E1
      E100EFEFEF00EFEFEF00EDEDED0064646400747474005A5A5A00444444004F4F
      4F005050500050505000515151004F4F4F004D4D4D00505050004C4C4C00B9B9
      B900B9B9B900B9B9B900B9B9B900BABABA00BABABA00BBBBBB00BBBBBB00BBBB
      BB00BDBDBD00BBBBBB00C7C7C700000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FBFBFB00F7F7F700F4F4F400F4F4F400F3F3F300F2F2F200F0F0
      F000F0F0F000EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E5E5
      E500E9E9E900A9A9A900ECECEC00DDDDDD00DDDDDD00DBDBDB00DDDDDD00DDDD
      DD00DDDDDD00DCDCDC00C6C6C600D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FBFB
      FB00F7F7F700F4F4F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0F000EFEF
      EF00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E5E5E500E9E9E900E7E7
      E700E4E4E400BCBCBC0079797900FDFDFD00E0E0E000E2E2E200E1E1E1009C9C
      9C00BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FBFBFB00F7F7F700F4F4
      F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0F00028282800B5B5B500C1C1
      C100C0C0C000C2C2C200C2C2C200C2C2C200C3C3C300C5C5C500C4C4C400C5C5
      C500C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C5C5C500C5C5C500C6C6
      C600C6C6C600C5C5C500C4C4C400C3C3C300D2D2D20000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FDFDFD00F5F5F500F5F5F500F1F1F100EFEF
      EF00EFEFEF00EDEDED00EBEBEB00EBEBEB00E9E9E9007B7B7B00E4E4E400E1E1
      E100F2F2F200F0F0F000EEEEEE0028282800B5B5B500C1C1C100C0C0C000C2C2
      C200C2C2C200C2C2C200C3C3C300C5C5C500C4C4C400C5C5C500C4C4C400C4C4
      C400C4C4C400C4C4C400C4C4C400C5C5C500C5C5C500C6C6C600C6C6C600C5C5
      C500C4C4C400C3C3C300D2D2D200000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FFFFFF00FEFEFE00FAFAFA00F5F5F500F0F0F000F0F0F000F2F2F200F0F0
      F000EFEFEF00EEEEEE00EDEDED00EDEDED00EBEBEB00E9E9E900E9E9E900E9E9
      E900E2E2E200A9A9A900EEEEEE00DEDEDE00DDDDDD00DDDDDD00DFDFDF00DFDF
      DF00DFDFDF00DEDEDE00C6C6C600D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFE
      FE00FAFAFA00F5F5F500F0F0F000F0F0F000F2F2F200F0F0F000EFEFEF00EEEE
      EE00EDEDED00EDEDED00EBEBEB00E9E9E900E9E9E900E9E9E900E2E2E200E8E8
      E800E3E3E300BBBBBB0077777700FDFDFD00E1E1E100E1E1E100E0E0E0009B9B
      9B00BDBDBD00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFEFE00FAFAFA00F5F5
      F500F0F0F000F0F0F000F2F2F200F0F0F000EFEFEF0033333300C9C9C900D1D1
      D100CFCFCF00CBCBCB00CBCBCB00CBCBCB00CCCCCC00CDCDCD00CDCDCD00CDCD
      CD00CECECE00CECECE00CECECE00CECECE00CECECE00CFCFCF00CFCFCF00D0D0
      D000D0D0D000CFCFCF00CECECE00CECECE00E0E0E00000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FAFAFA00F0F0F000F2F2F200EFEF
      EF00EDEDED00EBEBEB00E9E9E900E2E2E200E3E3E30077777700E1E1E100E0E0
      E000F2F2F200F0F0F000EFEFEF0033333300C9C9C900D1D1D100CFCFCF00CBCB
      CB00CBCBCB00CBCBCB00CCCCCC00CDCDCD00CDCDCD00CDCDCD00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CFCFCF00CFCFCF00D0D0D000D0D0D000CFCF
      CF00CECECE00CECECE00E0E0E000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00F9F9F900F2F2F200F0F0F000F1F1F100EFEF
      EF00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E8E8E800E7E7
      E700E9E9E900A9A9A900EBEBEB00DCDCDC00DCDCDC00DADADA00DDDDDD00DDDD
      DD00DDDDDD00DCDCDC00C6C6C600D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFE
      FE00FEFEFE00F9F9F900F2F2F200F0F0F000F1F1F100EFEFEF00EEEEEE00EDED
      ED00ECECEC00EAEAEA00E9E9E900E8E8E800E8E8E800E7E7E700E9E9E900DDDD
      DD00E6E6E600BFBFBF00B7B7B700DFDFDF00DFDFDF00E0E0E000DFDFDF009A9A
      9A00BDBDBD00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFEFE00FEFEFE00F9F9
      F900F2F2F200F0F0F000F1F1F100EFEFEF00EEEEEE0033333300D7D7D700D5D5
      D500D4D4D400D6D6D600D6D6D600D6D6D600D6D6D600D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D9D9D900D9D9D900D9D9
      D900D9D9D900DADADA00DCDCDC00D5D5D500EAEAEA0000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FEFEFE00FEFEFE00F8F8F800F0F0F000EDED
      ED00EBEBEB00E9E9E900E7E7E700E2E2E200E0E0E000F8F8F800DFDFDF00DEDE
      DE00F2F2F200F1F1F100EFEFEF0033333300D7D7D700D5D5D500D4D4D400D6D6
      D600D6D6D600D6D6D600D6D6D600D8D8D800D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900DADA
      DA00DCDCDC00D5D5D500EAEAEA00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FEFEFE00FDFDFD00FEFEFE00FDFDFD00F8F8F800F3F3F300F0F0F000EEEE
      EE00EDEDED00ECECEC00EBEBEB00E9E9E900E9E9E900E8E8E800E7E7E700E7E7
      E700E2E2E200AAAAAA00EBEBEB00D9D9D900DBDBDB00DEDEDE00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00C6C6C600D3D3D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FDFD
      FD00FEFEFE00FDFDFD00F8F8F800F3F3F300F0F0F000EEEEEE00EDEDED00ECEC
      EC00EBEBEB00E9E9E900E9E9E900E8E8E800E7E7E700E7E7E700E2E2E200E8E8
      E800E0E0E000E1E1E100F8F8F800F8F8F800DFDFDF00DFDFDF00DEDEDE009A9A
      9A00BDBDBD00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FDFDFD00FEFEFE00FDFD
      FD00F8F8F800F3F3F300F0F0F000EEEEEE00EDEDED002B2B2B00DDDDDD00D7D7
      D700E2E2E200DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00E2E2E200E2E2E200E5E5E500DDDDDD0000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FEFEFE00FCFCFC00FBFBFB00F5F5
      F500EAEAEA00E3E3E300E5E5E500E2E2E200DEDEDE0088888800DADADA00DBDB
      DB00F2F2F200F1F1F100EFEFEF002B2B2B00DDDDDD00D7D7D700E2E2E200DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00E2E2
      E200E2E2E200E5E5E50000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00F9F9F900F6F6F600EFEF
      EF00EAEAEA00E8E8E800E9E9E900EBEBEB00E9E9E900E6E6E600E4E4E400E4E4
      E400E3E3E300B8B8B800EAEAEA00DBDBDB00D9D9D900DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00C7C7C700DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FCFCFC00F9F9F900F6F6F600EFEFEF00EAEAEA00E8E8
      E800E9E9E900EBEBEB00E9E9E900E6E6E600E4E4E400E4E4E400E3E3E300E2E2
      E200E2E2E200C1C1C10090909000F5F5F500DFDFDF00DDDDDD00DDDDDD009797
      9700BEBEBE00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00F9F9F900F6F6F600EFEFEF00EAEAEA0025252500E8E8E800DFDF
      DF00E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E6E6E600E6E6E600E6E6
      E600E6E6E600E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6
      E600E6E6E600E9E9E900E7E7E700E6E6E600DDDDDD0000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFEFE00FBFB
      FB00F6F6F600EBEBEB00DFDFDF00DBDBDB00DCDCDC00ECECEC00D4D4D400D4D4
      D400F0F0F000EFEFEF00EEEEEE0025252500E8E8E800DFDFDF00E5E5E500E4E4
      E400E4E4E400E4E4E400E4E4E400E6E6E600E6E6E600E6E6E600E6E6E600E5E5
      E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E6E6E600E9E9
      E900E7E7E700E6E6E60000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FEFEFE00FDFDFD00FEFEFE00FDFDFD00FBFBFB00F9F9F900F5F5
      F500F1F1F100ECECEC00E9E9E900E7E7E700E4E4E400E3E3E300E3E3E300E2E2
      E200E2E2E200CBCBCB004F4F4F00494949004A4A4A004A4A4A00494949004949
      4900494949004949490045454500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FEFE
      FE00FDFDFD00FEFEFE00FDFDFD00FBFBFB00F9F9F900F5F5F500F1F1F100ECEC
      EC00E9E9E900E7E7E700E4E4E400E3E3E300E3E3E300E2E2E200E2E2E200E2E2
      E200E1E1E100BDBDBD008A8A8A00F9F9F900DBDBDB00DCDCDC00DCDCDC009696
      9600BEBEBE00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FDFDFD00FEFE
      FE00FDFDFD00FBFBFB00F9F9F900F5F5F500F1F1F10027272700252525003232
      32002C2C2C003131310031313100313131003131310030303000303030003030
      3000303030003030300030303000303030003030300030303000303030003030
      3000303030003C3C3C002A2A2A002A2A2A003737370000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFEFE00FCFC
      FC00F7F7F700F4F4F400EDEDED00DADADA00D8D8D800A1A1A100D3D3D300CECE
      CE00EFEFEF00EFEFEF00EDEDED002727270025252500323232002C2C2C003131
      3100313131003131310031313100303030003030300030303000303030003030
      3000303030003030300030303000303030003030300030303000303030003C3C
      3C002A2A2A002A2A2A0037373700000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F9F9
      F900F5F5F500EFEFEF00EAEAEA00E7E7E700E3E3E300E4E4E400E5E5E500DFDF
      DF00E2E2E200E0E0E000DEDEDE00C3C3C30088888800EFEFEF00DADADA00DADA
      DA00DBDBDB0096969600BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F9F9F900F5F5F500EFEF
      EF00EAEAEA00E7E7E700E3E3E300E4E4E400E5E5E500DFDFDF00E2E2E200E0E0
      E000DEDEDE00C3C3C30088888800F6F6F600DADADA00DADADA00DBDBDB009696
      9600BFBFBF00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00F9F9F900F5F5F500EFEFEF00EAEAEA00E7E7
      E700E3E3E300E4E4E400E5E5E500DFDFDF00E2E2E200E0E0E000DEDEDE00C3C3
      C30088888800F6F6F600DADADA00DADADA00DBDBDB0096969600BFBFBF00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FBFB
      FB00F7F7F700F2F2F200EDEDED00EAEAEA00D4D4D400BCBCBC00CBCBCB00C9C9
      C900EFEFEF00EDEDED00EBEBEB00E9E9E900E2E2E200E3E3E30077777700E1E1
      E100E0E0E000F2F2F200F1F1F100EFEFEF00ECECEC00E6E6E600E8E8E800F4F4
      F400E3E3E300E2E2E200F1F1F100F0F0F000EEEEEE00ECECEC00E9E9E900E8E8
      E800E6E6E600E5E5E500E0E0E000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F8F8
      F800F6F6F600F3F3F300EFEFEF00EBEBEB00E6E6E600E2E2E200E2E2E200E1E1
      E100DFDFDF00DDDDDD00DEDEDE00BDBDBD00BBBBBB00DADADA00D8D8D800D8D8
      D800D7D7D70094949400BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F8F8F800F6F6F600F3F3
      F300EFEFEF00EBEBEB00E6E6E600E2E2E200E2E2E200E1E1E100DFDFDF00DDDD
      DD00DEDEDE00BDBDBD00BBBBBB00DADADA00D8D8D800D8D8D800D7D7D7009494
      9400BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00F8F8F800F6F6F600F3F3F300EFEFEF00EBEB
      EB00E6E6E600E2E2E200E2E2E200E1E1E100DFDFDF00DDDDDD00DEDEDE00BDBD
      BD00BBBBBB00DADADA00D8D8D800D8D8D800D7D7D70094949400BEBEBE00E0E0
      E000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FBFB
      FB00F6F6F600F0F0F000EBEBEB00E6E6E600DDDDDD00ACACAC00C8C8C800BBBB
      BB00EDEDED00EBEBEB00E9E9E900E7E7E700E2E2E200E0E0E000F4F4F400DFDF
      DF00DEDEDE00F2F2F200F1F1F100EFEFEF00EDEDED00EBEBEB00E9E9E9007A7A
      7A00E1E1E100E2E2E200EFEFEF00EFEFEF00EDEDED00EBEBEB00E8E8E800E6E6
      E600E4E4E400E3E3E300E5E5E500000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F1F1F100EBEBEB00E4E4E400DFDFDF00DEDE
      DE00DBDBDB00D8D8D800DCDCDC00D7D7D700ECECEC00EAEAEA00D4D4D400D5D5
      D500D4D4D40094949400BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8
      F800F6F6F600F1F1F100EBEBEB00E4E4E400DFDFDF00DEDEDE00DBDBDB00D8D8
      D800DCDCDC00D7D7D700ECECEC00EAEAEA00D4D4D400D5D5D500D4D4D4009494
      9400BEBEBE00E0E0E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F1F1
      F100EBEBEB00E4E4E400DFDFDF00DEDEDE00DBDBDB00D8D8D800DCDCDC00D7D7
      D700ECECEC00EAEAEA00D4D4D400D5D5D500D4D4D40094949400BEBEBE00E0E0
      E000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FBFB
      FB00F6F6F600F0F0F000E8E8E800B2B2B200B1B1B100ADADAD00B2B2B200B0B0
      B000F5F5F500EAEAEA00E3E3E300E5E5E500E2E2E200DEDEDE0088888800DADA
      DA00DBDBDB00F0F0F000EFEFEF00EEEEEE00EBEBEB00E7E7E700E7E7E700BCBC
      BC00E3E3E300E1E1E100F2F2F200F0F0F000EEEEEE00ECECEC00ECECEC00EAEA
      EA007F7F7F00E3E3E300E2E2E200000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FCFCFC00FBFBFB00F8F8F800F5F5F500F2F2F200EBEBEB00E5E5E500DDDD
      DD00E0E0E000DEDEDE00D0D0D000C7C7C700A8A8A800EAEAEA00D2D2D200D2D2
      D200D1D1D10092929200BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FBFB
      FB00F8F8F800F5F5F500F2F2F200EBEBEB00E5E5E500DDDDDD00E0E0E000DEDE
      DE00D0D0D000C7C7C700A8A8A800EAEAEA00D2D2D200D2D2D200D1D1D1009292
      9200BEBEBE00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FBFBFB00F8F8F800F5F5
      F500F2F2F200EBEBEB00E5E5E500DDDDDD00E0E0E000DEDEDE00D0D0D000C7C7
      C700A8A8A800EAEAEA00D2D2D200D2D2D200D1D1D10092929200BEBEBE00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FAFA
      FA00F4F4F400EDEDED00E5E5E500FCFCFC00F5F5F500EAEAEA00D9D9D900F0F0
      F000FFFFFF00F6F6F600EBEBEB00DFDFDF00DBDBDB00DCDCDC00ECECEC00D4D4
      D400D4D4D400EFEFEF00EFEFEF00EDEDED00EBEBEB00EBEBEB00E9E9E9007B7B
      7B00E4E4E400E1E1E100F2F2F200F0F0F000EFEFEF00ECECEC00EDEDED00EAEA
      EA007B7B7B00E1E1E100E2E2E200000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00F7F7F700F7F7F700F4F4F400F1F1F100EDEDED00E2E2
      E200DADADA00D7D7D700D8D8D800C3C3C300A1A1A100E5E5E500D3D3D300D1D1
      D100CECECE0090909000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFB
      FB00F7F7F700F7F7F700F4F4F400F1F1F100EDEDED00E2E2E200DADADA00D7D7
      D700D8D8D800C3C3C300A1A1A100E5E5E500D3D3D300D1D1D100CECECE009090
      9000BDBDBD00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00F7F7F700F7F7
      F700F4F4F400F1F1F100EDEDED00E2E2E200DADADA00D7D7D700D8D8D800C3C3
      C300A1A1A100E5E5E500D3D3D300D1D1D100CECECE0090909000BDBDBD00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00F9F9F900FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00F7F7
      F700F1F1F100ECECEC00E3E3E300F8F8F800E7E7E700D4D4D400ECECEC00FCFC
      FC00FFFFFF00FFFFFF00F4F4F400EDEDED00DADADA00D8D8D800A1A1A100D3D3
      D300CECECE00EFEFEF00EDEDED00EBEBEB00E9E9E900E2E2E200E3E3E3007777
      7700E1E1E100E0E0E000F2F2F200F1F1F100EFEFEF00ECECEC00E6E6E600E8E8
      E800FDFDFD00E3E3E300E2E2E200000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00F7F7F700F6F6F600F4F4F400F0F0F000ECECEC00E9E9
      E900E4E4E400D5D5D500D4D4D400BEBEBE00A6A6A600E6E6E600CDCDCD00CFCF
      CF00CCCCCC008E8E8E00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFB
      FB00F7F7F700F6F6F600F4F4F400F0F0F000ECECEC00E9E9E900E4E4E400D5D5
      D500D4D4D400BEBEBE00A6A6A600E6E6E600CDCDCD00CFCFCF00CCCCCC008E8E
      8E00BDBDBD00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00F7F7F700F6F6
      F600F4F4F400F0F0F000ECECEC00E9E9E900E4E4E400D5D5D500D4D4D400BEBE
      BE00A6A6A600E6E6E600CDCDCD00CFCFCF00CCCCCC008E8E8E00BDBDBD00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FCFCFC00FDFDFD00FEFEFE00FCFCFC00FAFAFA00F6F6
      F600EFEFEF00E9E9E900E0E0E000EFEFEF00D4D4D400EFEFEF00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00F2F2F200EDEDED00EAEAEA00D4D4D400BCBCBC00CBCB
      CB00C9C9C900EDEDED00EBEBEB00E9E9E900E7E7E700E2E2E200E0E0E000F4F4
      F400DFDFDF00DEDEDE00F2F2F200F1F1F100EFEFEF00EDEDED00EBEBEB00E9E9
      E9007A7A7A00E1E1E100E2E2E200000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2F200EFEFEF00EDEDED00E6E6
      E600EAEAEA00DEDEDE00D4D4D400BDBDBD00BCBCBC00CDCDCD00CBCBCB00CACA
      CA00C9C9C9008C8C8C00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFA
      FA00F7F7F700F5F5F500F2F2F200EFEFEF00EDEDED00E6E6E600EAEAEA00DEDE
      DE00D4D4D400BDBDBD00BCBCBC00CDCDCD00CBCBCB00CACACA00C9C9C9008C8C
      8C00C0C0C000DCDCDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFAFA00F7F7F700F5F5
      F500F2F2F200EFEFEF00EDEDED00E6E6E600EAEAEA00DEDEDE00D4D4D400BDBD
      BD00BCBCBC00CDCDCD00CBCBCB00CACACA00C9C9C9008C8C8C00C0C0C000DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF00FBFBFB00FAFAFA00FCFCFC00FDFDFD00FDFDFD00FBFBFB00F4F4
      F400EDEDED00E3E3E300DADADA00E1E1E100F0F0F000F7F7F700FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00F0F0F000EBEBEB00E6E6E600DDDDDD00ACACAC00C8C8
      C800BBBBBB00F5F5F500EAEAEA00E3E3E300E5E5E500E2E2E200DEDEDE008888
      8800DADADA00DBDBDB00F0F0F000EFEFEF00EEEEEE00EBEBEB00E7E7E700E7E7
      E700BCBCBC00E3E3E300E1E1E100000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EFEFEF00ECECEC00E7E7
      E700E1E1E100E5E5E500D2D2D200CECECE00D8D8D800D9D9D900C7C7C700C4C4
      C400C6C6C60089898900C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFA
      FA00F7F7F700F4F4F400F1F1F100EFEFEF00ECECEC00E7E7E700E1E1E100E5E5
      E500D2D2D200CECECE00D8D8D800D9D9D900C7C7C700C4C4C400C6C6C6008989
      8900C3C3C300DCDCDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFAFA00F7F7F700F4F4
      F400F1F1F100EFEFEF00ECECEC00E7E7E700E1E1E100E5E5E500D2D2D200CECE
      CE00D8D8D800D9D9D900C7C7C700C4C4C400C6C6C60089898900C3C3C300DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D3D3D300CDCDCD00CBCBCB00C9C9C900C8C8C800C6C6C600C4C4C400BEBE
      BE00B9B9B900B0B0B000ABABAB00F8F8F800FEFEFE00FCFCFC00FEFEFE00FFFF
      FF00FFFFFF00F6F6F600F0F0F000E8E8E800B2B2B200B1B1B100ADADAD00B2B2
      B200B0B0B000FFFFFF00F6F6F600EBEBEB00DFDFDF00DBDBDB00DCDCDC00ECEC
      EC00D4D4D400D4D4D400EFEFEF00EFEFEF00EDEDED00EBEBEB00EBEBEB00E9E9
      E9007B7B7B00E4E4E400E1E1E100000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F9F9F900F6F6F600F5F5F500F0F0F000EEEEEE00EBEBEB00E5E5
      E500E6E6E600E5E5E500DDDDDD00C7C7C700ACACAC00D5D5D500C8C8C800C7C7
      C700BBBBBB0087878700CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F9F9
      F900F6F6F600F5F5F500F0F0F000EEEEEE00EBEBEB00E5E5E500E6E6E600E5E5
      E500DDDDDD00C7C7C700ACACAC00D5D5D500C8C8C800C7C7C700BBBBBB008787
      8700CCCCCC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F9F9F900F6F6F600F5F5
      F500F0F0F000EEEEEE00EBEBEB00E5E5E500E6E6E600E5E5E500DDDDDD00C7C7
      C700ACACAC00D5D5D500C8C8C800C7C7C700BBBBBB0087878700CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4F4F400EDEDED00E5E5E500FFFFFF00F5F5F500EAEAEA00D9D9
      D900F0F0F000FFFFFF00FFFFFF00F4F4F400EDEDED00DADADA00D8D8D800A1A1
      A100D3D3D300CECECE00EFEFEF00EDEDED00EBEBEB00E9E9E900E2E2E200E3E3
      E30077777700E1E1E100E0E0E000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F3F3F300F0F0F000EDEDED00E9E9E900E7E7
      E700DDDDDD00DEDEDE00DCDCDC00C9C9C900B4B4B400D2D2D200C1C1C100BBBB
      BB00C5C5C50081818100D9D9D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8
      F800F6F6F600F3F3F300F0F0F000EDEDED00E9E9E900E7E7E700DDDDDD00DEDE
      DE00DCDCDC00C9C9C900B4B4B400D2D2D200C1C1C100BBBBBB00C5C5C5008181
      8100D9D9D9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F3F3
      F300F0F0F000EDEDED00E9E9E900E7E7E700DDDDDD00DEDEDE00DCDCDC00C9C9
      C900B4B4B400D2D2D200C1C1C100BBBBBB00C5C5C50081818100D9D9D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F1F1F100ECECEC00E3E3E300FFFFFF00E7E7E700D4D4D400ECEC
      EC00FFFFFF00FFFFFF00FFFFFF00F2F2F200EDEDED00EAEAEA00D4D4D400BCBC
      BC00CBCBCB00C9C9C900EDEDED00EBEBEB00E9E9E900E7E7E700E2E2E200E0E0
      E000F8F8F800DFDFDF00DEDEDE00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F2F2F200F0F0F000ECECEC00E8E8E800C1C1
      C100B2B2B200ACACAC00B1B1B100B0B0B000ADADAD00AFAFAF00B2B2B200B2B2
      B200B0B0B000AFAFAF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8
      F800F6F6F600F2F2F200F0F0F000ECECEC00E8E8E800C1C1C100B2B2B200ACAC
      AC00B1B1B100B0B0B000ADADAD00AFAFAF00B2B2B200B2B2B200B0B0B000AFAF
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F2F2
      F200F0F0F000ECECEC00E8E8E800C1C1C100B2B2B200ACACAC00B1B1B100B0B0
      B000ADADAD00AFAFAF00B2B2B200B2B2B200B0B0B000AFAFAF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1D1D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00E9E9E900E0E0E000EFEFEF00D4D4D400EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0F0F000EBEBEB00E6E6E600DDDDDD00ACAC
      AC00C8C8C800BBBBBB00F5F5F500EAEAEA00E3E3E300E5E5E500E2E2E200DEDE
      DE0088888800DADADA00DBDBDB00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F7F7F700F5F5F500F1F1F100EEEEEE00E9E9E900E7E7E700BFBF
      BF00FCFCFC00FDFDFD00FDFDFD00F6F6F600F3F3F300E8E8E800DFDFDF00DADA
      DA00C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F7F7
      F700F5F5F500F1F1F100EEEEEE00E9E9E900E7E7E700BFBFBF00FCFCFC00FDFD
      FD00FDFDFD00F6F6F600F3F3F300E8E8E800DFDFDF00DADADA00C4C4C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F7F7F700F5F5F500F1F1
      F100EEEEEE00E9E9E900E7E7E700BFBFBF00FCFCFC00FDFDFD00FDFDFD00F6F6
      F600F3F3F300E8E8E800DFDFDF00DADADA00C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F4F4F400EDEDED00E3E3E300DADADA00E1E1E100F0F0F000F7F7F700FFFF
      FF00FFFFFF00FFFFFF00F6F6F600F0F0F000E8E8E800B2B2B200B1B1B100ADAD
      AD00B2B2B200B0B0B000FBFBFB00F6F6F600EBEBEB00DFDFDF00DBDBDB00DCDC
      DC00ECECEC00D4D4D400D4D4D400000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFB
      FB00FAFAFA00F6F6F600F4F4F400F0F0F000EDEDED00E8E8E800E5E5E500BEBE
      BE00FCFCFC00FBFBFB00F5F5F500EFEFEF00EAEAEA00DEDEDE00D9D9D900C1C1
      C100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00FAFAFA00F6F6
      F600F4F4F400F0F0F000EDEDED00E8E8E800E5E5E500BEBEBE00FCFCFC00FBFB
      FB00F5F5F500EFEFEF00EAEAEA00DEDEDE00D9D9D900C1C1C100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00FAFAFA00F6F6F600F4F4F400F0F0
      F000EDEDED00E8E8E800E5E5E500BEBEBE00FCFCFC00FBFBFB00F5F5F500EFEF
      EF00EAEAEA00DEDEDE00D9D9D900C1C1C1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D3D3D300CDCDCD00CBCBCB00C9C9C900C8C8C800C6C6C600C4C4
      C400BEBEBE00B9B9B900B0B0B000ABABAB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F4F4F400EDEDED00E5E5E500FEFEFE00F5F5F500EAEA
      EA00D9D9D900F0F0F000FCFCFC00F7F7F700F4F4F400EDEDED00DADADA00D8D8
      D800A1A1A100D3D3D300CECECE00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFB
      FB00F9F9F900F5F5F500F3F3F300EFEFEF00ECECEC00E7E7E700E4E4E400C2C2
      C200FAFAFA00F6F6F600F1F1F100EAEAEA00DEDEDE00D4D4D400C2C2C2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00F9F9F900F5F5
      F500F3F3F300EFEFEF00ECECEC00E7E7E700E4E4E400C2C2C200FAFAFA00F6F6
      F600F1F1F100EAEAEA00DEDEDE00D4D4D400C2C2C20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00F9F9F900F5F5F500F3F3F300EFEF
      EF00ECECEC00E7E7E700E4E4E400C2C2C200FAFAFA00F6F6F600F1F1F100EAEA
      EA00DEDEDE00D4D4D400C2C2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F1F1F100ECECEC00E3E3E300FEFEFE00E7E7E700D4D4
      D400ECECEC00FEFEFE00FBFBFB00F7F7F700F2F2F200EDEDED00EAEAEA00D4D4
      D400BCBCBC00CBCBCB00C9C9C900000000000000000000000000000000000000
      00000000000000000000CDCDCD00FEFEFE00F9F9F900FCFCFC00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00FCFCFC00F9F9
      F900F7F7F700F5F5F500F1F1F100F0F0F000ECECEC00E6E6E600E3E3E300C2C2
      C200F8F8F800F2F2F200E7E7E700E0E0E000D4D4D400C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CDCDCD00FEFEFE00F9F9F900FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00FCFCFC00F9F9F900F7F7F700F5F5
      F500F1F1F100F0F0F000ECECEC00E6E6E600E3E3E300C2C2C200F8F8F800F2F2
      F200E7E7E700E0E0E000D4D4D400C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00FEFE
      FE00F9F9F900FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00FCFCFC00F9F9F900F7F7F700F5F5F500F1F1F100F0F0
      F000ECECEC00E6E6E600E3E3E300C2C2C200F8F8F800F2F2F200E7E7E700E0E0
      E000D4D4D400C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00E9E9E900E0E0E000EFEFEF00D4D4D400EFEF
      EF00FEFEFE00FEFEFE00FBFBFB00F6F6F600F0F0F000EBEBEB00E6E6E600DDDD
      DD00ACACAC00C8C8C800BBBBBB00000000000000000000000000000000000000
      00000000000000000000D0D0D000FCFCFC00FBFBFB00FBFBFB00FBFBFB00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FBFBFB00FAFA
      FA00F8F8F800F4F4F400F1F1F100EFEFEF00EBEBEB00E5E5E500E2E2E200C1C1
      C100F1F1F100EBEBEB00E5E5E500D1D1D100C3C3C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000FCFCFC00FBFBFB00FBFBFB00FBFBFB00FEFEFE00FEFEFE00FEFE
      FE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F4F4
      F400F1F1F100EFEFEF00EBEBEB00E5E5E500E2E2E200C1C1C100F1F1F100EBEB
      EB00E5E5E500D1D1D100C3C3C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F4F4F400F1F1F100EFEF
      EF00EBEBEB00E5E5E500E2E2E200C1C1C100F1F1F100EBEBEB00E5E5E500D1D1
      D100C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFCFCF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F4F4F400EDEDED00E3E3E300DADADA00E1E1E100F0F0F000F7F7
      F700FEFEFE00FEFEFE00FBFBFB00F6F6F600F0F0F000E8E8E800B2B2B200B1B1
      B100ADADAD00B2B2B200B0B0B000000000000000000000000000000000000000
      00000000000000000000D1D1D100FBFBFB00FDFDFD00FDFDFD00FCFCFC00FEFE
      FE00FDFDFD00FDFDFD00FEFEFE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8
      F800F6F6F600F3F3F300EFEFEF00EEEEEE00E9E9E900E4E4E400E0E0E000C4C4
      C400EFEFEF00E1E1E100D4D4D400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1D1D100FBFBFB00FDFDFD00FDFDFD00FCFCFC00FEFEFE00FDFDFD00FDFD
      FD00FEFEFE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F6F6F600F3F3
      F300EFEFEF00EEEEEE00E9E9E900E4E4E400E0E0E000C4C4C400EFEFEF00E1E1
      E100D4D4D400C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FBFB
      FB00FDFDFD00FDFDFD00FCFCFC00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FDFD
      FD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F6F6F600F3F3F300EFEFEF00EEEE
      EE00E9E9E900E4E4E400E0E0E000C4C4C400EFEFEF00E1E1E100D4D4D400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300CDCDCD00CBCBCB00C9C9C900C8C8C800C6C6
      C600C4C4C400BEBEBE00B9B9B900B0B0B000ABABAB00FEFEFE00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FAFAFA00F4F4F400EDEDED00E5E5E500FCFCFC00F5F5
      F500EAEAEA00D9D9D90000000000000000000000000000000000000000000000
      00000000000000000000D0D0D000FCFCFC00F8F8F800FAFAFA00FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FAFAFA00F8F8F800F9F9
      F900F6F6F600F2F2F200EEEEEE00EAEAEA00E6E6E600E1E1E100DCDCDC00C2C2
      C200EDEDED00DDDDDD00C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000FCFCFC00F8F8F800FAFAFA00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FCFCFC00FAFAFA00F8F8F800F9F9F900F6F6F600F2F2
      F200EEEEEE00EAEAEA00E6E6E600E1E1E100DCDCDC00C2C2C200EDEDED00DDDD
      DD00C1C1C1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FCFC
      FC00F8F8F800FAFAFA00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FAFAFA00F8F8F800F9F9F900F6F6F600F2F2F200EEEEEE00EAEA
      EA00E6E6E600E1E1E100DCDCDC00C2C2C200EDEDED00DDDDDD00C1C1C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDCDCD00F9F9F900FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00FCFCFC00F7F7F700F1F1F100ECECEC00E3E3E300F8F8F800E7E7
      E700D4D4D4000000000000000000000000000000000000000000000000000000
      00000000000000000000CFCFCF00FEFEFE00FBFBFB00FDFDFD00FAFAFA00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FBFBFB00FBFBFB00F7F7
      F700F4F4F400F1F1F100EDEDED00E8E8E800E3E3E300DEDEDE00DADADA00C3C3
      C300E1E1E100C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFCFCF00FEFEFE00FBFBFB00FDFDFD00FAFAFA00FCFCFC00FCFCFC00FCFC
      FC00FDFDFD00FDFDFD00FDFDFD00FBFBFB00FBFBFB00F7F7F700F4F4F400F1F1
      F100EDEDED00E8E8E800E3E3E300DEDEDE00DADADA00C3C3C300E1E1E100C2C2
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00FEFE
      FE00FBFBFB00FDFDFD00FAFAFA00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFD
      FD00FDFDFD00FBFBFB00FBFBFB00F7F7F700F4F4F400F1F1F100EDEDED00E8E8
      E800E3E3E300DEDEDE00DADADA00C3C3C300E1E1E100C2C2C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D1D100FDFDFD00FCFCFC00FDFDFD00FEFE
      FE00FCFCFC00FAFAFA00F6F6F600EFEFEF00E9E9E900E0E0E000EFEFEF00D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D000FDFDFD00FCFCFC00FEFEFE00FBFBFB00FEFE
      FE00FEFEFE00FDFDFD00FEFEFE00FEFEFE00FDFDFD00FAFAFA00F8F8F800F7F7
      F700F4F4F400F0F0F000EEEEEE00EAEAEA00E4E4E400E0E0E000DEDEDE00C5C5
      C500C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000FDFDFD00FCFCFC00FEFEFE00FBFBFB00FEFEFE00FEFEFE00FDFD
      FD00FEFEFE00FEFEFE00FDFDFD00FAFAFA00F8F8F800F7F7F700F4F4F400F0F0
      F000EEEEEE00EAEAEA00E4E4E400E0E0E000DEDEDE00C5C5C500C4C4C4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FDFD
      FD00FCFCFC00FEFEFE00FBFBFB00FEFEFE00FEFEFE00FDFDFD00FEFEFE00FEFE
      FE00FDFDFD00FAFAFA00F8F8F800F7F7F700F4F4F400F0F0F000EEEEEE00EAEA
      EA00E4E4E400E0E0E000DEDEDE00C5C5C500C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFCFCF00FBFBFB00FAFAFA00FCFCFC00FDFD
      FD00FDFDFD00FBFBFB00F4F4F400EDEDED00E3E3E300DADADA00E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300D6D6D600CDCDCD00CCCCCC00CBCBCB00C9C9
      C900C9C9C900C9C9C900C8C8C800C7C7C700C6C6C600C5C5C500C4C4C400C0C0
      C000BEBEBE00BCBCBC00B9B9B900B5B5B500B0B0B000ADADAD00ABABAB00C3C3
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D3D3D300D6D6D600CDCDCD00CCCCCC00CBCBCB00C9C9C900C9C9C900C9C9
      C900C8C8C800C7C7C700C6C6C600C5C5C500C4C4C400C0C0C000BEBEBE00BCBC
      BC00B9B9B900B5B5B500B0B0B000ADADAD00ABABAB00C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3D3D300D6D6
      D600CDCDCD00CCCCCC00CBCBCB00C9C9C900C9C9C900C9C9C900C8C8C800C7C7
      C700C6C6C600C5C5C500C4C4C400C0C0C000BEBEBE00BCBCBC00B9B9B900B5B5
      B500B0B0B000ADADAD00ABABAB00C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D300CDCDCD00CBCBCB00C9C9C900C8C8
      C800C6C6C600C4C4C400BEBEBE00B9B9B900B0B0B000ABABAB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E100CACACA00AEAEAE00ACACAC00A9A9A900A7A7
      A700A7A7A700A7A7A700A7A7A700A7A7A700A8A8A800A8A8A800A8A8A800A9A9
      A900A9A9A900A9A9A900AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00ABABAB0083838300858585008787870089898900888888008787
      870086868600858585008181810087878700E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ABABAB008383
      8300858585008787870089898900888888008787870086868600858585008181
      8100878787000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00AEAEAE00ACACAC00A9A9A900A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A8A8A800A8A8A800A8A8A800A9A9A900A9A9A900939393006A6A6A006E6E
      6E0071717100696969006D6D6D006F6F6F006F6F6F006E6E6E006C6C6C006F6F
      6F006D6D6D00707070007070700070707000707070006E6E6E006E6E6E006F6F
      6F0070707000707070006E6E6E00717171006C6C6C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4C003A3A3A003131310050505000A8A8A800D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      0000373737003D3D3D004040400037373700484848003F3F3F00383838003636
      360034343400444444003F3F3F00000000000000000000000000000000000000
      00000000000000000000CDCDCD00C2C2C200A6A6A600A1A1A100A1A1A100A0A0
      A000A0A0A000A0A0A000A0A0A000A0A0A0009F9F9F009F9F9F009F9F9F009F9F
      9F00A0A0A000A0A0A000A0A0A0009F9F9F009F9F9F009E9E9E009E9E9E00A2A2
      A200A2A2A20093939300AFAFAF00BCBCBC00BDBDBD00BFBFBF00BEBEBE00BEBE
      BE00BEBEBE00B8B8B800A1A1A1007C7C7C00E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000093939300AFAF
      AF00BCBCBC00BDBDBD00BFBFBF00BEBEBE00BEBEBE00BEBEBE00B8B8B800A1A1
      A1007C7C7C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00C2C2
      C200A6A6A600A1A1A100A1A1A100A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A0009F9F9F009F9F9F009F9F9F009F9F9F00A0A0A000787878009A9A9A00AAAA
      AA00666666004747470049494900464646004242420045454500474747004545
      4500474747004A4A4A004A4A4A004A4A4A004A4A4A0046464600454545004949
      49004949490056565600838383008E8E8E008383830000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A00353535004646460067676700494949003838380029292900A9A9
      A900C4C4C400CACACA00D7D7D700E1E1E1000000000000000000000000000000
      00007C7C7C0060606000D6D6D600A5A5A500535353005E5E5E00606060006767
      6700626262005A5A5A003B3B3B00000000000000000000000000000000000000
      00000000000000000000D5D5D500FCFCFC00F9F9F900F4F4F400F9F9F900F5F5
      F500F5F5F500F4F4F400F4F4F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1
      F100F1F1F100F1F1F100F0F0F000EFEFEF00EEEEEE00ECECEC00ECECEC00E9E9
      E900E9E9E900A6A6A600C9C9C900D6D6D600D6D6D600D8D8D800D7D7D700D6D6
      D600D7D7D700D2D2D200BEBEBE0084848400E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A600C9C9
      C900D6D6D600D6D6D600D8D8D800D7D7D700D6D6D600D7D7D700D2D2D200BEBE
      BE00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D5D5D500FCFC
      FC00F9F9F900F4F4F400F9F9F900F5F5F500F5F5F500F4F4F400F4F4F400F3F3
      F300F2F2F200F2F2F200F1F1F100F1F1F100F1F1F1007E7E7E007E7E7E008282
      82006060600040404000343434004747470044444400494949003F3F3F004141
      4100414141003E3E3E003E3E3E003E3E3E003E3E3E003B3B3B003C3C3C004242
      420048484800606060006F6F6F00737373007474740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004D4D
      4D00282828005B5B5B006464640099999900B0B0B00080808000575757001C1C
      1C00A6A6A600B7B7B700BDBDBD00C7C7C700CDCDCD0000000000000000000000
      0000E5E5E5007373730062626200EFEFEF009292920074747400808080008787
      8700A6A6A6006262620036363600000000000000000000000000000000000000
      00000000000000000000CBCBCB00FEFEFE00FCFCFC00F7F7F700F7F7F700F6F6
      F600F6F6F600F5F5F500F4F4F400F4F4F400F3F3F300F2F2F200F2F2F200F0F0
      F000F0F0F000F0F0F000EFEFEF00EEEEEE00ECECEC00EBEBEB00EAEAEA00EAEA
      EA00E9E9E900A6A6A600CACACA00D7D7D700D8D8D800DADADA00D9D9D900D9D9
      D900D8D8D800D3D3D300C2C2C20086868600E6E6E60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A600CACA
      CA00D7D7D700D8D8D800DADADA00D9D9D900D9D9D900D8D8D800D3D3D300C2C2
      C200868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB00FEFE
      FE00FCFCFC00F7F7F700F7F7F700F6F6F600F6F6F600F5F5F500F4F4F400F4F4
      F400F3F3F300F2F2F200F2F2F200F0F0F000F0F0F00057575700696969006464
      640077777700737373005E5E5E00A9A9A9007C7C7C0097979700757575007878
      78007B7B7B00BFBFBF00C0C0C000C1C1C100C0C0C000C2C2C200C0C0C000BBBB
      BB009A9A9A006363630058585800797979006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D5D5D003939
      3900414141004B4B4B00B9B9B9007272720076767600A4A4A4007B7B7B005C5C
      5C0020202000A1A1A100B2B2B200B2B2B200B3B3B300BCBCBC00D0D0D000BABA
      BA00E0E0E000CFCFCF007272720066666600F8F8F800B6B6B600777777007676
      76008F8F8F00646464002D2D2D00000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FDFDFD00FDFDFD00F7F7F700F5F5
      F500F5F5F500F4F4F400F3F3F300F2F2F200F2F2F200F1F1F100F1F1F100EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00E8E8
      E800E8E8E800A6A6A600C9C9C900D6D6D600D6D6D600D8D8D800D7D7D700D7D7
      D700D7D7D700D2D2D200BCBCBC0084848400E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A6A6A600C9C9
      C900D6D6D600D6D6D600D8D8D800D7D7D700D7D7D700D7D7D700D2D2D200BCBC
      BC00848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FDFDFD00FDFDFD00F7F7F700F5F5F500F5F5F500F4F4F400F3F3F300F2F2
      F200F2F2F200F1F1F100F1F1F100EFEFEF00EFEFEF00BEBEBE00EFEFEF00D0D0
      D000DDDDDD00C6C6C600FAFAFA00EBEBEB00D1D1D100DADADA00F1F1F100EAEA
      EA00F0F0F000B7B7B700B8B8B800B8B8B800B8B8B800B7B7B700B3B3B300B1B1
      B100E1E1E100C1C1C100B7B7B700A2A2A2006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E5E5E00262626004747
      470060606000585858008B8B8B004B4B4B005252520068686800ACACAC007272
      7200424242002F2F2F0098989800A1A1A100B1B1B100ABABAB009E9E9E00B9B9
      B900B6B6B600C3C3C300CBCBCB007474740069696900F9F9F900B4B4B4007B7B
      7B007D7D7D005E5E5E003B3B3B00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FCFCFC00F8F8F800F6F6
      F600F5F5F500F4F4F400F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100F2F2
      F200F2F2F200F0F0F000F0F0F000EFEFEF00EEEEEE00EDEDED00ECECEC00E8E8
      E800ECECEC00A1A1A100C3C3C300CFCFCF00CFCFCF00D2D2D200D1D1D100D1D1
      D100D1D1D100CDCDCD00B9B9B9007E7E7E00E5E5E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1A1A100C3C3
      C300CFCFCF00CFCFCF00D2D2D200D1D1D100D1D1D100D1D1D100CDCDCD00B9B9
      B9007E7E7E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FCFCFC00F8F8F800F6F6F600F5F5F500F4F4F400F4F4F400F4F4
      F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200C5C5C500F0F0F000EFEF
      EF00EEEEEE00EDEDED00F4F4F400E5E5E500BCBCBC00C1C1C100B9B9B900D9D9
      D900E4E4E400ACACAC00ADADAD00ADADAD00ACACAC00AEAEAE00ABABAB00ACAC
      AC00C4C4C400C9C9C900A7A7A700CACACA006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7D7D0028282800535353005454
      54007E7E7E0095959500535353004D4D4D00494949004A4A4A0069696900A9A9
      A900888888003B3B3B003636360098989800AAAAAA00A7A7A700B5B5B500AAAA
      AA00A0A0A000B5B5B500A8A8A800BDBDBD006D6D6D0060606000FBFBFB00C6C6
      C600767676006A6A6A003A3A3A00000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FFFFFF00FDFDFD00FBFBFB00F7F7
      F700F6F6F600F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1F100F2F2
      F200F2F2F200F0F0F000F0F0F000EFEFEF00EEEEEE00EDEDED00ECECEC00EDED
      ED00ECECEC009C9C9C00BDBDBD00C9C9C900C7C7C700C9C9C900C9C9C900C9C9
      C900CACACA00C6C6C600B3B3B30079797900E4E4E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C9C9C00BDBD
      BD00C9C9C900C7C7C700C9C9C900C9C9C900C9C9C900CACACA00C6C6C600B3B3
      B300797979000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FFFFFF00FDFDFD00FBFBFB00F7F7F700F6F6F600F5F5F500F5F5F500F4F4
      F400F3F3F300F2F2F200F1F1F100F2F2F200F2F2F200C5C5C50083838300B9B9
      B900B7B7B700D3D3D300FDFDFD00E6E6E600CFCFCF00D4D4D400D3D3D300DCDC
      DC00E2E2E2009C9C9C009D9D9D009E9E9E009D9D9D00A2A2A200A1A1A1009C9C
      9C00EFEFEF00F5F5F500A4A4A400EAEAEA005050500000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800031313100474747005A5A5A008C8C
      8C00939393005757570037373700444444004B4B4B004F4F4F00545454005A5A
      5A00A3A3A3008A8A8A004A4A4A002626260095959500ACACAC00A8A8A800B0B0
      B0009E9E9E00ABABAB00A8A8A800A3A3A300BABABA00797979005A5A5A00FDFD
      FD00999999004E4E4E003D3D3D00000000000000000000000000000000000000
      00000000000000000000D0D0D000FEFEFE00FFFFFF00FEFEFE00FDFDFD00F7F7
      F700F6F6F600F5F5F500F5F5F500F3F3F300F3F3F300F2F2F200F2F2F200F2F2
      F200F2F2F200F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECECEC00EDED
      ED00E9E9E90097979700B8B8B800C4C4C400C2C2C200C4C4C400C3C3C300C4C4
      C400C4C4C400BFBFBF00ACACAC0073737300E4E4E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097979700B8B8
      B800C4C4C400C2C2C200C4C4C400C3C3C300C4C4C400C4C4C400BFBFBF00ACAC
      AC00737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FEFE
      FE00FFFFFF00FEFEFE00FDFDFD00F7F7F700F6F6F600F5F5F500F5F5F500F3F3
      F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200BDBDBD0084848400DDDD
      DD00DCDCDC00D5D5D500E8E8E800EEEEEE00E2E2E200DDDDDD00E8E8E800E2E2
      E200E1E1E1008D8D8D009090900090909000909090008C8C8C008E8E8E009090
      90009D9D9D008B8B8B009E9E9E00DBDBDB004E4E4E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007979790032323200636363003B3B3B008C8C8C009C9C
      9C004F4F4F00454545004A4A4A003F3F3F00393939004A4A4A00434343005F5F
      5F005F5F5F00B2B2B2006E6E6E00545454003434340091919100A3A3A300A5A5
      A500B7B7B7009D9D9D00ACACAC00ABABAB009B9B9B00A1A1A1007A7A7A005C5C
      5C00F0F0F000AEAEAE002E2E2E00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F7F7
      F700F6F6F600F5F5F500F6F6F600F5F5F500F3F3F300F3F3F300F2F2F200F3F3
      F300F2F2F200F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECECEC00EBEB
      EB00EDEDED0094949400B3B3B300BEBEBE00BCBCBC00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00B9B9B900A9A9A9006F6F6F00E2E2E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000094949400B3B3
      B300BEBEBE00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BDBDBD00B9B9B900A9A9
      A9006F6F6F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F7F7F700F6F6F600F5F5F500F6F6F600F5F5
      F500F3F3F300F3F3F300F2F2F200F3F3F300F2F2F200C5C5C500C5C5C500F0F0
      F000EFEFEF00EDEDED00ECECEC00DFDFDF00E8E8E800E7E7E700DBDBDB00E0E0
      E000E6E6E6007F7F7F0082828200828282008181810080808000828282007D7D
      7D007A7A7A00787878006D6D6D00737373005656560000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810035353500606060008F8F8F006B6B6B00808080005F5F
      5F004F4F4F00363636004F4F4F00404040003B3B3B003B3B3B004B4B4B004545
      45006161610057575700AAAAAA0088888800383838003636360099999900A9A9
      A900ABABAB00AAAAAA00A4A4A400A8A8A800A8A8A800ACACAC00A5A5A5007676
      76005F5F5F00E8E8E8003E3E3E00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00F6F6
      F600F6F6F600F5F5F500F6F6F600F6F6F600F5F5F500F4F4F400F2F2F200F3F3
      F300F2F2F200F0F0F000F0F0F000F0F0F000EFEFEF00EDEDED00ECECEC00EAEA
      EA00ECECEC0091919100AEAEAE00B9B9B900B7B7B700B8B8B800B9B9B900B9B9
      B900B7B7B700B1B1B1009E9E9E006B6B6B00E5E5E50000000000000000000000
      000000000000000000000000000000000000E1E1E100AEAEAE00A9A9A900A7A7
      A700A7A7A700A8A8A800A8A8A800A9A9A900AAAAAA00AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00A8A8A8000000000000000000000000000000
      000000000000000000000000000000000000000000000000000091919100AEAE
      AE00B9B9B900B7B7B700B8B8B800B9B9B900B9B9B900B7B7B700B1B1B1009E9E
      9E006B6B6B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F6F6F600F6F6F600F5F5F500F6F6F600F6F6
      F600F5F5F500F4F4F400F2F2F200F3F3F300F2F2F200C9C9C900CECECE00F0F0
      F000F6F6F600EDEDED00ECECEC00EAEAEA00EFEFEF00EBEBEB00E9E9E900DCDC
      DC00E6E6E6007373730076767600757575007575750074747400737373007373
      73006E6E6E006868680068686800626262004A4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7E7E003333330071717100A0A0A000C1C1C1009D9D9D00414141003D3D
      3D0051515100585858003939390051515100444444003C3C3C00393939005959
      59003F3F3F00525252006F6F6F00AAAAAA008F8F8F004545450021212100A4A4
      A400A9A9A900A3A3A300A9A9A900ADADAD00ACACAC00ADADAD00ADADAD00A6A6
      A6006C6C6C006060600037373700000000000000000000000000000000000000
      00000000000000000000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00F8F8
      F800F6F6F600F5F5F500F6F6F600F6F6F600F6F6F600F4F4F400F3F3F300F3F3
      F300F2F2F200F0F0F000F1F1F100F0F0F000EFEFEF00EEEEEE00ECECEC00EFEF
      EF00F6F6F60097979700B2B2B200B8B8B800B3B3B300B3B3B300B5B5B500B5B5
      B500B5B5B500B1B1B100A0A0A00069696900E5E5E50000000000000000000000
      000000000000000000000000000000000000D5D5D500F9F9F900F9F9F900F5F5
      F500F4F4F400F2F2F200F1F1F100F1F1F100F0F0F000EEEEEE00ECECEC00E9E9
      E900E8E8E800E6E6E600E5E5E500E0E0E0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097979700B2B2
      B200B8B8B800B3B3B300B3B3B300B5B5B500B5B5B500B5B5B500B1B1B100A0A0
      A000696969000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2D2D200FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00F8F8F800F6F6F600F5F5F500F6F6F600F6F6
      F600F6F6F600F4F4F400F3F3F300F3F3F300F2F2F200B9B9B90077777700E3E3
      E300D7D7D700E7E7E700ECECEC00E5E5E500D2D2D200E9E9E900D0D0D000E4E4
      E400E5E5E500676767006A6A6A006A6A6A006A6A6A0069696900676767006969
      69006666660067676700626262005B5B5B004646460000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      86003F3F3F006D6D6D00A2A2A200CBCBCB00AEAEAE00858585006C6C6C003535
      35004C4C4C004D4D4D005A5A5A0046464600545454004E4E4E004D4D4D003131
      31005A5A5A004B4B4B005656560059595900A6A6A6007F7F7F00555555001C1C
      1C00A1A1A100ABABAB00A2A2A200B1B1B100A2A2A200A6A6A600A6A6A600AEAE
      AE00B7B7B700787878003C3C3C00000000000000000000000000000000000000
      00000000000000000000D2D2D200FEFEFE00FFFFFF00FEFEFE00FEFEFE00FAFA
      FA00F8F8F800F5F5F500F5F5F500F5F5F500F5F5F500F4F4F400F3F3F300F3F3
      F300F2F2F200F1F1F100F1F1F100F0F0F000D2D2D200CBCBCB00CCCCCC00CDCD
      CD00C5C5C500B2B2B200C9C9C900CECECE00CACACA00C7C7C700B9B9B900B4B4
      B400AEAEAE00ACACAC00A4A4A4006D6D6D00B6B6B600CDCDCD00D3D3D300CECE
      CE00CCCCCC00000000000000000000000000D0D0D000FDFDFD00F7F7F700F5F5
      F500F3F3F300F2F2F200F1F1F100EFEFEF00EFEFEF00EDEDED00EBEBEB00E8E8
      E800E6E6E600E4E4E400E3E3E300E5E5E5000000000000000000000000000000
      000000000000D2D2D200CBCBCB00CCCCCC00CDCDCD00C5C5C500B2B2B200C9C9
      C900CECECE00CACACA00C7C7C700B9B9B900B4B4B400AEAEAE00ACACAC00A4A4
      A4006D6D6D00B6B6B600CDCDCD00D3D3D300CECECE00CCCCCC00E6E6E6000000
      0000000000000000000000000000000000000000000000000000D2D2D200FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FAFAFA00F8F8F800F5F5F500F5F5F500F5F5
      F500F5F5F500F4F4F400F3F3F300F3F3F300F2F2F200BEBEBE008D8D8D00B6B6
      B600D3D3D300C8C8C800C5C5C500F0F0F000D5D5D500DCDCDC00E0E0E000E3E3
      E300E8E8E8005F5F5F006161610060606000616161005F5F5F00606060005E5E
      5E005C5C5C005C5C5C005C5C5C00565656004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000858585003A3A
      3A0088888800A1A1A100D2D2D200BDBDBD007F7F7F00737373007A7A7A007676
      7600414141004A4A4A004E4E4E005D5D5D004F4F4F0053535300505050004A4A
      4A003B3B3B00585858004B4B4B00505050006E6E6E009E9E9E008B8B8B005353
      530019191900A6A6A600B1B1B1009A9A9A00A7A7A700ABABAB009D9D9D00B8B8
      B800C3C3C300C8C8C800EAEAEA00000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FCFC
      FC00F9F9F900F5F5F500F4F4F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2
      F200F2F2F200F1F1F100F1F1F100B6B6B6007F7F7F00848484008F8F8F009494
      94009D9D9D00C9C9C900D2D2D200D2D2D200D1D1D100D3D3D300D1D1D100D0D0
      D000CFCFCF00CCCCCC00C1C1C100A3A3A300939393008C8C8C00868686008383
      83006E6E6E00000000000000000000000000D0D0D000FFFFFF00FBFBFB00F6F6
      F600F5F5F500F3F3F300F1F1F100F2F2F200F0F0F000EEEEEE00ECECEC00ECEC
      EC00EAEAEA007F7F7F00E3E3E300E2E2E2000000000000000000000000000000
      0000B6B6B6007F7F7F00848484008F8F8F00949494009D9D9D00C9C9C900D2D2
      D200D2D2D200D1D1D100D3D3D300D1D1D100D0D0D000CFCFCF00CCCCCC00C1C1
      C100A3A3A300939393008C8C8C0086868600838383006E6E6E00C9C9C9000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FCFCFC00F9F9F900F5F5F500F4F4F400F5F5
      F500F5F5F500F4F4F400F3F3F300F2F2F200F2F2F200C4C4C400C1C1C100EBEB
      EB00F5F5F500FAFAFA00EDEDED00EAEAEA00DCDCDC00DCDCDC00DEDEDE00EFEF
      EF00EDEDED00555555005959590059595900595959005A5A5A00595959005959
      5900585858005757570055555500525252004343430000000000000000000000
      000000000000000000000000000000000000000000009D9D9D00464646008484
      8400A2A2A200DEDEDE00C1C1C1008C8C8C0089898900808080007A7A7A008383
      830080808000454545004B4B4B005151510052525200585858005A5A5A006060
      6000323232004F4F4F0053535300646464004F4F4F00767676009B9B9B007D7D
      7D00565656002B2B2B009E9E9E00A5A5A500B3B3B300AEAEAE00B8B8B800C0C0
      C000D6D6D600E9E9E90000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00F9F9F900F4F4F400F5F5F500F5F5F500F4F4F400F3F3F300F2F2F200F1F1
      F100F1F1F100F0F0F000F0F0F000F0F0F000C6C6C600BBBBBB00CFCFCF00DADA
      DA00D2D2D200DADADA00DADADA00D9D9D900D8D8D800D8D8D800D7D7D700D7D7
      D700D6D6D600D6D6D600D2D2D200D8D8D800C6C6C600CDCDCD00C6C6C6008F8F
      8F00D8D8D800000000000000000000000000D1D1D100FFFFFF00FEFEFE00F6F6
      F600F6F6F600F3F3F300F2F2F200F2F2F200F0F0F000EFEFEF00ECECEC00EDED
      ED00EAEAEA007B7B7B00E1E1E100E2E2E2000000000000000000000000000000
      000000000000C6C6C600BBBBBB00CFCFCF00DADADA00D2D2D200DADADA00DADA
      DA00D9D9D900D8D8D800D8D8D800D7D7D700D7D7D700D6D6D600D6D6D600D2D2
      D200D8D8D800C6C6C600CDCDCD00C6C6C6008F8F8F00D8D8D800000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00F9F9F900F4F4F400F5F5F500F5F5
      F500F4F4F400F3F3F300F2F2F200F1F1F100F1F1F100BDBDBD00DEDEDE00FDFD
      FD00F6F6F600EDEDED00ECECEC00EAEAEA00D2D2D200DEDEDE00D4D4D400D3D3
      D300D6D6D600535353005A5A5A0058585800555555005E5E5E006E6E6E008585
      8500959595009E9E9E00979797008B8B8B007676760000000000000000000000
      0000000000000000000000000000000000009E9E9E003D3D3D008A8A8A00ABAB
      AB00E1E1E100C1C1C100A0A0A00095959500949494008C8C8C008E8E8E008E8E
      8E0081818100757575005454540051515100636363005A5A5A00595959003B3B
      3B00616161005F5F5F005A5A5A00474747005C5C5C004D4D4D0074747400A7A7
      A7007D7D7D00424242003636360095959500AEAEAE00ACACAC00BBBBBB00D9D9
      D900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FBFBFB00F7F7F700F5F5F500F3F3F300F2F2F200F1F1F100F1F1F100F0F0
      F000F0F0F000F0F0F000EFEFEF00EFEFEF00EEEEEE00C7C7C700C6C6C600DFDF
      DF00DFDFDF00E0E0E000DFDFDF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DDDDDD00DADADA00DADADA00DBDBDB00CECECE0094949400D1D1
      D10000000000000000000000000000000000D2D2D200FFFFFF00FEFEFE00F6F6
      F600F6F6F600F6F6F600F3F3F300F2F2F200F1F1F100EFEFEF00ECECEC00E6E6
      E600E8E8E800FDFDFD00E3E3E300E2E2E200A9A9A900AAAAAA00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00C7C7C700C6C6C600DFDFDF00DFDFDF00E0E0E000DFDF
      DF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DDDDDD00DADA
      DA00DADADA00DBDBDB00CECECE0094949400D1D1D10000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FBFBFB00F7F7F700F5F5F500F3F3
      F300F2F2F200F1F1F100F1F1F100F0F0F000F0F0F000CDCDCD00CACACA00DADA
      DA00EEEEEE00ECECEC00EBEBEB00F2F2F200DEDEDE00DFDFDF00D7D7D700F0F0
      F000F2F2F200525252007B7B7B009A9A9A00A0A0A000A7A7A700A7A7A700A6A6
      A600A4A4A400A2A2A200A2A2A200A3A3A300AAAAAA0000000000000000000000
      000000000000000000000000000089898900545454008A8A8A00B4B4B400D9D9
      D900D8D8D800AAAAAA009D9D9D009F9F9F009E9E9E00999999009A9A9A009898
      98008F8F8F0097979700949494003A3A3A0072727200585858004B4B4B005454
      5400646464006A6A6A00525252005B5B5B006363630051515100616161006161
      6100AAAAAA00868686004848480026262600A3A3A300BDBDBD00D6D6D600E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00F9F9F900F4F4F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0
      F000F0F0F000EFEFEF00EFEFEF00EFEFEF00EDEDED00ECECEC00CACACA00B8B8
      B800DEDEDE00E1E1E100DFDFDF00DFDFDF00E0E0E000E0E0E000E1E1E100E1E1
      E100E0E0E000E0E0E000E5E5E500D6D6D600E1E1E1009E9E9E00DBDBDB000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00F9F9
      F900F4F4F400F5F5F500F3F3F300F2F2F200F1F1F100EFEFEF00EDEDED00EBEB
      EB00E9E9E9007A7A7A00E1E1E100E2E2E200F1F1F100F0F0F000EEEEEE00ECEC
      EC00E9E9E900E8E8E800E6E6E600CACACA00B8B8B800DEDEDE00E1E1E100DFDF
      DF00DFDFDF00E0E0E000E0E0E000E1E1E100E1E1E100E0E0E000E0E0E000E5E5
      E500D6D6D600E1E1E1009E9E9E00DBDBDB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00F9F9F900F4F4F400F4F4
      F400F3F3F300F2F2F200F0F0F000F0F0F000F0F0F0006B6B6B00717171006D6D
      6D006F6F6F006767670067676700686868006868680067676700646464006767
      670063636300B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B1B1B100B1B1
      B100B2B2B200B1B1B100B3B3B300AFAFAF00BCBCBC0000000000000000000000
      000000000000000000008C8C8C005555550094949400BFBFBF00E1E1E100CFCF
      CF00BABABA0084848400ABABAB00B1B1B1009F9F9F00A5A5A500A1A1A1009D9D
      9D00A6A6A60091919100A1A1A100A3A3A3004444440050505000696969006262
      6200696969005C5C5C0071717100555555005555550061616100585858005656
      5600767676009D9D9D007A7A7A005D5D5D0034343400B2B2B200E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FDFDFD00F9F9F900F5F5F500F4F4F400F5F5F500F3F3F300F1F1F100F0F0
      F000EFEFEF00EFEFEF00EFEFEF00EEEEEE00EDEDED00ECECEC00EBEBEB00D1D1
      D100BEBEBE00D9D9D900DDDDDD00DEDEDE00DFDFDF00DFDFDF00E0E0E000E0E0
      E000DFDFDF00DFDFDF00DCDCDC00DBDBDB008E8E8E00E2E2E200000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FBFB
      FB00F5F5F500F2F2F200F1F1F100F0F0F000EFEFEF00EEEEEE00EBEBEB00E7E7
      E700E7E7E700BCBCBC00E3E3E300E1E1E100EFEFEF00EFEFEF00EDEDED00EBEB
      EB00E8E8E800E6E6E600E4E4E400E3E3E300D1D1D100BEBEBE00D9D9D900DDDD
      DD00DEDEDE00DFDFDF00DFDFDF00E0E0E000E0E0E000DFDFDF00DFDFDF00DCDC
      DC00DBDBDB008E8E8E00E2E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FDFDFD00F9F9F900F5F5F500F4F4
      F400F5F5F500F3F3F300F1F1F100F0F0F000EFEFEF0064646400747474005A5A
      5A00444444004F4F4F005050500050505000515151004F4F4F004D4D4D005050
      50004C4C4C00B9B9B900B9B9B900B9B9B900B9B9B900BABABA00BABABA00BBBB
      BB00BBBBBB00BBBBBB00BDBDBD00BBBBBB00C7C7C70000000000000000000000
      0000000000009E9E9E004F4F4F0065656500BEBEBE00E1E1E100DDDDDD00BEBE
      BE007D7D7D007A7A7A0093939300A8A8A800B5B5B500B0B0B000AEAEAE00ADAD
      AD00A7A7A700A4A4A400AFAFAF00959595005252520060606000676767007777
      7700696969006565650069696900666666007C7C7C0053535300606060005B5B
      5B00565656007A7A7A00AFAFAF0076767600414141003C3C3C00DBDBDB000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FBFBFB00F7F7F700F4F4F400F4F4F400F3F3F300F2F2F200F0F0
      F000F0F0F000EFEFEF00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E5E5
      E500DBDBDB00B4B4B400D5D5D500DADADA00E3E3E300D5D5D500DBDBDB00D3D3
      D300E1E1E100DDDDDD00DFDFDF00939393000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FDFD
      FD00F5F5F500F5F5F500F1F1F100EFEFEF00EFEFEF00EDEDED00EBEBEB00EBEB
      EB00E9E9E9007B7B7B00E4E4E400E1E1E100F2F2F200F0F0F000EEEEEE00ECEC
      EC00ECECEC00EAEAEA007F7F7F00E3E3E300E2E2E200DBDBDB00B4B4B400D5D5
      D500DADADA00E3E3E300D5D5D500DBDBDB00D3D3D300E1E1E100DDDDDD00DFDF
      DF0093939300E8E8E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FBFBFB00F7F7F700F4F4
      F400F4F4F400F3F3F300F2F2F200F0F0F000F0F0F00028282800B5B5B500C1C1
      C100C0C0C000C2C2C200C2C2C200C2C2C200C3C3C300C5C5C500C4C4C400C5C5
      C500C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C5C5C500C5C5C500C6C6
      C600C6C6C600C5C5C500C4C4C400C3C3C300D2D2D20000000000000000000000
      0000A4A4A4005B5B5B00737373005D5D5D00E4E4E400E0E0E000C8C8C8009494
      94007C7C7C00767676007C7C7C008C8C8C00B0B0B000B7B7B700B3B3B300B1B1
      B100A7A7A700BBBBBB00929292006161610072727200717171007B7B7B006666
      6600707070007272720059595900ABABAB00B6B6B600AFAFAF00525252006B6B
      6B00626262006666660072727200A5A5A5008F8F8F00424242002B2B2B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FFFFFF00FEFEFE00FAFAFA00F5F5F500F0F0F000F0F0F000F2F2F200F0F0
      F000EFEFEF00EEEEEE00EDEDED00EDEDED00EBEBEB00E9E9E900E9E9E900E9E9
      E900E2E2E200E4E4E400B1B1B100D7D7D700DFDFDF00E8E8E800D9D9D900DEDE
      DE00D7D7D700DDDDDD0083838300000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FAFAFA00F0F0F000F2F2F200EFEFEF00EDEDED00EBEBEB00E9E9E900E2E2
      E200E3E3E30077777700E1E1E100E0E0E000F2F2F200F0F0F000EFEFEF00ECEC
      EC00EDEDED00EAEAEA007B7B7B00E1E1E100E2E2E200A9A9A900E4E4E400B1B1
      B100D7D7D700DFDFDF00E8E8E800D9D9D900DEDEDE00D7D7D700DDDDDD008383
      8300E8E8E8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFEFE00FAFAFA00F5F5
      F500F0F0F000F0F0F000F2F2F200F0F0F000EFEFEF0033333300C9C9C900D1D1
      D100CFCFCF00CBCBCB00CBCBCB00CBCBCB00CCCCCC00CDCDCD00CDCDCD00CDCD
      CD00CECECE00CECECE00CECECE00CECECE00CECECE00CFCFCF00CFCFCF00D0D0
      D000D0D0D000CFCFCF00CECECE00CECECE00E0E0E0000000000000000000C4C4
      C400747474006A6A6A009E9E9E007B7B7B00D6D6D600BFBFBF00C2C2C200A6A6
      A6008A8A8A007575750070707000717171008D8D8D00A9A9A900A6A6A600C7C7
      C700A7A7A700ABABAB004F4F4F007E7E7E00717171007A7A7A00727272007676
      76006E6E6E0058585800B9B9B900BCBCBC00E3E3E300EEEEEE00CFCFCF005C5C
      5C006A6A6A005A5A5A0063636300767676009F9F9F0087878700515151002121
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00F9F9F900F2F2F200F0F0F000F1F1F100EFEF
      EF00EEEEEE00EDEDED00ECECEC00EAEAEA00E9E9E900E8E8E800E8E8E800E7E7
      E700E9E9E900DDDDDD00E5E5E500B2B2B200D3D3D300DBDBDB00DEDEDE00E0E0
      E000D2D2D20088888800BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FEFE
      FE00FEFEFE00F8F8F800F0F0F000EDEDED00EBEBEB00E9E9E900E7E7E700E2E2
      E200E0E0E000F8F8F800DFDFDF00DEDEDE00F2F2F200F1F1F100EFEFEF00ECEC
      EC00E6E6E600E8E8E800FDFDFD00E3E3E300E2E2E200F1F1F100F0F0F000E5E5
      E500B2B2B200D3D3D300DBDBDB00DEDEDE00E0E0E000D2D2D200888888000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FFFFFF00FEFEFE00FEFEFE00F9F9
      F900F2F2F200F0F0F000F1F1F100EFEFEF00EEEEEE0033333300D7D7D700D5D5
      D500D4D4D400D6D6D600D6D6D600D6D6D600D6D6D600D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D8D8D800D8D8D800D8D8D800D9D9D900D9D9D900D9D9
      D900D9D9D900DADADA00DCDCDC00D5D5D500EAEAEA000000000000000000B0B0
      B0007A7A7A00A0A0A000B1B1B100C2C2C200A4A4A400EAEAEA00E5E5E500D5D5
      D5008D8D8D00C1C1C100D3D3D300C5C5C5008080800099999900B4B4B400AFAF
      AF00AAAAAA0054545400828282007E7E7E00757575007C7C7C00737373007373
      730066666600BCBCBC00B2B2B200F3F3F300E5E5E500DEDEDE00F7F7F700C3C3
      C3005A5A5A006A6A6A00666666006868680071717100A8A8A8007B7B7B005858
      5800292929000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FEFEFE00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FEFEFE00FDFDFD00FEFEFE00FDFDFD00F8F8F800F3F3F300F0F0F000EEEE
      EE00EDEDED00ECECEC00EBEBEB00E9E9E900E9E9E900E8E8E800E7E7E700E7E7
      E700E2E2E200E8E8E800E0E0E000EEEEEE00A7A7A700D3D3D300DCDCDC00D7D7
      D700858585009A9A9A00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FEFEFE00FCFCFC00FBFBFB00F5F5F500EAEAEA00E3E3E300E5E5E500E2E2
      E200DEDEDE0088888800DADADA00DBDBDB00F2F2F200F1F1F100EFEFEF00EDED
      ED00EBEBEB00E9E9E9007A7A7A00E1E1E100E2E2E200EFEFEF00EFEFEF00EDED
      ED00EEEEEE00A7A7A700D3D3D300DCDCDC00D7D7D70085858500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FDFDFD00FEFEFE00FDFD
      FD00F8F8F800F3F3F300F0F0F000EEEEEE00EDEDED002B2B2B00DDDDDD00D7D7
      D700E2E2E200DFDFDF00DFDFDF00DFDFDF00DFDFDF00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00E2E2E200E2E2E200E5E5E500DDDDDD000000000000000000B6B6
      B6006D6D6D00D0D0D000B9B9B900B2B2B200A2A2A200A3A3A300D9D9D900EDED
      ED00D8D8D800A2A2A200B1B1B100BDBDBD00AFAFAF00B4B4B400B2B2B200B0B0
      B0005B5B5B007B7B7B00868686007A7A7A00858585007D7D7D007B7B7B006868
      6800B5B5B500BEBEBE00ECECEC00CCCCCC00F5F5F500E7E7E700C2C2C200F8F8
      F800CFCFCF005A5A5A006A6A6A006B6B6B00616161007B7B7B00AAAAAA006B6B
      6B005E5E5E002727270000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00F9F9F900F6F6F600EFEF
      EF00EAEAEA00E8E8E800E9E9E900EBEBEB00E9E9E900E6E6E600E4E4E400E4E4
      E400E3E3E300E2E2E200E2E2E200C1C1C100F5F5F50096969600CECECE008383
      8300DDDDDD0097979700BEBEBE00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FBFBFB00F6F6F600EBEBEB00DFDFDF00DBDB
      DB00DCDCDC00ECECEC00D4D4D400D4D4D400F0F0F000EFEFEF00EEEEEE00EBEB
      EB00E7E7E700E7E7E700BCBCBC00E3E3E300E1E1E100F2F2F200F0F0F000EEEE
      EE00ECECEC00F5F5F50096969600CECECE0083838300E2E2E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FCFCFC00F9F9F900F6F6F600EFEFEF00EAEAEA0025252500E8E8E800DFDF
      DF00E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E6E6E600E6E6E600E6E6
      E600E6E6E600E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6
      E600E6E6E600E9E9E900E7E7E700E6E6E600DDDDDD000000000000000000B7B7
      B70088888800B1B1B1009F9F9F00A3A3A300B2B2B200A5A5A500A6A6A600DDDD
      DD00E6E6E600D6D6D60099999900ACACAC00A9A9A900E3E3E300DDDDDD006565
      650081818100919191008282820080808000828282007B7B7B007C7C7C00A6A6
      A600C0C0C000DFDFDF00D9D9D900E5E5E500E2E2E200D6D6D600DBDBDB00EAEA
      EA00DFDFDF00CBCBCB0059595900676767006A6A6A006565650074747400AAAA
      AA007F7F7F00535353003D3D3D00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FEFEFE00FDFDFD00FEFEFE00FDFDFD00FBFBFB00F9F9F900F5F5
      F500F1F1F100ECECEC00E9E9E900E7E7E700E4E4E400E3E3E300E3E3E300E2E2
      E200E2E2E200E2E2E200E1E1E100BDBDBD008A8A8A00F7F7F700A5A5A500F7F7
      F700DCDCDC0096969600BEBEBE00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FEFE
      FE00FFFFFF00FEFEFE00FEFEFE00FCFCFC00F7F7F700F4F4F400EDEDED00DADA
      DA00D8D8D800A1A1A100D3D3D300CECECE00EFEFEF00EFEFEF00EDEDED00EBEB
      EB00EBEBEB00E9E9E9007B7B7B00E4E4E400E1E1E100F2F2F200F0F0F000EFEF
      EF00ECECEC00EDEDED00F7F7F700A5A5A500F7F7F700E2E2E200A9A9A900AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00A8A8A8000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FDFDFD00FEFE
      FE00FDFDFD00FBFBFB00F9F9F900F5F5F500F1F1F10027272700252525003232
      32002C2C2C003131310031313100313131003131310030303000303030003030
      3000303030003030300030303000303030003030300030303000303030003030
      3000303030003C3C3C002A2A2A002A2A2A00373737000000000000000000C3C3
      C300878787009B9B9B00A2A2A200A6A6A600A3A3A300AAAAAA00A6A6A6009999
      9900DEDEDE00E8E8E800DCDCDC0093939300E9E9E900D6D6D600A8A8A800C7C7
      C700BFBFBF008787870088888800838383008686860070707000B0B0B000BDBD
      BD00DFDFDF00D8D8D800DCDCDC00DCDCDC00CDCDCD00DEDEDE00DEDEDE00E4E4
      E400DDDDDD00E7E7E700C4C4C4006E6E6E0061616100656565006E6E6E007676
      7600A3A3A300868686003C3C3C00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F9F9
      F900F5F5F500EFEFEF00EAEAEA00E7E7E700E3E3E300E4E4E400E5E5E500DFDF
      DF00E2E2E200E0E0E000DEDEDE00C3C3C30088888800F6F6F600DADADA00DADA
      DA00DBDBDB0096969600BFBFBF00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FBFBFB00F7F7F700F2F2F200EDEDED00EAEA
      EA00D4D4D400BCBCBC00CBCBCB00C9C9C900EFEFEF00EDEDED00EBEBEB00E9E9
      E900E2E2E200E3E3E30077777700E1E1E100E0E0E000F2F2F200F1F1F100EFEF
      EF00ECECEC00E6E6E600E8E8E800FDFDFD00E3E3E300E2E2E200F1F1F100F0F0
      F000EEEEEE00ECECEC00E9E9E900E8E8E800E6E6E600E5E5E500E0E0E0000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00F9F9F900F5F5F500EFEFEF00EAEAEA00E7E7
      E700E3E3E300E4E4E400E5E5E500DFDFDF00E2E2E200E0E0E000DEDEDE00C3C3
      C30088888800F6F6F600DADADA00DADADA00DBDBDB0096969600BFBFBF00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000C8C8C8007272720093939300A9A9A900A8A8A800B1B1B100B6B6B6009D9D
      9D009C9C9C00E4E4E400DCDCDC00EDEDED00CCCCCC00A5A5A500C2C2C200BABA
      BA00C7C7C700C6C6C600818181009393930071717100A6A6A600C2C2C200CDCD
      CD00D1D1D100CFCFCF00E0E0E000CACACA00DBDBDB00E0E0E000E1E1E100DBDB
      DB00CDCDCD00D5D5D500E8E8E800B1B1B10074747400737373006A6A6A006060
      60007B7B7B00969696004A4A4A00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FCFCFC00FCFCFC00FBFBFB00F8F8
      F800F6F6F600F3F3F300EFEFEF00EBEBEB00E6E6E600E2E2E200E2E2E200E1E1
      E100DFDFDF00DDDDDD00DEDEDE00BDBDBD00BBBBBB00DADADA00D8D8D800D8D8
      D800D7D7D70094949400BEBEBE00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FBFBFB00F6F6F600F0F0F000EBEBEB00E6E6
      E600DDDDDD00ACACAC00C8C8C800BBBBBB00EDEDED00EBEBEB00E9E9E900E7E7
      E700E2E2E200E0E0E000F8F8F800DFDFDF00DEDEDE00F2F2F200F1F1F100EFEF
      EF00EDEDED00EBEBEB00E9E9E9007A7A7A00E1E1E100E2E2E200EFEFEF00EFEF
      EF00EDEDED00EBEBEB00E8E8E800E6E6E600E4E4E400E3E3E300E5E5E5000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00FCFCFC00FCFCFC00FBFBFB00F8F8F800F6F6F600F3F3F300EFEFEF00EBEB
      EB00E6E6E600E2E2E200E2E2E200E1E1E100DFDFDF00DDDDDD00DEDEDE00BDBD
      BD00BBBBBB00DADADA00D8D8D800D8D8D800D7D7D70094949400BEBEBE00E0E0
      E000000000000000000000000000000000000000000000000000000000000000
      000000000000BFBFBF00787878009F9F9F00A7A7A700A8A8A800A4A4A400B2B2
      B200ABABAB0081818100DCDCDC00E6E6E6009A9A9A00BABABA00B1B1B100C4C4
      C400C1C1C100B4B4B400C5C5C50075757500A5A5A500BFBFBF00CACACA00D6D6
      D600D2D2D200C0C0C000CFCFCF00C6C6C600DADADA00CECECE00D0D0D000CDCD
      CD00D4D4D400D2D2D200DBDBDB00E1E1E100B3B3B3005B5B5B00767676006D6D
      6D00777777004E4E4E00AEAEAE00000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F1F1F100EBEBEB00E4E4E400DFDFDF00DEDE
      DE00DBDBDB00D8D8D800DCDCDC00D7D7D700ECECEC00EAEAEA00D4D4D400D5D5
      D500D4D4D40094949400BEBEBE00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FBFBFB00F6F6F600F0F0F000E8E8E800B2B2
      B200B1B1B100ADADAD00B2B2B200B0B0B000F5F5F500EAEAEA00E3E3E300E5E5
      E500E2E2E200DEDEDE0088888800DADADA00DBDBDB00F0F0F000EFEFEF00EEEE
      EE00EBEBEB00E7E7E700E7E7E700BCBCBC00E3E3E300E1E1E100F2F2F200F0F0
      F000EEEEEE00ECECEC00ECECEC00EAEAEA007F7F7F00E3E3E300E2E2E2000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F1F1
      F100EBEBEB00E4E4E400DFDFDF00DEDEDE00DBDBDB00D8D8D800DCDCDC00D7D7
      D700ECECEC00EAEAEA00D4D4D400D5D5D500D4D4D40094949400BEBEBE00E0E0
      E000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CCCCCC00757575009E9E9E00ABABAB00ACACAC00AFAF
      AF00ADADAD00B2B2B200AEAEAE0084848400B9B9B900BDBDBD00C2C2C200B2B2
      B200BABABA00C2C2C20096969600DEDEDE00BFBFBF00BCBCBC00C0C0C000C8C8
      C800C1C1C100C7C7C700D8D8D800C0C0C000C9C9C900CBCBCB00C0C0C000CDCD
      CD00DEDEDE00D0D0D000CACACA00D3D3D300D7D7D700C2C2C200616161006767
      67005E5E5E00ACACAC00A9A9A900000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FDFD
      FD00FCFCFC00FBFBFB00F8F8F800F5F5F500F2F2F200EBEBEB00E5E5E500DDDD
      DD00E0E0E000DEDEDE00D0D0D000C7C7C700A8A8A800EAEAEA00D2D2D200D2D2
      D200D1D1D10092929200BEBEBE00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FFFFFF00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FAFAFA00F4F4F400EDEDED00E5E5E500FCFC
      FC00F5F5F500EAEAEA00D9D9D900F0F0F000FBFBFB00F6F6F600EBEBEB00DFDF
      DF00DBDBDB00DCDCDC00ECECEC00D4D4D400D4D4D400EFEFEF00EFEFEF00EDED
      ED00EBEBEB00EBEBEB00E9E9E9007B7B7B00E4E4E400E1E1E100F2F2F200F0F0
      F000EFEFEF00ECECEC00EDEDED00EAEAEA007B7B7B00E1E1E100E2E2E2000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FCFCFC00FBFBFB00F8F8F800F5F5
      F500F2F2F200EBEBEB00E5E5E500DDDDDD00E0E0E000DEDEDE00D0D0D000C7C7
      C700A8A8A800EAEAEA00D2D2D200D2D2D200D1D1D10092929200BEBEBE00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CCCCCC008080800099999900B6B6B600A0A0
      A000BDBDBD00B7B7B700A7A7A700AEAEAE00B9B9B900B3B3B300BDBDBD00B7B7
      B700BEBEBE00A2A2A200E6E6E600E8E8E800ECECEC00BFBFBF00CACACA00B9B9
      B900BDBDBD00B8B8B800B7B7B700C3C3C300CBCBCB00C1C1C100CFCFCF00C4C4
      C400C0C0C000C6C6C600C9C9C900C6C6C600C9C9C900D5D5D500ABABAB005252
      5200A5A5A500A9A9A90000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00F7F7F700F7F7F700F4F4F400F1F1F100EDEDED00E2E2
      E200DADADA00D7D7D700D8D8D800C3C3C300A1A1A100E5E5E500D3D3D300D1D1
      D100CECECE0090909000BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000CDCDCD00F9F9F900FEFEFE00FEFE
      FE00FEFEFE00FCFCFC00FCFCFC00F7F7F700F1F1F100ECECEC00E3E3E300F8F8
      F800E7E7E700D4D4D400ECECEC00FCFCFC00FCFCFC00F7F7F700F4F4F400EDED
      ED00DADADA00D8D8D800A1A1A100D3D3D300CECECE00EFEFEF00EDEDED00EBEB
      EB00E9E9E900E2E2E200E3E3E30077777700E1E1E100E0E0E000F2F2F200F1F1
      F100EFEFEF00ECECEC00E6E6E600E8E8E800FDFDFD00E3E3E300E2E2E2000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00F7F7F700F7F7
      F700F4F4F400F1F1F100EDEDED00E2E2E200DADADA00D7D7D700D8D8D800C3C3
      C300A1A1A100E5E5E500D3D3D300D1D1D100CECECE0090909000BDBDBD00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1C1C10074747400B5B5B500A7A7
      A700A9A9A900A9A9A900C3C3C300B9B9B900B6B6B600B7B7B700B4B4B400B9B9
      B9009F9F9F00D7D7D700EFEFEF00F9F9F900FAFAFA00FBFBFB00EFEFEF00ACAC
      AC00B5B5B500BDBDBD00BEBEBE00C0C0C000A7A7A700BABABA00C7C7C700C3C3
      C300B6B6B600C4C4C400C7C7C700BDBDBD00D9D9D900C1C1C1004F4F4F009C9C
      9C00BBBBBB000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FEFE
      FE00FDFDFD00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00F7F7F700F6F6F600F4F4F400F0F0F000ECECEC00E9E9
      E900E4E4E400D5D5D500D4D4D400BEBEBE00A6A6A600E6E6E600CDCDCD00CFCF
      CF00CCCCCC008E8E8E00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D100FDFDFD00FCFCFC00FDFD
      FD00FEFEFE00FCFCFC00FAFAFA00F6F6F600EFEFEF00E9E9E900E0E0E000EFEF
      EF00D4D4D400EFEFEF00FDFDFD00FFFFFF00FBFBFB00F7F7F700F2F2F200EDED
      ED00EAEAEA00D4D4D400BCBCBC00CBCBCB00C9C9C900EDEDED00EBEBEB00E9E9
      E900E7E7E700E2E2E200E0E0E000F8F8F800DFDFDF00DEDEDE00F2F2F200F1F1
      F100EFEFEF00EDEDED00EBEBEB00E9E9E9007A7A7A00E1E1E100E2E2E2000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00F7F7F700F6F6
      F600F4F4F400F0F0F000ECECEC00E9E9E900E4E4E400D5D5D500D4D4D400BEBE
      BE00A6A6A600E6E6E600CDCDCD00CFCFCF00CCCCCC008E8E8E00BDBDBD00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCB0071717100B0B0
      B000C0C0C000B1B1B1009F9F9F00BABABA00BBBBBB00BDBDBD00BFBFBF00A4A4
      A400D5D5D500E8E8E800F6F6F600F8F8F800FAFAFA00F6F6F600FBFBFB00FBFB
      FB00EBEBEB00BBBBBB00AFAFAF00A5A5A500BEBEBE00B8B8B800B5B5B500B0B0
      B000C0C0C000BEBEBE00B6B6B600BEBEBE00BCBCBC005A5A5A00A7A7A700BBBB
      BB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00FAFAFA00F7F7F700F5F5F500F2F2F200EFEFEF00EDEDED00E6E6
      E600EAEAEA00DEDEDE00D4D4D400BDBDBD00BCBCBC00CDCDCD00CBCBCB00CACA
      CA00C9C9C9008C8C8C00C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF00FBFBFB00FAFAFA00FCFC
      FC00FDFDFD00FDFDFD00FBFBFB00F4F4F400EDEDED00E3E3E300DADADA00E1E1
      E100F0F0F000F7F7F700FCFCFC00FFFFFF00FBFBFB00F6F6F600F0F0F000EBEB
      EB00E6E6E600DDDDDD00ACACAC00C8C8C800BBBBBB00F5F5F500EAEAEA00E3E3
      E300E5E5E500E2E2E200DEDEDE0088888800DADADA00DBDBDB00F0F0F000EFEF
      EF00EEEEEE00EBEBEB00E7E7E700E7E7E700BCBCBC00E3E3E300E1E1E1000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFAFA00F7F7F700F5F5
      F500F2F2F200EFEFEF00EDEDED00E6E6E600EAEAEA00DEDEDE00D4D4D400BDBD
      BD00BCBCBC00CDCDCD00CBCBCB00CACACA00C9C9C9008C8C8C00C0C0C000DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CBCBCB007373
      7300B2B2B200B2B2B200C2C2C200B9B9B900B8B8B800B7B7B70097979700DEDE
      DE00F5F5F500F2F2F200F4F4F400FCFCFC00F2F2F200F2F2F200F1F1F100F3F3
      F300FAFAFA00F8F8F800EFEFEF00B2B2B200ABABAB00ADADAD00B0B0B000AEAE
      AE00AEAEAE00AAAAAA00C2C2C200B6B6B600747474009C9C9C00B9B9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00FAFAFA00F7F7F700F4F4F400F1F1F100EFEFEF00ECECEC00E7E7
      E700E1E1E100E5E5E500D2D2D200CECECE00D8D8D800D9D9D900C7C7C700C4C4
      C400C6C6C60089898900C3C3C300000000000000000000000000000000000000
      000000000000000000000000000000000000D3D3D300CDCDCD00CBCBCB00C9C9
      C900C8C8C800C6C6C600C4C4C400BEBEBE00B9B9B900B0B0B000ABABAB00F8F8
      F800FEFEFE00FCFCFC00FEFEFE00FFFFFF00FBFBFB00F6F6F600F0F0F000E8E8
      E800B2B2B200B1B1B100ADADAD00B2B2B200B0B0B000FBFBFB00F6F6F600EBEB
      EB00DFDFDF00DBDBDB00DCDCDC00ECECEC00D4D4D400D4D4D400EFEFEF00EFEF
      EF00EDEDED00EBEBEB00EBEBEB00E9E9E9007B7B7B00E4E4E400E1E1E1000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00FAFAFA00F7F7F700F4F4
      F400F1F1F100EFEFEF00ECECEC00E7E7E700E1E1E100E5E5E500D2D2D200CECE
      CE00D8D8D800D9D9D900C7C7C700C4C4C400C6C6C60089898900C3C3C300DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C0008C8C8C00AFAFAF00B8B8B800C5C5C500B7B7B700C9C9C900B6B6B600F2F2
      F200F5F5F500FEFEFE00EFEFEF00F5F5F500F4F4F400FCFCFC00F0F0F000F6F6
      F600F8F8F800F0F0F000F9F9F900FBFBFB00FAFAFA00F8F8F800F2F2F200EFEF
      EF00F2F2F200F6F6F600E8E8E800848484008F8F8F00D1D1D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F9F9F900F6F6F600F5F5F500F0F0F000EEEEEE00EBEBEB00E5E5
      E500E6E6E600E5E5E500DDDDDD00C7C7C700ACACAC00D5D5D500C8C8C800C7C7
      C700BBBBBB0087878700CCCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1D1D100FFFFFF00FEFE
      FE00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FAFAFA00F4F4F400EDEDED00E5E5
      E500FCFCFC00F5F5F500EAEAEA00D9D9D900F0F0F000FCFCFC00F7F7F700F4F4
      F400EDEDED00DADADA00D8D8D800A1A1A100D3D3D300CECECE00EFEFEF00EDED
      ED00EBEBEB00E9E9E900E2E2E200E3E3E30077777700E1E1E100E0E0E0000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F9F9F900F6F6F600F5F5
      F500F0F0F000EEEEEE00EBEBEB00E5E5E500E6E6E600E5E5E500DDDDDD00C7C7
      C700ACACAC00D5D5D500C8C8C800C7C7C700BBBBBB0087878700CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DBDBDB0076767600BEBEBE00B4B4B400C3C3C300B1B1B100BBBBBB00D9D9
      D900FCFCFC00F2F2F200FEFEFE00F2F2F200F6F6F600F7F7F700EFEFEF00FBFB
      FB00FBFBFB00F8F8F800F9F9F900ECECEC00F7F7F700F2F2F200FAFAFA00F5F5
      F500F2F2F200FAFAFA006C6C6C0088888800CCCCCC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F3F3F300F0F0F000EDEDED00E9E9E900E7E7
      E700DDDDDD00DEDEDE00DCDCDC00C9C9C900B4B4B400D2D2D200C1C1C100BBBB
      BB00C5C5C50081818100D9D9D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CDCDCD00F9F9F900FEFE
      FE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00F7F7F700F1F1F100ECECEC00E3E3
      E300F8F8F800E7E7E700D4D4D400ECECEC00FCFCFC00FBFBFB00F7F7F700F2F2
      F200EDEDED00EAEAEA00D4D4D400BCBCBC00CBCBCB00C9C9C900EDEDED00EBEB
      EB00E9E9E900E7E7E700E2E2E200E0E0E000F8F8F800DFDFDF00DEDEDE000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F3F3
      F300F0F0F000EDEDED00E9E9E900E7E7E700DDDDDD00DEDEDE00DCDCDC00C9C9
      C900B4B4B400D2D2D200C1C1C100BBBBBB00C5C5C50081818100D9D9D9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DADADA0079797900CBCBCB00C1C1C100C0C0C000C2C2C2009F9F
      9F00F9F9F900EFEFEF00F3F3F300FAFAFA00F2F2F200F3F3F300FBFBFB00F9F9
      F900F1F1F100F9F9F900F7F7F700F5F5F500FCFCFC00F4F4F400F4F4F400F8F8
      F800F9F9F900636363009C9C9C00CDCDCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F8F8F800F6F6F600F2F2F200F0F0F000ECECEC00E8E8E800C1C1
      C100B2B2B200ACACAC00B1B1B100B0B0B000ADADAD00AFAFAF00B2B2B200B2B2
      B200B0B0B000AFAFAF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1D1D100FDFDFD00FCFC
      FC00FDFDFD00FEFEFE00FCFCFC00FAFAFA00F6F6F600EFEFEF00E9E9E900E0E0
      E000EFEFEF00D4D4D400EFEFEF00FDFDFD00FFFFFF00FBFBFB00F6F6F600F0F0
      F000EBEBEB00E6E6E600DDDDDD00ACACAC00C8C8C800BBBBBB00F5F5F500EAEA
      EA00E3E3E300E5E5E500E2E2E200DEDEDE0088888800DADADA00DBDBDB000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F8F8F800F6F6F600F2F2
      F200F0F0F000ECECEC00E8E8E800C1C1C100B2B2B200ACACAC00B1B1B100B0B0
      B000ADADAD00AFAFAF00B2B2B200B2B2B200B0B0B000AFAFAF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E60077777700BCBCBC00D7D7D700C0C0C000CECE
      CE009E9E9E00FCFCFC00FBFBFB00ECECEC00FCFCFC00FCFCFC00F6F6F600F6F6
      F600EFEFEF00F7F7F700F9F9F900FAFAFA00F4F4F400F7F7F700FDFDFD00F5F5
      F5006A6A6A009B9B9B00CACACA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FBFBFB00F7F7F700F5F5F500F1F1F100EEEEEE00E9E9E900E7E7E700BFBF
      BF00FCFCFC00FDFDFD00FDFDFD00F6F6F600F3F3F300E8E8E800DFDFDF00DADA
      DA00C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CFCFCF00FBFBFB00FAFA
      FA00FCFCFC00FDFDFD00FDFDFD00FBFBFB00F4F4F400EDEDED00E3E3E300DADA
      DA00E1E1E100F0F0F000F7F7F700FCFCFC00FFFFFF00FBFBFB00F6F6F600F0F0
      F000E8E8E800B2B2B200B1B1B100ADADAD00B2B2B200B0B0B000FBFBFB00F6F6
      F600EBEBEB00DFDFDF00DBDBDB00DCDCDC00ECECEC00D4D4D400D4D4D4000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FBFBFB00F7F7F700F5F5F500F1F1
      F100EEEEEE00E9E9E900E7E7E700BFBFBF00FCFCFC00FDFDFD00FDFDFD00F6F6
      F600F3F3F300E8E8E800DFDFDF00DADADA00C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DFDFDF0096969600B5B5B500D5D5D500CDCD
      CD00D3D3D300A4A4A400F7F7F700FBFBFB00F5F5F500F6F6F600FBFBFB00F4F4
      F400F7F7F700F9F9F900F5F5F500F1F1F100F3F3F300FCFCFC00EBEBEB007070
      70009D9D9D00D2D2D20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFB
      FB00FAFAFA00F6F6F600F4F4F400F0F0F000EDEDED00E8E8E800E5E5E500BEBE
      BE00FCFCFC00FBFBFB00F5F5F500EFEFEF00EAEAEA00DEDEDE00D9D9D900C1C1
      C100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D300CDCDCD00CBCB
      CB00C9C9C900C8C8C800C6C6C600C4C4C400BEBEBE00B9B9B900B0B0B000ABAB
      AB00F8F8F800FEFEFE00FCFCFC00FEFEFE00FFFFFF00FAFAFA00F4F4F400EDED
      ED00E5E5E500FCFCFC00F5F5F500EAEAEA00D9D9D900F0F0F000FCFCFC00F7F7
      F700F4F4F400EDEDED00DADADA00D8D8D800A1A1A100D3D3D300CECECE000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00FAFAFA00F6F6F600F4F4F400F0F0
      F000EDEDED00E8E8E800E5E5E500BEBEBE00FCFCFC00FBFBFB00F5F5F500EFEF
      EF00EAEAEA00DEDEDE00D9D9D900C1C1C1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCF0094949400C7C7C700D0D0
      D000CFCFCF00E2E2E200A2A2A200F5F5F500F9F9F900FAFAFA00F0F0F000F9F9
      F900F9F9F900F7F7F700EFEFEF00FEFEFE00FBFBFB00E7E7E7006F6F6F009A9A
      9A00DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FDFDFD00FFFFFF00FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FEFEFE00FEFEFE00FBFB
      FB00F9F9F900F5F5F500F3F3F300EFEFEF00ECECEC00E7E7E700E4E4E400C2C2
      C200FAFAFA00F6F6F600F1F1F100EAEAEA00DEDEDE00D4D4D400C2C2C2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCD00F9F9
      F900FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00F7F7F700F1F1F100ECEC
      EC00E3E3E300F8F8F800E7E7E700D4D4D400ECECEC00FCFCFC00FBFBFB00F7F7
      F700F2F2F200EDEDED00EAEAEA00D4D4D400BCBCBC00CBCBCB00C9C9C9000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FFFFFF00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00FEFEFE00FEFEFE00FBFBFB00F9F9F900F5F5F500F3F3F300EFEF
      EF00ECECEC00E7E7E700E4E4E400C2C2C200FAFAFA00F6F6F600F1F1F100EAEA
      EA00DEDEDE00D4D4D400C2C2C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF0083838300D8D8
      D800D3D3D300D2D2D200D6D6D600AAAAAA00F9F9F900FDFDFD00F8F8F800FAFA
      FA00FDFDFD00EFEFEF00F8F8F800F9F9F900E5E5E5006B6B6B0091919100E0E0
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CDCDCD00FEFEFE00F9F9F900FCFCFC00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00FBFBFB00FCFCFC00F9F9
      F900F7F7F700F5F5F500F1F1F100F0F0F000ECECEC00E6E6E600E3E3E300C2C2
      C200F8F8F800F2F2F200E7E7E700E0E0E000D4D4D400C3C3C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FDFD
      FD00FCFCFC00FDFDFD00FEFEFE00FCFCFC00FAFAFA00F6F6F600EFEFEF00E9E9
      E900E0E0E000EFEFEF00D4D4D400EFEFEF00FDFDFD00FFFFFF00FBFBFB00F6F6
      F600F0F0F000EBEBEB00E6E6E600DDDDDD00ACACAC00C8C8C800BBBBBB000000
      0000000000000000000000000000000000000000000000000000CDCDCD00FEFE
      FE00F9F9F900FCFCFC00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FCFC
      FC00FCFCFC00FBFBFB00FCFCFC00F9F9F900F7F7F700F5F5F500F1F1F100F0F0
      F000ECECEC00E6E6E600E3E3E300C2C2C200F8F8F800F2F2F200E7E7E700E0E0
      E000D4D4D400C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E4E4E4009292
      9200D0D0D000DADADA00DADADA00E5E5E5009D9D9D00FBFBFB00EDEDED00FBFB
      FB00FBFBFB00F1F1F100FDFDFD00F0F0F0007676760096969600DCDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D000FCFCFC00FBFBFB00FBFBFB00FBFBFB00FEFE
      FE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FBFBFB00FAFA
      FA00F8F8F800F4F4F400F1F1F100EFEFEF00EBEBEB00E5E5E500E2E2E200C1C1
      C100F1F1F100EBEBEB00E5E5E500D1D1D100C3C3C30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00FBFB
      FB00FAFAFA00FCFCFC00FDFDFD00FDFDFD00FBFBFB00F4F4F400EDEDED00E3E3
      E300DADADA00E1E1E100F0F0F000F7F7F700FCFCFC00FFFFFF00FBFBFB00F6F6
      F600F0F0F000E8E8E800B2B2B200B1B1B100ADADAD00B2B2B200B0B0B0000000
      0000000000000000000000000000000000000000000000000000D0D0D000FCFC
      FC00FBFBFB00FBFBFB00FBFBFB00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F4F4F400F1F1F100EFEF
      EF00EBEBEB00E5E5E500E2E2E200C1C1C100F1F1F100EBEBEB00E5E5E500D1D1
      D100C3C3C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00A0A0A000D4D4D400D5D5D500E7E7E700E1E1E100A3A3A300F5F5F500ECEC
      EC00F6F6F600FEFEFE00F5F5F5007C7C7C009D9D9D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D1D1D100FBFBFB00FDFDFD00FDFDFD00FCFCFC00FEFE
      FE00FDFDFD00FDFDFD00FEFEFE00FDFDFD00FCFCFC00FBFBFB00FAFAFA00F8F8
      F800F6F6F600F3F3F300EFEFEF00EEEEEE00E9E9E900E4E4E400E0E0E000C4C4
      C400EFEFEF00E1E1E100D4D4D400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3D3D300CDCD
      CD00CBCBCB00C9C9C900C8C8C800C6C6C600C4C4C400BEBEBE00B9B9B900B0B0
      B000ABABAB00F8F8F800FEFEFE00FCFCFC00FEFEFE00FFFFFF00FAFAFA00F4F4
      F400EDEDED00E5E5E500FCFCFC00F5F5F500EAEAEA00D9D9D900000000000000
      0000000000000000000000000000000000000000000000000000D1D1D100FBFB
      FB00FDFDFD00FDFDFD00FCFCFC00FEFEFE00FDFDFD00FDFDFD00FEFEFE00FDFD
      FD00FCFCFC00FBFBFB00FAFAFA00F8F8F800F6F6F600F3F3F300EFEFEF00EEEE
      EE00E9E9E900E4E4E400E0E0E000C4C4C400EFEFEF00E1E1E100D4D4D400C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F8F8F00E0E0E000D4D4D400D9D9D900D8D8D800AEAEAE00FDFD
      FD00EAEAEA00FCFCFC007474740098989800E2E2E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D000FCFCFC00F8F8F800FAFAFA00FFFFFF00FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FAFAFA00F8F8F800F9F9
      F900F6F6F600F2F2F200EEEEEE00EAEAEA00E6E6E600E1E1E100DCDCDC00C2C2
      C200EDEDED00DDDDDD00C1C1C100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDCD
      CD00F9F9F900FEFEFE00FEFEFE00FEFEFE00FCFCFC00FCFCFC00F7F7F700F1F1
      F100ECECEC00E3E3E300F8F8F800E7E7E700D4D4D40000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FCFC
      FC00F8F8F800FAFAFA00FFFFFF00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FCFCFC00FAFAFA00F8F8F800F9F9F900F6F6F600F2F2F200EEEEEE00EAEA
      EA00E6E6E600E1E1E100DCDCDC00C2C2C200EDEDED00DDDDDD00C1C1C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000093939300E1E1E100BEBEBE00C9C9C900CDCDCD00AAAA
      AA00EBEBEB0086868600A8A8A800DFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CFCFCF00FEFEFE00FBFBFB00FDFDFD00FAFAFA00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FBFBFB00FBFBFB00F7F7
      F700F4F4F400F1F1F100EDEDED00E8E8E800E3E3E300DEDEDE00DADADA00C3C3
      C300E1E1E100C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D1D1
      D100FDFDFD00FCFCFC00FDFDFD00FEFEFE00FCFCFC00FAFAFA00F6F6F600EFEF
      EF00E9E9E900E0E0E000EFEFEF00D4D4D4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CFCFCF00FEFE
      FE00FBFBFB00FDFDFD00FAFAFA00FCFCFC00FCFCFC00FCFCFC00FDFDFD00FDFD
      FD00FDFDFD00FBFBFB00FBFBFB00F7F7F700F4F4F400F1F1F100EDEDED00E8E8
      E800E3E3E300DEDEDE00DADADA00C3C3C300E1E1E100C2C2C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008C8C8C00CDCDCD00D1D1D100EAEAEA00DCDC
      DC008F8F8F00AAAAAA00DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0D0D000FDFDFD00FCFCFC00FEFEFE00FBFBFB00FEFE
      FE00FEFEFE00FDFDFD00FEFEFE00FEFEFE00FDFDFD00FAFAFA00F8F8F800F7F7
      F700F4F4F400F0F0F000EEEEEE00EAEAEA00E4E4E400E0E0E000DEDEDE00C5C5
      C500C4C4C4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF00FBFBFB00FAFAFA00FCFCFC00FDFDFD00FDFDFD00FBFBFB00F4F4F400EDED
      ED00E3E3E300DADADA00E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D000FDFD
      FD00FCFCFC00FEFEFE00FBFBFB00FEFEFE00FEFEFE00FDFDFD00FEFEFE00FEFE
      FE00FDFDFD00FAFAFA00F8F8F800F7F7F700F4F4F400F0F0F000EEEEEE00EAEA
      EA00E4E4E400E0E0E000DEDEDE00C5C5C500C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B000DBDBDB00D7D7D7008B8B
      8B00A1A1A100E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D3D3D300D6D6D600CDCDCD00CCCCCC00CBCBCB00C9C9
      C900C9C9C900C9C9C900C8C8C800C7C7C700C6C6C600C5C5C500C4C4C400C0C0
      C000BEBEBE00BCBCBC00B9B9B900B5B5B500B0B0B000ADADAD00ABABAB00C3C3
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3D3
      D300CDCDCD00CBCBCB00C9C9C900C8C8C800C6C6C600C4C4C400BEBEBE00B9B9
      B900B0B0B000ABABAB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3D3D300D6D6
      D600CDCDCD00CCCCCC00CBCBCB00C9C9C900C9C9C900C9C9C900C8C8C800C7C7
      C700C6C6C600C5C5C500C4C4C400C0C0C000BEBEBE00BCBCBC00B9B9B900B5B5
      B500B0B0B000ADADAD00ABABAB00C3C3C3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DADADA00ADADAD0098989800C9C9
      C900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000B80000008A0000000100010000000000F00C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFC00000000000000000000
      0000000000000000FFC00000001C000000000000000000000000000000000000
      FFC00000001C000000000000000000000000000000000000FFC00000001C0000
      00000000000000000000000000000000FFC00000001C00000000000000000000
      0000000000000000FFC00000001C000000000000000000000000000000000000
      FFC00000001C000000000000000000000000000000000000FFC00000001C0000
      00000000000000000000000000000000FF800000001C00000000000000000000
      0000000000000000FE000000001C000000000000000000000000000000000000
      FC000000001C000000000000000000000000000000000000F8000000001C0000
      00000000000000000000000000000000F8000000001C00000000000000000000
      0000000000000000F0000000001C000000000000000000000000000000000000
      E0000000001C000000000000000000000000000000000000E0000000001C0000
      00000000000000000000000000000000C0000000001C00000000000000000000
      0000000000000000C0000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      0000000000000000000000000000000080000000001C00000000000000000000
      000000000000000080000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      0000000000000000000000000000000080000000001C00000000000000000000
      000000000000000080000000001C000000000000000000000000000000000000
      80000000001C00000000000000000000000000000000000080000000001C0000
      00000000000000000000000000000000C0000000001C00000000000000000000
      0000000000000000C0000000001C000000000000000000000000000000000000
      E0000000001C000000000000000000000000000000000000E0000000001C0000
      00000000000000000000000000000000F0000000001C00000000000000000000
      0000000000000000F8000000001C000000000000000000000000000000000000
      FC000000003C000000000000000000000000000000000000FF000000007C0000
      00000000000000000000000000000000FFC0000000FC00000000000000000000
      0000000000000000FFC0000001FC000000000000000000000000000000000000
      FFC0000003FC000000000000000000000000000000000000FFC0000007FC0000
      00000000000000000000000000000000FFC000000FFC00000000000000000000
      0000000000000000FFC000001FFC000000000000000000000000000000000000
      FFC000003FFC000000000000000000000000000000000000FFC000007FFC0000
      00000000000000000000000000000000FFC00000FFFC00000000000000000000
      0000000000000000FFFFFFFFFFFC000000000000000000000000000000000000
      FFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FC00000000FFF800
      000003FFE0000000007FFFFE00000100FC00000000FFF000000003FFC0000000
      007FFFFE00000100FC00000000FFF000000003FFC0000000007FFFFE00000100
      FC00000000FFF000000003FFC0000000007FFFFE00000100FC00000000FFF000
      000003FFC0000000007FFFFE00000100FC00000000FFF000000003FFC0000000
      007FFFFE00000100FC0000000003F0000000000FC0000000007FFFFE00000100
      FC0000000003F0000000000FC0000000007FFFFE00000100FC0000000003F000
      0000000FC0000000007FFFFE00000100FC0000000003F0000000000FC0000000
      0070000E00000100FC0000000003F0000000000FC00000000070000E00000100
      FC0000000003F0000000000FC00000000070000E00000100FC0000000003F000
      0000000FC00000000070000E00000100FC0000000003F0000000000FC0000000
      0070000E00000100FC0000000003F0000000000FC00000000070000000000100
      FC00000000FFF000000003FFC00000000070000000000100FC00000000FFF000
      000003FFC00000000070000000000100FC00000000FFF000000003FFC0000000
      0070000000000100FC00000000FFF000000003FFC00000000070000000000100
      FC00000000FFF000000003FFC00000000070000000000100FC00000000FFF000
      000003FFC00000000070000000000300FC00000000FFF000000003FFC0000000
      0070000000000300FC00000001FFF000000003FFC00000000070000000000100
      FC00000001FFF000000003FFC00000000FF0000000000100FC00000001FFF000
      000003FFC00000000FF0000000000100FC00000001FFF000000003FFC0000000
      0FF0000000000100FC00000001FFF000000003FFC00000000FF0000000000100
      FC00000001FFF000000003FFC00000000FF0000000000100FC00000001FFF000
      000003FFC00000000FF0000000000100FC00000001FFF000000003FFC0000000
      0FF0000000000100FC00000001FFF000000003FFC00000000FF0000000000100
      FC00000001FFF000000007FFC00000001FFFF80000000100FC00000001FFF000
      000007FFC00000001FFFF80000000100FC00000003FFF00000000FFFC0000000
      3FFFF80000000100FC00000007FFF00000001FFFC00000007FFFF80000000100
      FC0000000FFFF00000003FFFC0000000FFFFF80000000100FC0000001FFFF000
      00007FFFC0000001FFFFFFFC00000100FC0000003FFFF0000000FFFFC0000003
      FFFFFFFC00000100FC0000007FFFF0000001FFFFC0000007FFFFFFFC00000100
      FC000000FFFFF0000003FFFFC000000FFFFFFFFC00000300FC000001FFFFF000
      0007FFFFC000001FFFFFFFFFFE000700FC000003FFFFF000000FFFFFC000003F
      FFFFFFFFFE000F00FC000007FFFFF000001FFFFFC000007FFFFFFFFFFE001F00
      FC00000FFFFFF000003FFFFFC00000FFFFFFFFFFFE003F00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFE007FFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF00FC000000007FFFFFFFC007FFE0000000007FFFFC0FF00100
      FC000000007FFFFFFFC007FFC0000000007FFFF000F00100FC000000007FFFFF
      FFC007FFC0000000007FFFE000700100FC000000007FFFFFFFC007FFC0000000
      007FFFC000000100FC000000007FFFFFFFC007FFC0000000007FFF8000000100
      FC000000007FFFFFFFC007FFC0000000007FFF0000000100FC000000007FFFFF
      FFC007FFC0000000007FFE0000000100FC000000007FFFFFFFC007FFC0000000
      007FFC0000000100FC000000007FFFFFFFC007FFC0000000007FF80000000100
      FC000000007F0000FFC007FFC0000000007FF00000000100FC000000007F0000
      FFC007FFC0000000007FE00000000100FC00000000070000F800001FC0000000
      007FC00000000100FC00000000070000F000001FC0000000007F800000000300
      FC00000000070000F800003FC0000000007F000000000F00FC000000000F0000
      0000007FC0000000007E000000000F00FC000000001F0000000000FFC0000000
      007C000000001F00FC000000003F0000000001FFC00000000078000000001F00
      FC00000000FF0000000003FFC00000000070000000001F00FC00000001FF0000
      000007FFC00000000060000000000F00FC00000001FF000000001FFFC0000000
      0060000000000700FC00000001FF000000003FFFC00000000060000000000300
      FC00000001FF000000003FFFC00000000060000000000100FC00000001FF0000
      0000001FC00000000060000000000100FC00000001FF00000000001FC0000000
      0FF0000000000100FC00000001FF00000000001FC00000000FF8000000000100
      FC00000001FF00000000001FC00000000FFC000000000100FC00000001FF0000
      0000001FC00000000FFE000000000300FC00000001FF00000000001FC0000000
      0FFF000000000700FC00000001FF00000000001FC00000000FFF800000000F00
      FC00000001FF00000000001FC00000000FFFC00000001F00FC00000001FF0000
      0000001FC00000000FFFE00000003F00FC00000001FFFF800000001FC0000000
      1FFFF00000007F00FC00000001FFFF800000001FC00000001FFFF8000000FF00
      FC00000003FFFF800000001FC00000003FFFFC000001FF00FC00000007FFFF80
      0000001FC00000007FFFFE000003FF00FC0000000FFFFF800000001FC0000000
      FFFFFF000007FF00FC0000001FFFFFFFC000001FC0000001FFFFFF80000FFF00
      FC0000003FFFFFFFC000001FC0000003FFFFFFC0001FFF00FC0000007FFFFFFF
      C000001FC0000007FFFFFFE0007FFF00FC000000FFFFFFFFC000003FC000000F
      FFFFFFF8007FFF00FC000001FFFFFFFFFFE0007FC000001FFFFFFFFC00FFFF00
      FC000003FFFFFFFFFFE000FFC000003FFFFFFFFE01FFFF00FC000007FFFFFFFF
      FFE001FFC000007FFFFFFFFF03FFFF00FC00000FFFFFFFFFFFE003FFC00000FF
      FFFFFFFF0FFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000}
  end
  object opdMain: TOpenPictureDialog
    Filter = 'All (*.jpg;*.jpeg;)|*.jpg;*.jpeg'
    Left = 880
    Top = 48
  end
  object ilMenu: TImageList
    Left = 520
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000000000C0C0C00000000000FFFFFF00C0C0
      C000FFFFFF0000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000C0C0C00000000000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00FF000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000000000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C00000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000848400C6C6
      C600C6C6C600C6C6C600008484000084840000848400C6C6C600C6C6C600C6C6
      C600008484008484840000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF000084
      8400C6C6C6000084840000000000000000000000000000848400C6C6C6000084
      8400C6C6C6008484840000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF000084840000000000FFFFFF00FFFFFF0000FFFF000000000000848400C6C6
      C600C6C6C6008484840000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000FFFF00C6C6
      C60000000000FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00000000000084
      8400C6C6C6008484840000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400C6C6C6000000
      000000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000000
      00000084840084848400000000000000000080808000000000000000000000FF
      FF00808080000000000000000000000000000000000000FFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008484840000000000FFFF
      FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000FFFF008080800000FF
      FF008080800000FFFF00808080000000000000FFFF00808080000000000000FF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      800000FFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFF7F00000000FFFFFE3F00000000
      FFFFFC0400000000FFFFF800000000008001F000000000008001F00000000000
      8001E000000000008001C6040000000080018FFF0000000080011FFF00000000
      80013FFF000000008001679F000000008001FFF9000000008001812700000000
      8001FCFF00000000FFFFC3FF0000000000000000000000000000000000000000
      000000000000}
  end
  object cdMain: TColorDialog
    Left = 857
  end
end
