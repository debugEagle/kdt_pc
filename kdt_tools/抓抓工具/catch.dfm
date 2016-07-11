object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #25235#25235
  ClientHeight = 712
  ClientWidth = 1184
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object imgShow: TImage
    Left = 120
    Top = 112
    Width = 497
    Height = 315
    Align = alCustom
    OnMouseMove = imgShowMouseMove
  end
  object pnlShowData: TPanel
    Left = 0
    Top = 695
    Width = 1184
    Height = 17
    Align = alBottom
    BevelOuter = bvLowered
    Caption = #36825#37324#26159#28040#24687
    TabOrder = 0
  end
  object showBar: TToolBar
    Left = 0
    Top = 0
    Width = 1184
    Height = 20
    Caption = 'showBar'
    Images = toolBarImageList
    TabOrder = 1
    object btnOpen: TToolButton
      Left = 0
      Top = 0
      Caption = 'btnOpen'
      ImageIndex = 0
      OnClick = btnOpenClick
    end
    object btnSave: TToolButton
      Left = 23
      Top = 0
      Caption = 'btnSave'
      ImageIndex = 2
    end
    object btnSaveAs: TToolButton
      Left = 46
      Top = 0
      Caption = 'btnSaveAs'
      ImageIndex = 4
    end
    object btnDataWin: TToolButton
      Left = 69
      Top = 0
      Caption = 'btnDataWin'
      ImageIndex = 6
      OnClick = btnDataWinClick
    end
    object btnSetLargeWin: TToolButton
      Left = 92
      Top = 0
      Caption = 'btnSetLargeWin'
      ImageIndex = 5
      OnClick = btnSetLargeWinClick
    end
    object btnTransferWin: TToolButton
      Left = 115
      Top = 0
      Caption = 'btnTransferWin'
      ImageIndex = 7
      OnClick = btnTransferWinClick
    end
  end
  object mmMenu: TMainMenu
    Left = 760
    Top = 64
    object N1: TMenuItem
      Caption = '&'#25991#20214
      object mMenuFileOpen: TMenuItem
        Caption = '&'#25171#24320
        OnClick = mMenuFileOpenClick
      end
      object N3: TMenuItem
        Caption = '&'#20445#23384
      end
      object N4: TMenuItem
        Caption = '&'#21478#23384#20026
      end
      object N11: TMenuItem
        Caption = '&'#20851#38381
      end
    end
    object N5: TMenuItem
      Caption = '&'#25130#22270
      object N6: TMenuItem
        Caption = '&'#25130#22270
      end
      object N9: TMenuItem
        Caption = '&'#27880#38144
      end
      object N10: TMenuItem
        Caption = '&'#37325#21551
      end
    end
    object N7: TMenuItem
      Caption = '&'#36830#25509
      object N8: TMenuItem
        Caption = '&'#35774#32622
      end
      object N12: TMenuItem
        Caption = '&'#36830#25509
      end
    end
    object N13: TMenuItem
      Caption = '&'#31383#21475
      object NSetLarge: TMenuItem
        Caption = '&'#21462'   '#33394#38754#26495
        OnClick = NSetLargeClick
      end
      object NTransfer: TMenuItem
        Caption = '&'#36879#26126#33394#30028#38754
        OnClick = NTransferClick
      end
      object NCalcData: TMenuItem
        Caption = '&'#25968' '#25454' '#22788' '#29702
        OnClick = NCalcDataClick
      end
    end
    object N17: TMenuItem
      Caption = '&'#24110#21161
      object N18: TMenuItem
        Caption = '&'#20851#20110
      end
    end
  end
  object dlgOpenPic: TOpenDialog
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 464
    Top = 40
  end
  object toolBarImageList: TImageList
    Left = 608
    Top = 56
    Bitmap = {
      494C010108003000500010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C008C8C8C00B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B2008C8C8C008C8C8C00B2B2B200FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC2C2C20070707000B0B0B000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B5B5B008F8F8F00CDCDCD00DEDC
      DA00ECEBE900F0F0F000F3F3F300F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F4F4F400B2B2B2005F5F5F00BABABA00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC5C5C500969696005656560049494900929292008F8F8F008F8F8F00A6A6
      A600989898008F8F8F008F8F8F009F9F9F00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC1C1C100E2E2E200FFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000535353008E8E8C00BEC3C80095A6
      C300E0E7F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B0B0B00051515100BFBFBF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
      C500969696005656560058585800DEDEDE002525250022222200222222005050
      500034343400222222002222220042424200FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF313131002121210056565600ACACAC000000000000000000000000000000
      00000132424305AAE3E51D58C5CC3340EBF92949DAE60D76BDC10493C1C30000
      0000000000000000000000000000000000005E5E5E0088888700ECEEEF00A9C7
      E900799BD200ABC0E200FBFCFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B2B2B20057575700BDBDBD00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE4E3E000CFCBC800C5C0BC00E2DFDD00FFFFFFFFFFFFFFFFDFDFDF009696
      96005656560058585800E1E1E100FFFFFFFF252525007C7C7C00626262005050
      500034343400747474006C6C6C0042424200FFFFFFFFFFFFFFFFFFFFFFFFBCBC
      BC002222220031313100222222006767670000000000864B00E09B5701FF9B57
      01FF9B5701FF9B5701FF9B5701FF9B5701FF9B5701FF8E510EF73643F4FF0987
      C6C9000D11120000000000000000000000005E5E5E0081818200EDEBEA00E7EC
      F4008BC8ED000EAEE60053C9EC00F3FCFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00ACACAC0056565600BABABA00FFFFFFFFFFFFFFFFE3E0DD009B90
      850091817200B6A89C00BEAEA000B8A89B00AB9E9200C6C0BB00A5978B007C7B
      7A0058585800E1E1E100FFFFFFFFFFFFFFFF25252500BABABA00929292005050
      500034343400ACACAC009F9F9F0042424200FFFFFFFFFFFFFFFFFFFFFFFF6C6C
      6C007E7E7E00FFFFFFFF24242400B8B8B800000000009B5701FF9B5701FF9B57
      01FF9B5701FF9B5701FF9B5701FF9B5701FF9B5701FF9B5701FF854900DC3542
      F1FE0987C6C91A17117B01010003000000005959590079797900ECEBEB00FFFD
      FD00B1F4FD0037F2FF0000CAF70055CDED00F7FCFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A6A6A6004E4E4E00B8B8B800FFFFFFFFCFCCC70081716200C5BB
      B200F6F3F200FEFDFC00FFF9F700FCEDE500EAD5C800B9A8990092857900B1A7
      9F00DDDDDD00FFFFFFFFFFFFFFFFFFFFFFFF2525250022222200222222005050
      500034343400222222002222220042424200FFFFFFFFFFFFFFFFFFFFFFFF2727
      2700343434006666660030303000FFFFFFFF000000009B5701FF9B5701FF9B57
      01FFB3ECFFFFB3ECFFFFB3ECFFFF9B5701FF9B5701FF9B5701FF000000000403
      0216373EB2FF0493C1C300000000000000005353530072727200F4F4F400FFFF
      FF00F7FFFF0093FFFF003AEFFF0000C9F70052CCED00F2FBFC00FFFFFF00FFFF
      FF00FFFFFF009F9F9F0046464600B6B6B600EFEDEB0082746700D1C8C000FEFE
      FE00FFFFFE00FFFDFC00FFFAF800FFF7F200FFECE300F7DDD000B7A59600C5BF
      BB00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2929290025252500252525005151
      510038383800252525002525250045454500FFFFFFFFFFFFFFFFA7A7A7002828
      280022222200222222007B7B7B00FFFFFFFF00000000694413FF694413FF6944
      13FF694413FF694413FF694413FF694413FF694413FF694413FF1E1C15920000
      0000222B9EA60D76BDC100000000000000004E4E4E006A6A6A00F6F6F600FDFD
      FD00FEFDFD00EEFCFC0085FDFE003BF2FF0000CBF60054CEEE00F3F8F800FFFB
      FA00FCFCFC009494940041414100B4B4B400ADA59F00A6978900FDF9F700FFFD
      FB00FFFCFB00FFFBF900FFF9F700FFF8F400FFF1EA00FFE6DA00E2C6B4009B8D
      8100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF7272
      720072727200FFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF6F6F6F00FFFF
      FFFFB2B2B20046464600CBCBCB00FFFFFFFF00000000694413FF694413FF6944
      13FF694413FF694413FF694413FF694413FF694413FF694413FF000000000000
      000006081F212949DAE600000000000000004B4B4B004D4D4D00757575007D7D
      7D00787878007E7676006A78770049C8C70039F3FF0000CFF9003AB5D5007E82
      82007C7675005353530045454500B2B2B20093877C00D1C5BB00FFF8F500FFFA
      F700FFFAF800FFF9F700FFF8F500FFF6F200FFF5F000FFE4D800F5D5C5009C8A
      7A00DDDAD700FFFFFFFFFFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF7272
      720072727200FFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF88888800FFFF
      FFFFFFFFFFFF6D6D6D00FFFFFFFFFFFFFFFF00000000140B0023694D7BFF4F2C
      00834D2B00804D2B008007C1FFFF07C1FFFF07C1FFFF07C1FFFF07C1FFFF07C1
      FFFF07C1FFFF07C1FFFF00000000000000004747470042424200444444004A4A
      4A00646464006A6A6A006C6666006F7D7C0067E9E9003DF9FF0000CEF9000F8B
      AB003E404000433D3D0042434300AEAEAE0083766900E2D5CC00FFF5F100FFF7
      F300FFF8F400FFF7F300FFF6F200FFF4EE00FFEADF00FFE5D800FADAC9009F87
      7400DCD8D500FFFFFFFFFFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF7272
      720072727200FFFFFFFFFFFFFFFF72727200FFFFFFFF93939300D6D6D600FFFF
      FFFFDBDBDB008F8F8F00FFFFFFFFFFFFFFFF00000000000000003643F4FF371E
      005C000000001715106F07C1FFFF07C1FFFF07C1FFFF07C1FFFF07C1FFFF07C1
      FFFF07C1FFFF07C1FFFF0000000000000000424242003D3D3D00363636005959
      5900E7E7E700F0F0F000EEEEEE00F5ECEC00CEDBDA0057D7D6003AF6FF0003D7
      FF00138FAE003C4141003E3A3900ACACAC00988C8000E3D5CC00FFF3ED00FFF5
      F000FFF5F100FFF3ED00FFECE300FFEBE100FFF0EA00FFE9DE00F1CDB9009780
      6E00DAD7D400FFFFFFFFFFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF7272
      720072727200FFFFFFFFFFFFFFFF72727200FFFFFFFF6B6B6B00FFFFFFFFFFFF
      FFFF8C8C8C00DEDEDE00FFFFFFFFFFFFFFFF00000000000000003542F1FE894D
      03E715120E620000000007C1FFFF07C1FFFFB3ECFFFFB3ECFFFFB3ECFFFFB3EC
      FFFF07C1FFFF07C1FFFF00000000000000003B3B3B00363636002E2E2E005656
      5600E5E5E500EEEEEE00ECECEC00F4F5F500C5BFBF003B47470048C9CA0039F6
      FF0000D7FF00118DAA0035393A00A9A9A700B1A9A200CDBEB300FFF1EB00FFEC
      E300FFEAE000FFEDE400FFF1EB00FFF2EC00FFF1EB00FEE6DA00D7AE96008474
      6500EBEAE800FFFFFFFFFFFFFFFFFFFFFFFF72727200FFFFFFFFFFFFFFFF7272
      720072727200FFFFFFFFFFFFFFFF72727200D0D0D00098989800FFFFFFFFFFFF
      FFFF6D6D6D00FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000211F229C3643
      F4FF744100C0000000001F7992FF1F7992FF1F7992FF1F7992FF1F7992FF1F79
      92FF1F7992FF1F7992FF00000000000000003939390039393900343434005A5A
      5A00E3E3E300ECECEC00EAEAEA00F3F3F300C0C1C100372F2F00616E6E0078FC
      FB003FE6F6003E8595002B333400B1B1B600E0DCD900ACA09500F0E1D800FFF1
      EB00FFF2EB00FFF2EC00FFF1EB00FFF1EA00FFF0E800EBCBB900A5877100968B
      8100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4848480081818100818181006060
      6000505050008181810081818100575757007F7F7F00313131007F7F7F00A2A2
      A200A2A2A200FFFFFFFFFFFFFFFFFFFFFFFF000000000A080630000000000F74
      BDC03643F4FF884C03E54C6C5DFF22788FFF2E7580FF77612BFF2E7580FF1F79
      92FF1F7992FF1F7992FF0000000000000000474747004D4D4D00434343006161
      6100E3E3E300EBEBEB00E9E9E900F3F3F300BDBDBD002C2D2D00716B6B00E3F7
      F70067A6A5005E5451005C5A75009B96D400FFFFFFFFB6B0AA00BDB1A500ECDC
      D200FCECE500FEEFE800FEEEE600FBEAE100EED9CD00AE8E780082746700E1E0
      DD00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2525250022222200222222005050
      500034343400222222002222220042424200B8B8B8005B5B5B00222222002424
      2400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000004
      060705AAE2E43440EFFD1F82FAFF1F82FAFF1F82FAFF1F82FAFF0E91E0E5038F
      BCBE03608080036080800000000000000000535353005F5F5F004E4E4E006868
      6800E7E7E700EEEEEE00EBEBEB00F1F1F100CDCDCD006C6C6C0096969600FDF8
      F8007A77760043424C008A82DB008E89E800FFFFFFFFFFFFFFFFB8B2AB00B1A6
      9B00CDBEB200DDCBBF00DDCBBE00CEBCAE00A797890083766A00E1E0DD00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8
      B800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000001922230484AEB004AFE6E8059FD1D302516B6C000000000000
      0000000000000000000000000000000000004E4E4E00535353004A4A4A005C5C
      5C00BDBDBD00C9C9C900CFCFCF00D2D2D200CECECE00CACACA00C2C2C200BDBD
      BD007B7B7B0049494D007771B600B3B8F100FFFFFFFFFFFFFFFFFFFFFFFFE2E0
      DE00BEB8B100B5ADA400B0A69B00ABA29A00C6C1BC00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF888888007D7D
      7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D7D007D7D
      7D007D7D7D007D7D7D007D7D7D00BEBEBE00FFFFFFFFE2E2E200CCCCCB00B2B2
      B000B2B2B100B2B2B100B2B2B100B2B2B100B2B2B100B2B2B100B2B2B100B2B2
      B100B2B2B100CCCCCB00E3E3E300FFFFFFFF1515150000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000018181800FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD00222222006868
      6800686868006868680068686800686868006868680068686800686868006868
      680068686800686868002929290069696900FFFFFFFFC48B1900C3912B00C4C4
      C300D5D5D400D5D5D400D5D5D400D5D5D400D5D5D400D5D5D400D5D5D400D5D5
      D400C2C2C200C6902900C2891B00FFFFFFFF000000006F6F6F00A6A6A6003636
      3600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A60038383800A6A6A6006D6D6D0000000000FFFFFFFFD2CECD00C4B09F00A491
      7E00A4917E00A4917E00A4917E00A4917E00A4917E00A4917E00A4917E00A18C
      7B00C5B29F00CFC8BF00FFFFFFFFFFFFFFFFFFFFFFFF9B9B9B0046464600FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF2222220062626200D3D3D300E4980900D89A2500C8C8
      C700B0B0AF00B0B0AF00B0B0AF00B0B0AF00B0B0AF00B0B0AF00B0B0AF00B0B0
      AF00C8C8C700D99A2200E4990A00D5D5D50000000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFC5C5C500AAAAAA00AAAAAA00AAAAAA00AAAAAA00C6C6C600FFFF
      FFFF56565600FFFFFFFFA6A6A60000000000FFFFFFFF8D898500A87B5500C790
      5D00C7905D00C7905D00C7905D00C78F5D00C78F5C00C78F5C00C78F5C00C78F
      5C00C78F5C00BA895C00E4DCD600FFFFFFFFFFFFFFFF666666007B7B7B00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA6A6A600222222005B5B5B00D5D3D300E4960900D8982500CDCD
      CC00B9B9B800B9B9B800B9B9B800B9B9B800B9B9B800B9B9B800B9B9B800B9B9
      B800CCCCCB00DA992200E4960A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFC2C2C200A6A6A600A6A6A600A6A6A600A6A6A600C4C4C400FFFF
      FFFF56565600FFFFFFFFA6A6A60000000000FFFFFFFFA2A2A20087756500CA98
      6A00CE9B6C00CE9B6C00CE9B6C00CE9B6C00CD9B6B00CD9B6B00CD9A6B00CD9A
      6B00CD9A6B00CA976700DDC2AC00FFFFFFFFFFFFFFFF34343400ACACAC00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF636363002121210052525200D5D3D300E4940900D9982600CECE
      CE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00CFCFCF00DA972300E4940A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFC5C5C500AAAAAA00AAAAAA00AAAAAA00AAAAAA00C6C6C600FFFF
      FFFF56565600FFFFFFFFA6A6A60000000000FFFFFFFF939393009A928C00C59B
      7500D2A57B00D1A37800D0A17500D0A07400CFA07300CFA07300CF9F7200CF9F
      7200CF9F7200D0A17400CDA48500FFFFFFFFDFDFDF0022222200E1E1E100FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF28282800515151004B4B4B00D5D3D300E4920900D9962600CFCF
      CF00B5B5B600B5B5B600B5B5B600B5B5B600B5B5B600B5B5B600B5B5B600B5B5
      B600CFCFCF00DA962300E4930A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFC2C2C200A6A6A600A6A6A600A6A6A600A6A6A600C4C4C400FFFF
      FFFF56565600FFFFFFFFA6A6A60000000000FFFFFFFF93939300BAB8B600C6A2
      8300D5A98200D3A87F00D3A77E00D3A77E00D3A77D00D3A67D00D2A57B00D1A3
      7800CFA07300CF9F7200CAA07900FFFFFFFFACACAC0035353500FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBABABA00282828009595950044444400D5D3D300E4910900D9952600CCCC
      CC00A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900CDCDCD00DB962400E4910A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAA
      AA0056565600FFFFFFFFA6A6A60000000000E9E9E90092929200B8B8B800C1A0
      8500D6AD8600D4AA8100D4A98100D4A98000D4A88000D4A87F00D3A87F00D3A7
      7E00D3A67D00D0A17500CFA27900E2CEBC007979790068686800FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF7878780065656500A5A5A5003D3D3D00D5D3D300E48F0900D7922700CDCD
      CE00DCDCDD00DCDCDD00DCDCDD00DCDCDD00DCDCDD00DCDCDD00DCDCDD00DCDC
      DD00CCCCCD00D9922400E48F0A00D6D6D60000000000AAAAAA00FFFFFFFFC3C3
      C300A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6
      A600C5C5C500FFFFFFFFA6A6A60000000000E3E3E30097979700B0B0B000BCA4
      8D00D5AD8800D5AD8600D5AC8500D5AC8400D5AB8400D4AB8300D4AB8200D4AA
      8200D4AA8100D4A98000D4A87F00D4B29600454545009C9C9C00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC7C7C700989898009898980098989800989898009898
      98002F2F2F00A7A7A700ABABAB0036363600D5D3D300E48C0900FC980100E18B
      0B00E18B0B00E18B0B00E18B0B00E18B0B00E18B0B00E18B0B00E18B0B00E18B
      0B00E18B0B00FC980100E48D0A00D6D6D60000000000AAAAAA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA6A6A60000000000DADADA00ABABAB00A4A4A400B2A2
      9400CAA58300CDA98900CDA98900CDA98900CDA98900CDA98900CDA98900CDA9
      8900C6A18400CEAA8800D3AD8C00D0AB8D00414141007E7E7E00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF2D2D2D00454545004C4C4C004C4C4C004C4C4C003030
      300043434300FFFFFFFFB2B2B2002F2F2F00D5D3D300E48B0900FF970000FF97
      0000FF970000FF970000FF970000FF970000FF970000FF970000FF970000FF97
      0000FF970000FF970000E48B0A00D6D6D60000000000AAAAAA00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA6A6A60000000000CFCFCF00B5B5B50099999900B8B7
      B700A8A5A100A7A4A100A7A4A100A8A5A100A8A5A100A9A5A200ADA8A400AEA9
      A400B0ABA600A8A29C00FFFFFFFFFFFFFFFFBDBDBD0022222200383838003838
      3800383838002F2F2F0048484800FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7272
      72005A5A5A007D7D7D006060600028282800D5D3D300E4890900FF950000F2A1
      2F00C49D6700C29B6500C19A6300BF996200BF986100BF986100BF986100B692
      5F00EF9D2900FF950000E4890A00D6D6D60000000000AAAAAA00FFFFFFFFC6C6
      C600AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00AAAAAA00FFFF
      FFFFFFFFFFFFFFFFFFFFA6A6A60000000000C7C7C700B4B4B400A1A1A100BBBB
      BB00BDBDBD00B5B5B500B6B6B600B6B6B600B6B6B600B6B6B600B7B7B700B8B8
      B800BEBEBE00B5B5B500E4E4E400FFFFFFFFFFFFFFFFBABABA00878787004B4B
      4B0055555500ADADAD00E1E1E100FFFFFFFF8585850068686800686868003B3B
      3B004E4E4E00686868006868680081818100D5D3D300E4870900FF930000BB96
      6700FDFDFD00FBFBFA00F6F6F500F1F1F100ECECEC00C1C1C100B1B1B000CDCD
      CD00C0986100FF930000E4880A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200A6A6A600A6A6A600A6A6A600A6A6A600A6A6A600A6A6A6006D6D6D00AAAA
      AA00FFFFFFFFFFFFFFFFA6A6A60000000000C1C1C100B1B1B100A8A8A800ADAD
      AD00D2D2D200BEBEBE00BCBCBC00BDBDBD00BDBDBD00BDBDBD00BEBEBE00C0C0
      C000C4C4C400CCCCCC00D7D7D700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAB
      AB0072727200FFFFFFFFFFFFFFFFFFFFFFFF3B3B3B00A2A2A200505050004646
      4600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D3D300E4860900FF910000C49D
      6B00FDFDFD00FEFEFE00FBFBFB00F6F6F600F2F2F1006F6F6F00424243009393
      9400BF966100FF910000E4860A00D6D6D60000000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000A6A6A600AAAA
      AA00FFFFFFFFFFFFFFFF6F6F6F000C0C0C00BEBEBE00B6B6B600B1B1B100A2A2
      A200E3E3E300D0D0D000CDCDCD00CECECE00CFCFCF00CFCFCF00CFCFCF00D3D3
      D300DDDDDD00E5E5E500D5D5D500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAB
      AB0072727200FFFFFFFFFFFFFFFFFFFFFFFF3B3B3B007474740046464600FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D300E4830900FF8E0000C49B
      6B00FDFDFD00FEFEFE00FEFEFE00FAFAFA00F6F6F50070707000424243009393
      9400BF956100FF8E0000B9792800FFFFFFFF00000000AAAAAA00FFFFFFFF5252
      5200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000A6A6A600AAAA
      AA00FFFFFFFF7E7E7E000D0D0D00C5C5C500FFFFFFFFD1D1D100D4D4D400B4B4
      B400E8E8E800E5E5E500E4E4E400E3E3E300E3E3E300E3E3E300E3E3E300E4E4
      E400E4E4E400E7E7E700CFCFCF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAB
      AB00505050009F9F9F009F9F9F009F9F9F003030300046464600FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF791E00E2810A00B192
      6B00E0E0E000E1E1E100E1E1E100E1E1E100DEDEDD006A6A6A00424243008787
      8700AD8B6200C37C2700CECECB00FFFFFFFF0000000072727200AAAAAA003737
      3700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5252520052525200A6A6A6007272
      7200717171000D0D0D00C6C6C600FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
      FFFFD5D5D500D7D7D700D7D7D700D8D8D800D9D9D900DADADA00DCDCDC00DDDD
      DD00DDDDDD00DFDFDF00EAEAEA00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9
      D9007F7F7F007D7D7D007D7D7D007D7D7D0081818100FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD00D0D0
      D000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600BFBFBF00BABABA00BFBF
      BF00D0D0D000E1E1E100FFFFFFFFFFFFFFFF1616160000000000000000000000
      0000565656005656560056565600565656005656560056565600383838000000
      00000D0D0D00C7C7C700FFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF000000000000F81F
      0000000000008007000000000000800100000000000080010000000000008001
      000000000000800100000000000080010000000000008001000000000000C001
      000000000000C0010000000000008001000000000000A001000000000000E001
      000000000000F81F000000000000FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
