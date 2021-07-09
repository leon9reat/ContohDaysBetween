program PPinjam;

uses
  Forms,
  UListPinjam in 'UListPinjam.pas' {FListPinjam},
  UEntriPinjam in 'UEntriPinjam.pas' {FEntriPinjam},
  UEntriKembali in 'UEntriKembali.pas' {FEntriKembali};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFListPinjam, FListPinjam);
  Application.Run;
end.
