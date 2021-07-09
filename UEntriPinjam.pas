unit UEntriPinjam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, UListPinjam;

type
  TFEntriPinjam = class(TForm)
    edtId: TEdit;
    edtJudul: TEdit;
    dtpTglPinjam: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSimpan: TButton;
    btnBatal: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
    fPinjam: TData;
    function GetDataPinjam: TData;
    procedure SetDataPinjam(const Value: TData);
  public
    { Public declarations }
    property DataPinjam: TData read GetDataPinjam write SetDataPinjam ;
  end;

var
  FEntriPinjam: TFEntriPinjam;

implementation

{$R *.dfm}

{ TFEntriPinjam }

function TFEntriPinjam.GetDataPinjam: TData;
begin
  Result := fPinjam;
end;

procedure TFEntriPinjam.SetDataPinjam(const Value: TData);
begin
  fPinjam := Value;
end;

procedure TFEntriPinjam.FormShow(Sender: TObject);
begin
  edtId.Text := IntToStr(fPinjam.id);
  edtJudul.Text := fPinjam.judul;
  dtpTglPinjam.Date := fPinjam.tglPinjam;
end;

procedure TFEntriPinjam.btnSimpanClick(Sender: TObject);
begin
  with fPinjam do begin
    id := StrToIntDef(edtId.Text, 0);
    judul := edtJudul.Text;
    tglPinjam := dtpTglPinjam.Date;
  end;
  ModalResult := mrOK;
end;

procedure TFEntriPinjam.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

