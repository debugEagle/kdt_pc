unit transfer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Math;

type
  TtranForm = class(TForm)
    pnlSource: TPanel;
    pnlTwoValue: TPanel;
    pnlDealWith: TPanel;
    pnlSetLarge: TPanel;
    mmoColorDescrip: TMemo;
    btnAdd: TButton;
    btnGongNeng: TButton;
    edtCalcColor: TEdit;
    imgSource: TImage;
    imgDealWith: TImage;
    imgTwoValue: TImage;
    imgSetBig: TImage;
    lstColorBox: TColorListBox;
    dlgOpenImage: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure lstColorBoxDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure imgSourceClick(Sender: TObject);
    procedure imgDealWithClick(Sender: TObject);
    procedure imgSourceMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure imgSetBigMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgSetBigMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCalcColorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoColorDescripChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure imgDealWithMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure btnGongNengClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }

    { 增加颜色 到 lstColorBox 中 }
    procedure AddColorToColorBox();
    function CalcOffersetColor(): string;
    procedure OpenAImageByOpenDlg();
    procedure CopyPic();
  end;

var
  tranForm: TtranForm;
  g_X, g_Y: Integer;
  g_twoValueBitMap, g_dealWithBitMap: TBitmap;
  btnAddAndCancelSign: Boolean;

implementation

{$R *.dfm}

var
  bSourceSelected, bDealWithSelected, bTwoValueSelected: Boolean;
  setBigDownX, setBigDownY, setBigUpX, setBigUpY: Integer;

  // 双缓冲？
procedure TtranForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
//  Params.ExStyle := 33554432; // 0x 02 00 00 00
end;

{
  aColor 是否在 memo里的颜色范围内
}
function ColorIsInMemo(aColor: TColor): Boolean;
var
  index: Integer;
  mainColor, offerColor: string;
  mainR, mainG, mainB, offerR, offerG, offerB: Integer;
  aR, aG, aB: Integer;
begin
  Result := False;
  for index := 0 to tranForm.mmoColorDescrip.Lines.Count - 1 do
    if Length(tranForm.mmoColorDescrip.Lines[index]) > 12 then
    begin
      mainColor := LeftStr(tranForm.mmoColorDescrip.Lines[index], 6);
      offerColor := RightStr(tranForm.mmoColorDescrip.Lines[index], 6);
      mainR := GetRValue(StrToInt('$' + mainColor));
      mainG := GetGValue(StrToInt('$' + mainColor));
      mainB := GetBValue(StrToInt('$' + mainColor));

      offerR := GetRValue(StrToInt('$' + offerColor));
      offerG := GetGValue(StrToInt('$' + offerColor));
      offerB := GetBValue(StrToInt('$' + offerColor));

      aR := GetRValue(aColor);
      aG := GetGValue(aColor);
      aB := GetBValue(aColor);

      if (aR >= mainR - offerR) and (aR <= mainR + offerR) and
        (aG >= mainG - offerG) and (aG <= mainG + offerG) and
        (aB >= mainB - offerB) and (aB <= mainB + offerB) then
      begin
        Result := True;
        Break;
      end;
    end;

end;

{
  函数功能：
  -- 绘制 图片
  (绘制dealwithimg 和 twoValueImg 图片)
}
procedure PaintPic();
var
  width_max, height_max, width_index, height_index: Integer;
  aColor: TColor;
  aBitMap: TBitmap;
