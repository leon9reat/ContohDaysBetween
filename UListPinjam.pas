unit UListPinjam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls;

type
  TData = record
    id: integer;
    judul: string;
    tglPinjam: TDate;
    tglKembali: TDate;
    terlambat: integer;
    denda: Currency;
  end;

  TListData = array of TData;

  TFListPinjam = class(TForm)
    ListView1: TListView;
    btnPinjam: TButton;
    btnKembali: TButton;
    procedure btnPinjamClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
  private
    { Private declarations }
    fListData: TListData;
    procedure Tambah(ADataPinjam: TData);
    procedure Edit(var ADataPInjam: TData);
  public
    { Public declarations }
  end;

var
  FListPinjam: TFListPinjam;

implementation

uses
  UEntriPinjam, UEntriKembali, DateUtils;

const
  cDenda = 1000;

{$R *.dfm}

procedure DeleteArrayIndex(var X: TListData; Index: Integer);
begin
  if Index > High(X) then
    Exit;
  if Index < Low(X) then
    Exit;
  if Index = High(X) then begin
    SetLength(X, Length(X) - 1);
    Exit;
  end;
  Finalize(X[Index]);
  System.Move(X[Index + 1], X[Index],
    (Length(X) - Index - 1) * SizeOf(string) + 1);
  SetLength(X, Length(X) - 1);
end;

procedure TFListPinjam.btnPinjamClick(Sender: TObject);
var
  iAkhir: integer;
begin
  iAkhir := High(fListData) + 1;
  SetLength(fListData, iAkhir + 1);
  with fListData[iAkhir] do begin
    id := iAkhir + 1;
    tglPinjam := Date;
  end;

  FEntriPinjam := TFEntriPinjam.Create(Self);
  with FEntriPinjam do begin
    DataPinjam := fListData[iAkhir];
    ShowModal;
    if ModalResult = mrOK then begin
      fListData[iAkhir] := DataPinjam;
      Tambah(fListData[iAkhir]);
    end
    else
      DeleteArrayIndex(fListData, iAkhir);
    Free;
  end;
end;

procedure TFListPinjam.Tambah(ADataPinjam: TData);
var
  Itm: TListItem;
begin
  Itm := ListView1.Items.Add;
  Itm.Caption := IntToStr(ADataPinjam.id);
  Itm.SubItems.Add(ADataPinjam.judul);
  Itm.SubItems.Add(FormatDateTime('dd-MM-yyyy', ADataPinjam.tglPinjam));
  Itm.SubItems.Add('-');
  Itm.SubItems.Add('-');
  Itm.SubItems.Add('-');
end;

procedure TFListPinjam.FormCreate(Sender: TObject);
begin
  ListView1.Clear;
end;

procedure TFListPinjam.btnKembaliClick(Sender: TObject);
var
  iSelect: integer;
begin
  iSelect := ListView1.ItemIndex;
  if iSelect >= 0 then begin

    FEntriKembali := TFEntriKembali.Create(Self);
    with FEntriKembali do begin
      DataPinjam := fListData[iSelect];
      ShowModal;
      if ModalResult = mrOK then begin
        fListData[iSelect] := DataPinjam;
        Edit(fListData[iSelect]);
      end;
      Free;
    end
  end;
end;

procedure TFListPinjam.Edit(var ADataPInjam: TData);
var
  Itm: TListItem;
  lLambat: integer;
begin
  lLambat := DaysBetween(ADataPInjam.tglPinjam, ADataPInjam.tglKembali) - 3;
  if lLambat > 0 then begin
    ADataPInjam.terlambat := lLambat;
    ADataPInjam.denda := ADataPInjam.terlambat * cDenda;
  end
  else begin
    ADataPInjam.terlambat := 0;
    ADataPInjam.denda := 0;
  end;

  Itm := ListView1.ItemFocused;
  Itm.Caption := IntToStr(ADataPInjam.id);
  Itm.SubItems[0] := ADataPInjam.judul;
  Itm.SubItems[1] := FormatDateTime('dd-MM-yyyy', ADataPInjam.tglPinjam);
  Itm.SubItems[2] := FormatDateTime('dd-MM-yyyy', ADataPInjam.tglKembali);
  Itm.SubItems[3] := IntToStr(ADataPInjam.terlambat);
  Itm.SubItems[4] := FormatFloat('#,0.##', ADataPInjam.denda);
end;

end.

