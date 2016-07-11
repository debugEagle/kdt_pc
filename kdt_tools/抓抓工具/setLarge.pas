unit setLarge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, GDIPOBJ,
  GDIPAPI, Vcl.Imaging.pngimage, System.Math, Vcl.StdCtrls, Vcl.ComCtrls;

const
  WM_MyMessage = WM_USER + $201;
  WM_MyPic = WM_USER + $202;

type
  TPointData = record
    aColor: TColor;
    x: Integer;
    y: Integer;
    changed: Boolean;
  end;

  TSetLargeForm = class(TForm)
    tmrSecond: TTimer;
    edtFirstPoint: TEdit;
    chkFirst: TCheckBox;
    edtSeondPoint: TEdit;
    edtThirdPoint: TEdit;
    edtFourPoint: TEdit;
    edtFivePoint: TEdit;
    edtSixPoint: TEdit;
    edtSevenPoint: TEdit;
    edtEightPoint: TEdit;
    edtNinePoint: TEdit;
    edtTenPoint: TEdit;
    pnlFirst: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    pnlSecond: TPanel;
    pnlThree: TPanel;
    pnlFour: TPanel;
    pnlFive: TPanel;
    pnlSix: TPanel;
    pnlSeven: TPanel;
    pnlNine: TPanel;
    pnlTen: TPanel;
    pnlEight: TPanel;
    chkSecond: TCheckBox;
    chkThree: TCheckBox;
    chkFour: TCheckBox;
    chkFive: TCheckBox;
    chkSix: TCheckBox;
    chkSeven: TCheckBox;
    chkEight: TCheckBox;
    chkNine: TCheckBox;
    chkTen: TCheckBox;
    pgcOrder: TPageControl;
    tsFindColor: TTabSheet;
    tsFindStr: TTabSheet;
    tsOcr: TTabSheet;
    tsGetColor: TTabSheet;
    redtFindColor: TRichEdit;
    redtFindStr: TRichEdit;
    redtOcr: TRichEdit;
    redtGetColor: TRichEdit;
    imgShow: TImage;
    pnlWidth: TPanel;
    pnlHeight: TPanel;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tmrSecondTimer(Sender: TObject);
    procedure chkFirstClick(Sender: TObject);
    procedure chkSecondClick(Sender: TObject);
    procedure chkThreeClick(Sender: TObject);
    procedure chkFourClick(Sender: TObject);
    procedure chkFiveClick(Sender: TObject);
    procedure chkSixClick(Sender: TObject);
    procedure chkSevenClick(Sender: TObject);
    procedure chkEightClick(Sender: TObject);
    procedure chkNineClick(Sender: TObject);
    procedure chkTenClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;

    procedure doMyMessage(var msg: TMessage); message WM_MyMessage;

    procedure UpDateDemo(); { 更新 pageContrl 中的代码 }
  public
    { Public declarations }
    procedure InitPointData();
    procedure SetPointDataColorAndPointByIndex(index: Integer; x: Integer;
      y: Integer; aColor: TColor);
    procedure SetPointDataChangedByIndex(index: Integer; aFlag: Boolean);
  end;

var
  SetLargeForm: TSetLargeForm;
  aBitMap, showBitMap: TBitmap;
  Png: TPngObject;
  aStream: TStream;
  rt: TGPRectF;
  n: Single = 10.0; { 放大的倍数 }
  g_ThreadRunSign: Boolean;
  g_ThreadHaveRun: Boolean;
  g_ZanTing: Boolean;

  g_pointData: array [0 .. 10] of TPointData;

implementation

{$R *.dfm}

uses
  catch;

var
  g_x, g_y: Integer;
  g_sign: Boolean;

  // 双缓冲？
procedure TSetLargeForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := 33554432; // 0x 02 00 00 00
end;

procedure TSetLargeForm.chkEightClick(Sender: TObject);
begin
  g_pointData[7].changed := chkEight.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkFirstClick(Sender: TObject);
begin
  g_pointData[0].changed := chkFirst.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkFiveClick(Sender: TObject);
begin
  g_pointData[4].changed := chkFive.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkFourClick(Sender: TObject);
