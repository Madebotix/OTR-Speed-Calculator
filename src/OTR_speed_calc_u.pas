// Developed by Madebotix
// Version 1.6
unit OTR_speed_calc_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Math, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Menus;

type
  TfrmSpeedCalc = class(TForm)
    edtTime: TEdit;
    btnCalc: TButton;
    btnRally: TButton;
    btnOthers: TButton;
    btn4x4: TButton;
    btnTrucks: TButton;
    memPresets: TMemo;
    edtDistance: TEdit;
    lblInsTime: TLabel;
    lblInsDist: TLabel;
    pnlSpeed: TPanel;
    procedure btnCalcClick(Sender: TObject);
    procedure btnTrucksClick(Sender: TObject);
    procedure btnRallyClick(Sender: TObject);
    procedure btn4x4Click(Sender: TObject);
    procedure btnOthersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSpeedCalc: TfrmSpeedCalc;
  rTime, rSpeed, rRDistance, rFDistance: real;

implementation

{$R *.dfm}

procedure TfrmSpeedCalc.btn4x4Click(Sender: TObject);
begin
  memPresets.Text := '    • 4X4 •                                    ' +
    'Hurricane - 121.6                          ' +
    'Taurus - 114.6                             ' +
    'Defender - 111.8                           ' +
    'Vulcan - 111.1                             ' +
    'Mudbee - 110.4                              ' +
    'Fury - 107.1                               ' +
    'Hellfire - 104.6                           ' +
    'Ranger - 104                               ' +
    'Ranger OG - 100                            ' +
    'Carry - 98.9                               ';

end;

procedure TfrmSpeedCalc.btnCalcClick(Sender: TObject);
begin
  // input
  rTime := StrToFloat(edtTime.Text);
  rRDistance := StrToFloat(edtDistance.Text);

  // processing
  rFDistance := (rRDistance / 100) * 60;
  rSpeed := (rFDistance / rTime) * 6;

  // output
  pnlSpeed.Caption := FloatToStrF(rSpeed, ffFixed, 8, 1) + ' km/h';

end;

procedure TfrmSpeedCalc.btnOthersClick(Sender: TObject);
begin
  memPresets.Text := '   • Others •                                ' +
    'Icarus - 163.6                             ' +
    'Voltage - 130.4                            ' +
    'Educator - 120.8                           ' +
    'Peacemaker - 116.8 (Water 42.3) ' + 'Carbon Yeti - 114.6                ' +
    'Jupiter - 112.5 (Water 94.7)        ' +
    'Golden Yeti - 108.4                        ' +
    'Goliath - 104.6                            ' +
    'Rusty - 102.2                              ' +
    'Tuky - 101.6                               ' +
    'Rainbow - 94.2                             ' +
    'Behemoth - 92.7                            ';

end;

procedure TfrmSpeedCalc.btnRallyClick(Sender: TObject);
begin
  memPresets.Text := '   • Rally •                                 ' +
    'Spitfire - 125.8                           ' +
    'Lionheart - 122.4                          ' +
    'Stinger - 122.4                            ' +
    'Lionpaw - 116.8                            ' +
    'Somerset - 114.6                           ' +
    'Dustmaker - 109                            ' +
    'Jazzy - 106.5                              ';

end;

procedure TfrmSpeedCalc.btnTrucksClick(Sender: TObject);
begin
  memPresets.Text := '   • Trucks •                                  ' +
    'Titan - 123.2                              ' +
    'Dachsund - 122.4                           ' +
    'Thunder - 115.3                            ' +
    'Ursus - 114.6                              ' +
    'Maximus - 114.6                            ' +
    'Karma - 105.8                              ' +
    'Payback - 101.1                            ' +
    'Hercules - 99.4                            ' +
    'SchoolMaster - 98.9                        ' +
    'Zed - 96.7                                 ' +
    'Titanium - 65.6                            ' +
    'IceBreaker - 65.2 (Water 42)               ';

end;

end.
