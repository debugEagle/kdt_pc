object FrmCutPic: TFrmCutPic
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmCutPic'
  ClientHeight = 448
  ClientWidth = 606
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel
    Left = 144
    Top = 128
    Width = 1
    Height = 217
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 0
    StyleElements = []
  end
  object pnlRight: TPanel
    Left = 272
    Top = 128
    Width = 1
    Height = 217
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
  end
  object pnlUp: TPanel
    Left = 112
    Top = 72
    Width = 289
    Height = 1
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
  end
  object pnlDown: TPanel
    Left = 104
    Top = 368
    Width = 329
    Height = 1
    BevelOuter = bvNone
    Color = clRed
    ParentBackground = False
    TabOrder = 3
    StyleElements = []
  end
end
