// Developed by Madebotix
unit OTR_speed_calc_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Math, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmSpeedCalc = class(TForm)
    edtTime: TEdit;
    lblSpeed: TLabel;
    btnCalc: TButton;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSpeedCalc: TfrmSpeedCalc;
  rTime, rSpeed: real;

implementation

{$R *.dfm}

procedure TfrmSpeedCalc.btnCalcClick(Sender: TObject);
begin
  // input
  rTime := StrToFloat(edtTime.Text);

  // processing
  rSpeed := (300 / rTime) * 6;

  // output
  lblSpeed.Caption := FloatToStrF(rSpeed, ffFixed, 8, 2) + ' km/h';

end;

end.
