program SistemaVendas;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {U_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_Principal, U_Principal);
  Application.Run;
end.
