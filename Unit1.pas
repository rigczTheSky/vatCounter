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

procedure TForm1.Button1Click(Sender: TObject);
begin
begin

  input := StrToFloat(InputTextField.Text);
  vatInput := StrToFloat(VatTextField.Text);

if vatInput >= 0 then

  if vectorToggle.State = tssOn then
begin
    output :=  input*(1+(vatInput/100));
    OutputLabel.Caption := FloatToStr(output);
end  else
    output := (input/(100+vatInput))*100;
    OutputLabel.Caption := FloatToStr(output);
end;
end;
procedure TForm1.VectorToggleClick(Sender: TObject);
begin
          if vectorToggle.State = tssOn then
VectorLabel.Caption := 'Netto na brutto:'
        else
VectorLabel.Caption := 'Brutto na netto:';
end;
end.
