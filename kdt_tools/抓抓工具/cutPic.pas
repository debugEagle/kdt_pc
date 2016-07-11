unit cutPic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TScreenCanvas = class(TCanvas)
  protected
    procedure CreateHandle; override;
  public
    destructor Destroy; override;
  end;

  TFrmCutPic = class(TForm)
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlUp: TPanel;
    pnlDown: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
    procedure CopyPic();
  private
    FBitMap: TBitmap;
    FScreenCanvas: TScreenCanvas;
    FDrawEnable: Boolean;
  end;

var
  FrmCutPic: TFrmCutPic;
  BeginX, BeginY, Endx, EndY: Integer; // 全局变量 记录鼠标按下时的X,Y坐标
  IsPoint: Boolean;
  point: Tpoint;
  Arect: TRect;

implementation

{$R *.dfm}

uses
  transfer, catch, data, setLarge;

// 双缓冲？
procedure TFrmCutPic.CreateParams(var Params: TCreateParams);
begin
  inherited;
  // Params.ExStyle := 33554432; // 0x 02 00 00 00
end;

procedure TFrmCutPic.FormCreate(Sender: TObject);
begin
  FBitMap := TBitmap.Create;
  with FBitMap do
  begin
    Width := Screen.Width;
    Height := Screen.Height;
  end;
  FScreenCanvas := TScreenCanvas.Create;
  pnlLeft.Visible := False;
  pnlRight.Visible := False;
  pnlUp.Visible := False;
  pnlDown.Visible := False;
end;

procedure TFrmCutPic.CopyPic();
begin
  FBitMap.Canvas.CopyRect(Rect(0, 0, Screen.Width, Screen.Height),
    FScreenCanvas, Rect(0, 0, Screen.Width, Screen.Height));
end;

{ TScreenCanvas }

procedure TScreenCanvas.CreateHandle;
begin
  inherited;
  Handle := getdc(0);
end;

destructor TScreenCanvas.Destroy;
begin
  ReleaseDC(Handle, 0);
  inherited;
end;

procedure TFrmCutPic.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FBitMap);
end;

procedure TFrmCutPic.FormKeyPress(Sender: TObject; var Key: Char);
var
  tmpBitMap: TBitmap;
  sRect, dRect: TRect;
begin
  if Key = #27 then
    Self.Hide
  else if Key = #13 then
  begin
    tmpBitMap := TBitmap.Create;

    sRect := Rect(BeginX, BeginY, Endx, EndY);
    dRect := Rect(0, 0, Abs(Endx - BeginX), Abs(EndY - BeginY));
    tmpBitMap.Width := Abs(Endx - BeginX);
    tmpBitMap.Height := Abs(EndY - BeginY);

    tmpBitMap.Canvas.CopyRect(dRect, FBitMap.Canvas, sRect);

    tranForm.imgSource.Picture.Bitmap.Assign(tmpBitMap);

    FreeAndNil(tmpBitMap);

    pnlLeft.Visible := False;
    pnlRight.Visible := False;
    pnlUp.Visible := False;
    pnlDown.Visible := False;

    if catch.g_WinShowData.dataShow then
    begin
      Form1.NCalcData.Checked := True;
      FormClacData.Show;
    end;

    if catch.g_WinShowData.setLargeShow then
    begin
      Form1.NSetLarge.Checked := True;
      SetLargeForm.Show;
    end;

    if catch.g_WinShowData.transShow then
    begin
      Form1.NTransfer.Checked := True;
      tranForm.Show;
    end;

    Self.Hide;
  end;
end;

procedure TFrmCutPic.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  aPoint: Tpoint;
begin
  GetCursorPos(aPoint);
  BeginX := aPoint.X;
  BeginY := aPoint.Y; // 记录鼠标按下时的X,Y坐标
  pnlLeft.Visible := True;
  pnlRight.Visible := True;
  pnlUp.Visible := True;
  pnlDown.Visible := True;
end;

procedure TFrmCutPic.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  aPoint: Tpoint;
  min_x, min_y, max_x, max_y: Integer;
begin
  GetCursorPos(point);
  if (PtInRect(Arect, point) = True) then
    Cursor := crSizeAll
  else
    Cursor := crCross;

  // 下面代码演示的是背景为纯色时的选取框.
  // 选取的范围可记录在一个TRECT变量里.具体情况视要求而定.
  // 当背影为图形时..可 以把注释1之间的代码替换为重绘背景的代码
  if ssleft in Shift then // 判断鼠标左键是下按着.
  begin
    Canvas.Pen.Style := psDot;
    Canvas.Pen.Width := 2;
    Canvas.Pen.Color := clBlue;
    // Canvas.Rectangle(BeginX, BeginY, X, Y);
    // Canvas.MoveTo(BeginX, BeginY);
    // Canvas.LineTo(X, BeginY);
    // Canvas.LineTo(X, Y);
    // Canvas.LineTo(BeginX, Y);
    // Canvas.LineTo(BeginX, BeginY);

    if X > BeginX then
    begin
      min_x := BeginX;
      max_x := X;
    end
    else
    begin
      min_x := X;
      max_x := BeginX;
    end;

    if Y > BeginY then
    begin
      min_y := BeginY;
      max_y := Y;
    end
    else
    begin
      min_y := Y;
      max_y := BeginY;
    end;

    pnlLeft.Height := max_y - min_y;
    pnlLeft.Top := min_y;
    pnlLeft.Left := min_x;

    pnlRight.Height := max_y - min_y;
    pnlRight.Top := min_y;
    pnlRight.Left := max_x;

    pnlUp.Width := max_x - min_x;
    pnlUp.Left := min_x;
    pnlUp.Top := min_y;

    pnlDown.Width := max_x - min_x;
    pnlDown.Left := min_x;
    pnlDown.Top := max_y;

    Arect.Left := BeginX;
    Arect.Top := BeginY;
    Arect.Right := X;
    Arect.Bottom := Y;
    GetCursorPos(aPoint);
    Endx := aPoint.X;
    EndY := aPoint.Y;
    IsPoint := True;
  end;
end;

procedure TFrmCutPic.FormPaint(Sender: TObject);
begin
  Canvas.Draw(0, 0, FBitMap);
end;

end.