begin
  g_pointData[3].changed := chkFour.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkNineClick(Sender: TObject);
begin
  g_pointData[8].changed := chkNine.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkSecondClick(Sender: TObject);
begin
  g_pointData[1].changed := chkSecond.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkSevenClick(Sender: TObject);
begin
  g_pointData[6].changed := chkSeven.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkSixClick(Sender: TObject);
begin
  g_pointData[5].changed := chkSix.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkTenClick(Sender: TObject);
begin
  g_pointData[9].changed := chkTen.Checked;
  Self.UpDateDemo;
end;

procedure TSetLargeForm.chkThreeClick(Sender: TObject);
begin
  g_pointData[2].changed := chkThree.Checked;
  Self.UpDateDemo;
end;

{
  更新 pageContrl 上的 函数demo
  根据 选中的不同点，给出对应的demo
  如：
}
procedure TSetLargeForm.UpDateDemo();
var
  index: Integer;
  begin_x, begin_y, firstColor: Integer;
  begin_color: TColor;
  offersetColor, strColor: string;
begin
  { TODO -oyangyss -c :  2016/7/5 17:01:18 }
  begin_x := -1;
  begin_y := -1;
  strColor := '';
  offersetColor := '';
  for index := 0 to Length(g_pointData) - 1 do
  begin
    if g_pointData[index].changed then
    begin
      { 计算 firstColor 和 offersetColor }
      if begin_x = -1 then
      begin
        begin_x := g_pointData[index].x;
        begin_y := g_pointData[index].y;
        begin_color := g_pointData[index].aColor;
        firstColor := begin_color;
      end
      else
      begin
        if (g_pointData[index].x <> begin_x) or (g_pointData[index].y <> begin_y)
        then
        begin
          if offersetColor = '' then
            offersetColor := IntToStr(g_pointData[index].x - begin_x) + '|' +
              IntToStr(g_pointData[index].y - begin_y) + '|' +
              IntToHex(g_pointData[index].aColor, 6)
          else
            offersetColor := offersetColor + ',' +
              IntToStr(g_pointData[index].x - begin_x) + '|' +
              IntToStr(g_pointData[index].y - begin_y) + '|' +
              IntToHex(g_pointData[index].aColor, 6);
        end;

      end;

      { 计算 strColor }
      if strColor = '' then
        strColor := IntToHex(g_pointData[index].aColor, 6)
      else
        strColor := strColor + '|' + IntToHex(g_pointData[index].aColor, 6);

      // local retX,retY = Screen.findColorEx(cFirstColor,cOffsetColor,0,0,300,300,0.9,1)
      // local retX,retY = Dm.findStr(0, 0, w, h, "重试","e2b465-303030", 1.0, 1)
      // local str = Dm.ocr(0,0,w,h,color,1.0,1)

    end;

    redtFindColor.Clear;
    redtFindStr.Clear;
    redtOcr.Clear;
    redtGetColor.Clear;

    redtFindColor.Text := 'local retX,retY = Screen.findColorEx(' +
      IntToHex(firstColor, 6) + ',''' + offersetColor + ''',0,0,300,300,0.9,1)'
      + #13 + 'if retX > -1 then' + #13 + '    System.log("找到了！")' +
      #13 + 'end';
    redtFindStr.Text := 'local retX,retY = Dm.findStr(0, 0, 300, 300, ''' +
      ''',' + '''' + strColor + ''', 1.0, 1)' + #13 + 'if retX > -1 then' + #13
      + '    System.log("找到了！")' + #13 + 'end';
    redtOcr.Text := 'local str = Dm.ocr(0,0,300,300,''' + strColor +
      ''',1.0,1)';
    redtGetColor.Text := 'local aColor = Screen.getColor(100, 100)'
  end;

end;

{
  根据 index 给  g_pointData 数组 对应下表的结构的成员 赋值
  ：赋值 坐标 和 颜色
}
procedure TSetLargeForm.SetPointDataColorAndPointByIndex(index: Integer;
  x: Integer; y: Integer; aColor: TColor);
begin
  g_pointData[index].x := x;
  g_pointData[index].y := y;
  g_pointData[index].aColor := aColor;
end;

{
  根据 index 给  g_pointData 数组 对应下表的结构的成员 赋值
  ：赋值changed  表示是否选中
}
procedure TSetLargeForm.SetPointDataChangedByIndex(index: Integer;
  aFlag: Boolean);
begin
  g_pointData[index].changed := aFlag;
end;

{
  初始化 全局点结构数组  g_pointData
}

procedure TSetLargeForm.InitPointData();
var
  index: Integer;
begin
  for index := 0 to Length(g_pointData) - 1 do
  begin
    g_pointData[index].x := -1;
    g_pointData[index].y := -1;
    g_pointData[index].aColor := 0;
    g_pointData[index].changed := False;
  end;
end;

{
  自定义消息处理事件：

}
procedure TSetLargeForm.doMyMessage(var msg: TMessage);
var
  index: Integer;
  Width, Height: Integer;
begin

  if (msg.msg = WM_MyMessage) then
  begin

    g_x := msg.WParam;
    g_y := msg.LParam;
    if not Self.Showing then
      Exit;

    if Form1.imgShow.Picture.Graphic = nil then
      Exit;

    { 为什么 showBitMap 的值为 nil  奇怪？ }
    if showBitMap <> nil then
      for Height := 0 to 225 - 1 do
        for Width := 0 to 225 - 1 do
        begin
          showBitMap.Canvas.Pixels[Width, Height] :=
            Form1.imgShow.Picture.Bitmap.Canvas.Pixels
            [Floor(Width / 15) + g_x - 7, Floor(Height / 15) + g_y - 7];
        end;

    Self.imgShow.Picture.Bitmap.Assign(showBitMap);

  end
  else if (msg.msg = WM_MyPic) then
  begin

  end;

end;

procedure TSetLargeForm.FormCreate(Sender: TObject);
begin
  { 创建一个 TPNGObject 图片 ，用 TPicture 来赋值 }
  Png := TPngObject.Create;
  // Png.Assign(imgShow.Picture);

  { 创建一个 TStream 流,TPNGObjec图片存到流中 }
  aStream := TStream.Create;
  // Png.SaveToStream(aStream);

  { 创建一个 TBitmap,用流 TStream 给他赋值 }
  aBitMap := TBitmap.Create;
  // aBitMap.Assign(Png);
  showBitMap := TBitmap.Create;
  showBitMap.Height := 225;
  showBitMap.Width := 225;

  g_sign := False;

  Self.InitPointData;
  redtFindColor.Clear;
  redtFindStr.Clear;
  redtOcr.Clear;
  redtGetColor.Clear;
end;

procedure TSetLargeForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(aBitMap);
  FreeAndNil(Png);
  FreeAndNil(aStream);
  FreeAndNil(showBitMap);
end;

procedure TSetLargeForm.FormPaint(Sender: TObject);
var
  g: TGPGraphics;
  p: TGPPen;
  tmpRt: TGPRectF;
begin
  { 为什么 showBitMap 的值为 nil  奇怪？ }
  if showBitMap = nil then
    Exit;

  // img := TGPBitmap.Create(showBitMap.Handle, showBitMap.Palette);
  g := TGPGraphics.Create(Self.Canvas.Handle);
  p := TGPPen.Create(MakeColor(128, 255, 0, 0));

  tmpRt := MakeRect(3, 3, 224.0, 224);
  { 画 img }
  // g.DrawImage(img, 3, 3, 0, 0, 224, 224, UnitPixel);
  // g.DrawLine(p, 105, 105, 115, 115);
  // g.DrawLine(p, 105, 115, 115, 105);

  g.DrawRectangle(p, tmpRt);

  FreeAndNil(p);
  g.Free;
  // FreeAndNil(img);
end;

procedure TSetLargeForm.tmrSecondTimer(Sender: TObject);
begin

  // if not Self.Showing then
  // Exit;
  //
  // if Form1.imgShow.Picture.Graphic = nil then
  // Exit;
  //
  // Png.Assign(Form1.imgShow.Picture);
  // Png.SaveToStream(aStream);
  // aBitMap.Assign(Png);
  //
  // Self.Repaint;
end;

end.
