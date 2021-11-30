unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TForm1 = class(TForm)
    VectorToggle: TToggleSwitch;
    InputTextField: TEdit;
    VectorLabel: TLabel;
    OutputLabel: TLabel;
    Button1: TButton;
    VatTextField: TEdit;
    VatRateLabel: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure VectorToggleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  input: Double;
  vatInput: Double;
  output: Double;

implementation

{$R *.dfm}

function count(sum, vat: double; toggleOn: boolean) : Double;
begin
   if toggleOn = true then
   count := sum*(1+(vat/100))
   else
   count := (sum/(100+vat))*100
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  input := StrToFloat(InputTextField.Text);
  vatInput := StrToFloat(VatTextField.Text);
  if vatInput <=0 then
  ShowMessage('VAT musi być liczbą dodatnią')
  else
  if vatInput <23 then
  ShowMessage('Stawka vatu jest niższa niż standardowe 23%')
  else
  OutputLabel.Caption := FloatToStr(count(input, vatInput, vectorToggle.IsOn));
end;

procedure TForm1.VectorToggleClick(Sender: TObject);
begin
          if vectorToggle.IsOn = true then
VectorLabel.Caption := 'Netto na brutto:'
        else
VectorLabel.Caption := 'Brutto na netto:';
end;

end.
