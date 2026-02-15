object frmWizard: TfrmWizard
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Wizard'
  ClientHeight = 365
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Shape1: TShape
    Left = 8
    Top = 8
    Width = 649
    Height = 18
  end
  object Bevel2: TBevel
    Left = 6
    Top = 326
    Width = 649
    Height = 4
    Shape = bsTopLine
  end
  object Label1: TLabel
    Left = 80
    Top = 10
    Width = 15
    Height = 15
    Caption = '.....'
    Color = clWhite
    ParentColor = False
  end
  object lPage: TLabel
    Left = 12
    Top = 10
    Width = 55
    Height = 13
    Caption = 'Page 1 of 6'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object p4: TPanel
    Left = 6
    Top = 31
    Width = 649
    Height = 289
    TabOrder = 7
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 185
      Height = 15
      Caption = 'Please pick a theme for this section'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 24
      Width = 417
      Height = 23
      Style = csDropDownList
      TabOrder = 0
    end
    object WebBrowser1: TWebBrowser
      Left = 8
      Top = 56
      Width = 633
      Height = 225
      TabOrder = 1
      ControlData = {
        4C0000006C410000411700000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object p1: TPanel
    Left = 6
    Top = 31
    Width = 649
    Height = 289
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 426
      Height = 15
      Caption = 
        'CyberFresco allows you to create attractive online photo albums ' +
        'in no time at all.'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 473
      Height = 41
      AutoSize = False
      Caption = 
        'Each photo album comprises '#39'sections'#39', each album must have at l' +
        'east one section, but can contain as many as you like. Each sect' +
        'ion has its own theme and settings. Each section is opened from ' +
        'the main album index page.'
      WordWrap = True
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 388
      Height = 15
      Caption = 
        'Please choose how many sections you would like to create for thi' +
        's album.'
    end
    object RadioGroup1: TRadioGroup
      Left = 256
      Top = 120
      Width = 129
      Height = 89
      ItemIndex = 0
      Items.Strings = (
        '1 section'
        '2 or more sections')
      TabOrder = 0
    end
  end
  object p0: TPanel
    Left = 6
    Top = 31
    Width = 649
    Height = 289
    TabOrder = 1
    object Label5: TLabel
      Left = 56
      Top = 48
      Width = 278
      Height = 15
      Caption = 'This wizard will let you quickly create a photo album.'
    end
    object Label6: TLabel
      Left = 192
      Top = 104
      Width = 167
      Height = 15
      Caption = 'Please give your album a name.'
    end
    object eAlbumName: TEdit
      Left = 192
      Top = 120
      Width = 241
      Height = 23
      TabOrder = 0
      OnChange = eAlbumNameChange
    end
  end
  object p2: TPanel
    Left = 6
    Top = 31
    Width = 649
    Height = 289
    TabOrder = 2
    object Label8: TLabel
      Left = 192
      Top = 104
      Width = 163
      Height = 15
      Caption = 'Please give this section a name'
    end
    object eSectionName: TEdit
      Left = 192
      Top = 120
      Width = 241
      Height = 23
      TabOrder = 0
    end
  end
  object p3: TPanel
    Left = 6
    Top = 31
    Width = 649
    Height = 289
    TabOrder = 3
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 332
      Height = 15
      Caption = 
        'Please select the images that you wish to be part of this sectio' +
        'n'
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 32
      Width = 145
      Height = 22
      Caption = 'Select a whole folder'
      OnClick = SpeedButton1Click
    end
    object sbSelectIndividual: TSpeedButton
      Left = 8
      Top = 64
      Width = 145
      Height = 22
      Caption = 'Select individual files'
      OnClick = sbSelectIndividualClick
    end
    object sbClearImages: TSpeedButton
      Left = 8
      Top = 256
      Width = 145
      Height = 22
      Caption = 'Clear list'
      OnClick = sbClearImagesClick
    end
    object lbImages: TListBox
      Left = 168
      Top = 32
      Width = 473
      Height = 249
      ItemHeight = 15
      TabOrder = 0
    end
  end
  object bNext: TBitBtn
    Left = 500
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Next >>'
    Enabled = False
    TabOrder = 4
    OnClick = bNextClick
  end
  object bBack: TBitBtn
    Left = 420
    Top = 336
    Width = 75
    Height = 25
    Caption = '<< Back'
    Enabled = False
    TabOrder = 5
    OnClick = bBackClick
  end
  object BitBtn3: TBitBtn
    Left = 580
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Close'
    ModalResult = 2
    TabOrder = 6
  end
  object opdWizard: TOpenPictureDialog
    Filter = 'JPEG Images (*.jpg)|*.jpg;*.jpeg;'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 592
    Top = 44
  end
end
