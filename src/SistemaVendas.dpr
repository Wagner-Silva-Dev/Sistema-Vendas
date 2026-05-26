program SistemaVendas;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {U_Principal},
  ConexaoDM in 'Utils\ConexaoDM.pas' {DM_Conexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TU_Principal, U_Principal);
  Application.CreateForm(TDM_Conexao, DM_Conexao);
  Application.Run;
end.
