unit SimpleLED;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Graphics;

type
  TSimpleLEDIndicator = class(TGraphicControl)
  private
    fColor: TColor;
    procedure SetColor(NewColor: TColor);
  protected
    procedure Paint; override;
    procedure DrawIndicator(NewColor: TColor);
    //procedure change;
  public
    constructor Create(AOwner: TComponent); override;
    property Color: TColor read fColor write SetColor;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('My Component', [TSimpleLEDIndicator]);
end;

{ TSimpleLEDIndicator }

constructor TSimpleLEDIndicator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Height := 50;
  Width := 50;
  Color := clGreen;
end;

// Алгоритм отрисовки компонента
procedure TSimpleLEDIndicator.DrawIndicator(NewColor: TColor);
begin
  Canvas.Pen.Style := psSolid;
  Canvas.Brush.Style := bsSolid;
  Canvas.Brush.Color := NewColor;
  Canvas.Rectangle(0, 0, Width, Height);
end;

// Собственно отрисовка компонента
procedure TSimpleLEDIndicator.Paint;
begin
  DrawIndicator(fColor);
end;

// Перерисовка компонента при изменении цвета
procedure TSimpleLEDIndicator.SetColor(NewColor: TColor);
begin
  fColor := NewColor;
  Refresh;
end;
end.
