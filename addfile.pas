unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SimpleLED, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SimpleLEDIndicator1: TSimpleLEDIndicator;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  SimpleLEDIndicator1.Width := SimpleLEDIndicator1.Width+100;
  SimpleLEDIndicator1.Height := SimpleLEDIndicator1.Height+100;
  SimpleLEDIndicator1.Color := clBlue;
end;

end.