begin
  if tranForm.imgSource.Picture.Bitmap.Width > tranForm.imgSource.Width then
    width_max := tranForm.imgSource.Width
  else
    width_max := tranForm.imgSource.Picture.Bitmap.Width;

  if tranForm.imgSource.Picture.Bitmap.Height > tranForm.imgSource.Height then
    height_max := tranForm.imgSource.Height
  else
    height_max := tranForm.imgSource.Picture.Bitmap.Height;

  if (width_max <= 0) or (height_max <= 0) then
    Exit;

  aBitMap := TBitmap.Create;
  aBitMap.Assign(tranForm.imgSource.Picture.Bitmap);

  g_dealWithBitMap.Width := width_max;
  g_twoValueBitMap.Width := width_max;
  g_dealWithBitMap.Height := height_max;
  g_twoValueBitMap.Height := height_max;

  for height_index := 0 to height_max - 1 do
    for width_index := 0 to width_max - 1 do
    begin
      aColor := aBitMap.Canvas.Pixels[width_index, height_index];
      if ColorIsInMemo(aColor) then
      begin
        // 在 memo 的颜色范围中
        if btnAddAndCancelSign then
          g_dealWithBitMap.Canvas.Pixels[width_index, height_index] := $000000
        else
          g_dealWithBitMap.Canvas.Pixels[width_index, height_index] := aColor;
        g_twoValueBitMap.Canvas.Pixels[width_index, height_index] := $000000;
      end
      else
      begin
        // 不在 memo 的颜色范围中
        if btnAddAndCancelSign then
          g_dealWithBitMap.Canvas.Pixels[width_index, height_index] := aColor
        else
          g_dealWithBitMap.Canvas.Pixels[width_index, height_index] := $000000;
        g_twoValueBitMap.Canvas.Pixels[width_index, height_index] := $FFFFFF;
      end;
    end;

  tranForm.imgDealWith.Picture.Bitmap.Assign(g_dealWithBitMap);
  tranForm.imgTwoValue.Picture.Bitmap.Assign(g_twoValueBitMap);
  FreeAndNil(aBitMap);

end;

procedure AddColorToColorListBox();
var
  index_width, index_height, index: Integer;
  min_x, min_y, max_x, max_y: Integer;
  aColor: TColor;
  index_width_max, index_height_max: Integer;
  bIn: Boolean;
  aBitMap: TBitmap;
begin
  { TODO -oyangyss -c :  2016/5/20 19:03:32 }
  if (setBigDownX = -1) or (setBigDownY = -1) then
    Exit;

  if setBigDownX >= setBigUpX then
  begin
    max_x := setBigDownX;
    min_x := setBigUpX;
  end
  else
  begin
    max_x := setBigUpX;
    min_x := setBigDownX;
  end;

  if min_x < 0 then
    min_x := 0;
  if max_x > tranForm.imgSetBig.Width - 1 then
    max_x := tranForm.imgSetBig.Width - 1;

  if setBigDownY >= setBigUpY then
  begin
    max_y := setBigDownY;
    min_y := setBigUpY;
  end
  else
  begin
    max_y := setBigUpY;
    min_y := setBigDownY;
  end;

  if min_y < 0 then
    min_y := 0;
  if max_y > tranForm.imgSetBig.Height - 1 then
    max_y := tranForm.imgSetBig.Height - 1;

  aBitMap := TBitmap.Create;
  aBitMap.Assign(tranForm.imgSetBig.Picture.Bitmap);

  index_width_max := Floor((max_x - min_x) div 15);
  index_height_max := Floor((max_y - min_y) div 15);
  for index_width := 0 to index_width_max do
  begin
    for index_height := 0 to index_height_max do
    begin
      aColor := aBitMap.Canvas.Pixels[min_x + index_width * 15,
        min_y + index_height * 15];
      bIn := False;

      for index := tranForm.lstColorBox.Count - 1 downto 0 do
      begin
        if SameText(tranForm.lstColorBox.Items[index], IntToHex(aColor, 6)) then
        begin
          bIn := True;
        end;
      end;
      if (bIn = False) then
        tranForm.lstColorBox.AddItem(IntToHex(aColor, 6), TObject(aColor));
    end;
  end;

  tranForm.edtCalcColor.Clear;
  tranForm.edtCalcColor.Text := tranForm.CalcOffersetColor;

  FreeAndNil(aBitMap);
end;

procedure TtranForm.btnAddClick(Sender: TObject);
begin
  OpenAImageByOpenDlg;
end;

procedure TtranForm.btnGongNengClick(Sender: TObject);
begin
  btnAddAndCancelSign := not btnAddAndCancelSign;
  if btnAddAndCancelSign then
    btnGongNeng.Caption := '加色'
  else
    btnGongNeng.Caption := '减色';

  PaintPic;
end;

{
  打开bmp格式的图片：
  加载到 imgSource 控件中
}
procedure TtranForm.OpenAImageByOpenDlg();
var
  filePath, fileName: string;
