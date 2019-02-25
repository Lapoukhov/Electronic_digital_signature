object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form'
  ClientHeight = 588
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object labelParametry: TLabel
    Left = 24
    Top = 8
    Width = 89
    Height = 18
    Caption = #1055#1072#1088#1077#1084#1077#1090#1088#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelPlainText: TLabel
    Left = 296
    Top = 8
    Width = 137
    Height = 18
    Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1069#1062#1055':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object labelDecipherText: TLabel
    Left = 24
    Top = 344
    Width = 116
    Height = 18
    Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1069#1062#1055':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object panelParametry: TPanel
    Left = 24
    Top = 32
    Width = 241
    Height = 193
    Color = clGradientInactiveCaption
    TabOrder = 0
    object labelP: TLabel
      Left = 16
      Top = 19
      Width = 80
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' p :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelQ: TLabel
      Left = 16
      Top = 75
      Width = 80
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' q :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object labelB: TLabel
      Left = 16
      Top = 131
      Width = 80
      Height = 18
      Caption = #1042#1074#1077#1076#1080#1090#1077' d :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object editQ: TEdit
      Left = 16
      Top = 99
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object editP: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object editD: TEdit
      Left = 16
      Top = 155
      Width = 121
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object bitbtnP: TBitBtn
      Left = 143
      Top = 44
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bitbtnPClick
    end
    object bitbtnQ: TBitBtn
      Left = 143
      Top = 100
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bitbtnQClick
    end
    object bitbtnD: TBitBtn
      Left = 143
      Top = 155
      Width = 82
      Height = 25
      Caption = #1042#1074#1077#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bitbtnDClick
    end
  end
  object bitbtnReset: TBitBtn
    Left = 24
    Top = 272
    Width = 241
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 1
    OnClick = bitbtnResetClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86464B8FB00FFFB
      00FFFB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FF6464B89898EE9898EE6464B8FB00FFFB00FF6464B89898EE9898EE6464
      B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86060E36060E39C9CF164
      64B86464B89C9CF16060E36060E36464B8FB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FF6464B86666E86666E8A1A1F3A1A1F36666E86666E86464B8FB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B86D6DED6D
      6DED6D6DED6D6DED6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FF6464B87373F37373F37373F37373F36464B8FB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B8B0B0FB7979F879
      79F87979F87979F8B0B0FB6464B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FF6464B8B3B3FD7E7EFC7E7EFC6464B86464B87E7EFC7E7EFCB3B3FD6464
      B8FB00FFFB00FFFB00FFFB00FFFB00FFFB00FF6464B88181FF8181FF6464B8FB
      00FFFB00FF6464B88181FF8181FF6464B8FB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FF6464B86464B8FB00FFFB00FFFB00FFFB00FF6464B86464B8FB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF
      FB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00
      FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB
      00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FFFB00FF}
    Margin = 4
  end
  object Panel1: TPanel
    Left = 296
    Top = 32
    Width = 494
    Height = 273
    Color = clGradientInactiveCaption
    TabOrder = 2
    object LabelFile: TLabel
      Left = 246
      Top = 19
      Width = 112
      Height = 18
      Caption = #1092#1072#1081#1083' '#1085#1077' '#1074#1099#1073#1088#1072#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 19
      Width = 15
      Height = 18
      Caption = '1.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 69
      Width = 15
      Height = 18
      Caption = '2.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 47
      Top = 205
      Width = 198
      Height = 18
      Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1099#1081' '#1093#1077#1096' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object memoPlainText: TMemo
      Left = 47
      Top = 98
      Width = 347
      Height = 89
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object bitbtnDownload: TBitBtn
      Left = 47
      Top = 17
      Width = 137
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
      TabOrder = 1
      OnClick = bitbtnDownloadClick
    end
    object BitBtnECP: TBitBtn
      Left = 47
      Top = 67
      Width = 137
      Height = 25
      Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100' '#1069#1062#1055
      TabOrder = 2
      OnClick = BitBtnECPClick
    end
    object MemoH: TMemo
      Left = 47
      Top = 229
      Width = 347
      Height = 38
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 24
    Top = 368
    Width = 766
    Height = 201
    Color = clGradientInactiveCaption
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 19
      Width = 15
      Height = 18
      Caption = '1.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelFileCheck: TLabel
      Left = 246
      Top = 19
      Width = 112
      Height = 18
      Caption = #1092#1072#1081#1083' '#1085#1077' '#1074#1099#1073#1088#1072#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 69
      Width = 15
      Height = 18
      Caption = '2.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 47
      Top = 98
      Width = 297
      Height = 18
      Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1085#1099#1081' '#1093#1077#1096' '#1087#1086#1083#1091#1095#1077#1085#1085#1086#1075#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 439
      Top = 98
      Width = 142
      Height = 18
      Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BitBtnCheck: TBitBtn
      Left = 47
      Top = 67
      Width = 137
      Height = 25
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1069#1062#1055
      TabOrder = 0
      OnClick = BitBtnCheckClick
    end
    object ButtonCheckFile: TButton
      Left = 47
      Top = 16
      Width = 137
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
      TabOrder = 1
      OnClick = ButtonCheckFileClick
    end
    object MemoH_2: TMemo
      Left = 47
      Top = 122
      Width = 347
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object MemoCheck: TMemo
      Left = 439
      Top = 122
      Width = 281
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
  object OpenDialog: TOpenDialog
    Left = 768
    Top = 1
  end
end
