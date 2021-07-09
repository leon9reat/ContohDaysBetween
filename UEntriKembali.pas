unit UEntriKembali;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, UListPinjam;

type
  TFEntriKembali = class(TForm)
    Label3: TLabel;
    dtpTglPinjam: TDateTimePicker;
    btnSimpan: TButton;
    btnBatal: TButton;
    Label1: TLabel;
    edtId: TEdit;
    edtJudul: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    dtpTglKembali: TDateTimePicker;
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
    property DataPinjam: TData read GetDataPinjam write SetDataPinjam;
  end;

var
  FEntriKembali: TFEntriKembali;

implementation

{$R *.dfm}

{ TFEntriKembali }

function TFEntriKembali.GetDataPinjam: TData;
begin
  Result := fPinjam;
end;

procedure TFEntriKembali.SetDataPinjam(const Value: TData);
begin
  fPinjam := Value;
end;

procedure TFEntriKembali.FormShow(Sender: TObject);
begin
  edtId.Text := IntToStr(fPinjam.id);
  edtJudul.Text := fPinjam.judul;
  dtpTglPinjam.Date := fPinjam.tglPinjam;
  dtpTglKembali.Date := Date;
end;

procedure TFEntriKembali.btnSimpanClick(Sender: TObject);
begin
  with fPinjam do begin
    tglKembali := dtpTglKembali.Date;
  end;
  ModalResult := mrOK;
end;

procedure TFEntriKembali.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.