begin
  dlgOpenImage.Execute();
  filePath := ExtractFilePath(dlgOpenImage.fileName);
  fileName := ExtractFileName(dlgOpenImage.fileName);
  if Pos('.bmp', fileName) = 0 then
  begin
    ShowMessage('请打开bmp格式图片!');
    Exit;
  end;
  imgSource.Picture.LoadFromFile(filePath + fileName);

  imgDealWith.Picture.Bitmap.Width := imgSource.Picture.Bitmap.Width;
  imgDealWith.Picture.Bitmap.Height := imgSource.Picture.Bitmap.Height;

  imgTwoValue.Picture.Bitmap.Width := imgSource.Picture.Bitmap.Width;
  imgTwoValue.Picture.Bitmap.Height := imgSource.Picture.Bitmap.Height;

end;

procedure TtranForm.FormCreate(Sender: TObject);
begin
  lstColorBox.Clear;

  btnAddAndCancelSign := True;
  mmoColorDescrip.Clear;
  edtCalcColor.Clear;
  // AddColorToColorBox;
  g_dealWithBitMap := TBitmap.Create;
  g_twoValueBitMap := TBitmap.Create;
end;

procedure TtranForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(g_dealWithBitMap);
  FreeAndNil(g_twoValueBitMap);
end;

procedure TtranForm.imgDealWithClick(Sender: TObject);
begin
  bDealWithSelected := not bDealWithSelected;

  if bDealWithSelected then
  begin
    bSourceSelected := False;

    imgDealWith.Cursor := crHandpoint;
    imgSource.Cursor := crDefault;
  end
  else
  begin
    imgDealWith.Cursor := crDefault;
    imgSource.Cursor := crDefault;
  end;
end;

procedure TtranForm.imgDealWithMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  { TODO -oyangyss -c : xxxxxx 2016/7/7 19:06:15 }
  g_X := X;
  g_Y := Y;

  if not bDealWithSelected then
    Exit;

  CopyPic;
end;

{
  拷贝imgDealWith或者imgSource中的选中部分，放大12倍至 放大镜 imgSetBig中 ：
  x,y为鼠标坐标
}
procedure TtranForm.CopyPic();
var
  Width, Height: Integer;
  aBitMap: TBitmap;
begin
  aBitMap := TBitmap.Create;
  aBitMap.Width := 225;
  aBitMap.Height := 225;

  if bSourceSelected and (tranForm.imgSource.Picture <> nil) then
  begin
    // sourceImage
    for Height := 0 to 225 - 1 do
      for Width := 0 to 225 - 1 do
      begin
        aBitMap.Canvas.Pixels[Width, Height] :=
          tranForm.imgSource.Picture.Bitmap.Canvas.Pixels
          [Floor(Width / 15) + g_X - 7, Floor(Height / 15) + g_Y - 7];
      end;

    tranForm.imgSetBig.Picture.Bitmap.Assign(aBitMap);
  end
  else if bDealWithSelected and (tranForm.imgDealWith.Picture <> nil) then
  begin
    // dealWithImage
    for Height := 0 to 225 - 1 do
      for Width := 0 to 225 - 1 do
      begin
        aBitMap.Canvas.Pixels[Width, Height] :=
          tranForm.imgDealWith.Picture.Bitmap.Canvas.Pixels
          [Floor(Width / 9) + g_X - 7, Floor(Height / 9) + g_Y - 7];
      end;

    tranForm.imgSetBig.Picture.Bitmap.Assign(aBitMap);
  end;

  FreeAndNil(aBitMap);
end;

procedure TtranForm.edtCalcColorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    mmoColorDescrip.Lines.Add(edtCalcColor.Text);
    edtCalcColor.Clear;
  end;
end;

procedure TtranForm.imgSetBigMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  setBigDownX := X;
  setBigDownY := Y;
end;

procedure TtranForm.imgSetBigMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  setBigUpX := X;
  setBigUpY := Y;
  if Self.imgSetBig.Picture.Graphic <> nil then
    TThread.CreateAnonymousThread(AddColorToColorListBox).Start;
end;

