object tranForm: TtranForm
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #36879#26126#22270#22788#29702#24037#20855
  ClientHeight = 395
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlSource: TPanel
    Left = 0
    Top = 1
    Width = 225
    Height = 129
    BevelOuter = bvLowered
    TabOrder = 0
    object imgSource: TImage
      Left = 1
      Top = 1
      Width = 223
      Height = 127
      Align = alClient
      OnClick = imgSourceClick
      OnMouseMove = imgSourceMouseMove
      ExplicitLeft = 72
      ExplicitTop = 48
      ExplicitWidth = 81
      ExplicitHeight = 41
    end
  end
  object pnlTwoValue: TPanel
    Left = 0
    Top = 261
    Width = 225
    Height = 129
    BevelOuter = bvLowered
    TabOrder = 1
    object imgTwoValue: TImage
      Left = 1
      Top = 1
      Width = 223
      Height = 127
      Align = alClient
      ExplicitLeft = 32
      ExplicitTop = 32
      ExplicitWidth = 137
      ExplicitHeight = 65
    end
  end
  object pnlDealWith: TPanel
    Left = 0
    Top = 131
    Width = 225
    Height = 129
    BevelOuter = bvLowered
    TabOrder = 2
    object imgDealWith: TImage
      Left = 1
      Top = 1
      Width = 223
      Height = 127
      Align = alClient
      OnClick = imgDealWithClick
      OnMouseMove = imgDealWithMouseMove
      ExplicitLeft = 24
      ExplicitTop = 24
      ExplicitWidth = 145
      ExplicitHeight = 73
    end
  end
  object pnlSetLarge: TPanel
    Left = 227
    Top = 0
    Width = 227
    Height = 227
    BevelOuter = bvLowered
    TabOrder = 3
    object imgSetBig: TImage
      Left = 1
      Top = 1
      Width = 225
      Height = 225
      Align = alClient
      OnMouseDown = imgSetBigMouseDown
      OnMouseUp = imgSetBigMouseUp
      ExplicitLeft = 32
      ExplicitTop = 40
      ExplicitWidth = 173
      ExplicitHeight = 154
    end
  end
  object mmoColorDescrip: TMemo
    Left = 352
    Top = 233
    Width = 102
    Height = 129
    TabOrder = 4
    OnChange = mmoColorDescripChange
  end
  object btnAdd: TButton
    Left = 322
    Top = 238
    Width = 32
    Height = 24
    Caption = #21152#36733
    TabOrder = 5
    OnClick = btnAddClick
  end
  object btnGongNeng: TButton
    Left = 322
    Top = 268
    Width = 32
    Height = 25
    Caption = #21152#28857
    TabOrder = 6
    OnClick = btnGongNengClick
  end
  object edtCalcColor: TEdit
    Left = 296
    Top = 364
    Width = 158
    Height = 21
    TabOrder = 7
    Text = 'edtCalcColor'
    OnKeyUp = edtCalcColorKeyUp
  end
  object lstColorBox: TColorListBox
    Left = 232
    Top = 232
    Width = 89
    Height = 121
    TabOrder = 8
    OnDblClick = lstColorBoxDblClick
  end
  object dlgOpenImage: TOpenDialog
    Left = 352
    Top = 152
  end
end