procedure TtranForm.imgSourceClick(Sender: TObject);
begin
  bSourceSelected := not bSourceSelected;
  if bSourceSelected then
  begin
    bDealWithSelected := False;
    imgSource.Cursor := crHandpoint;
    imgDealWith.Cursor := crDefault;
  end
  else
  begin
    imgSource.Cursor := crDefault;
    imgDealWith.Cursor := crDefault;
  end;
end;

procedure TtranForm.imgSourceMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  g_X := X;
  g_Y := Y;

  if not bSourceSelected then
    Exit;

  CopyPic;
end;

procedure TtranForm.lstColorBoxDblClick(Sender: TObject);
begin
  lstColorBox.DeleteSelected;
end;

procedure TtranForm.mmoColorDescripChange(Sender: TObject);
begin
  PaintPic;
end;

procedure TtranForm.AddColorToColorBox;
begin
  lstColorBox.Clear;
  lstColorBox.Items.AddObject('FF0000', TObject($FF0000));
  lstColorBox.Items.AddObject('FFFF00', TObject($FFFF00));
  lstColorBox.Items.AddObject('FFFFFF', TObject($FFFFFF));
  lstColorBox.Items.AddObject('00FF00', TObject($00FF00));
  lstColorBox.Items.AddObject('00FFFF', TObject($00FFFF));
  lstColorBox.Items.AddObject('0000FF', TObject($0000FF));
  lstColorBox.Items.AddObject('000000', TObject($000000));
  lstColorBox.Items.AddObject('FF00FF', TObject($FF00FF));
  lstColorBox.Items.AddObject('808080', TObject($808080));

  lstColorBox.ItemIndex := 3;
end;

{
  根据 lstColorSelect 中的颜色，计算主颜色和偏色
  返回值：
  --返回计算出来的的颜色；形如：A0A0A0-101010
}
function TtranForm.CalcOffersetColor(): string;
var
  index: Integer;
  tmpColor: string;
  tmpInt: Integer;
  lRValue, lGValue, lBValue: Integer;
  sRValue, sGValue, sBValue: Integer;
  mainR, mainG, mainB, offerR, offerG, offerB: Integer;
begin
  Result := '';
  lRValue := -1;
  lGValue := -1;
  lBValue := -1;
  sRValue := -1;
  sGValue := -1;
  sBValue := -1;
  for index := 0 to lstColorBox.Count - 1 do
  begin
    tmpColor := lstColorBox.Items[index];

    tmpInt := StrToInt('$' + tmpColor);

    if lRValue = -1 then
    begin
      lRValue := GetRValue(tmpInt);
      lGValue := GetGValue(tmpInt);
      lBValue := GetBValue(tmpInt);
    end;

    if sRValue = -1 then
    begin
      sRValue := GetRValue(tmpInt);
      sGValue := GetGValue(tmpInt);
      sBValue := GetBValue(tmpInt);
    end;

    if GetRValue(tmpInt) > lRValue then
      lRValue := GetRValue(tmpInt);

    if GetRValue(tmpInt) < sRValue then
      sRValue := GetRValue(tmpInt);

    if GetGValue(tmpInt) > lGValue then
      lGValue := GetGValue(tmpInt);

    if GetGValue(tmpInt) < sGValue then
      sGValue := GetGValue(tmpInt);

    if GetBValue(tmpInt) > lBValue then
      lBValue := GetBValue(tmpInt);

    if GetBValue(tmpInt) < sBValue then
      sBValue := GetBValue(tmpInt);

  end;

  if (lRValue = -1) or (sRValue = -1) then
    Exit;

  mainR := Floor((lRValue + sRValue) / 2);
  offerR := Floor((Abs(lRValue - sRValue) + 1) / 2);
  mainG := Floor((lGValue + sGValue) / 2);
  offerG := Floor((Abs(lGValue - sGValue) + 1) / 2);
  mainB := Floor((lBValue + sBValue) / 2);
  offerB := Floor((Abs(lBValue - sBValue) + 1) / 2);

  Result := IntToHex(mainB, 2) + IntToHex(mainG, 2) + IntToHex(mainR, 2) + '-' +
    IntToHex(offerB, 2) + IntToHex(offerG, 2) + IntToHex(offerR, 2);
end;

end.
