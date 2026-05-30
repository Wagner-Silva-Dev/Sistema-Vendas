program SistemaVendas;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {U_Principal},
  ConexaoDM in 'Utils\ConexaoDM.pas' {DM_Conexao: TDataModule},
  frmConexaoErro in 'View\frmConexaoErro.pas' {U_ConexaoErro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Conexao, DM_Conexao);
  Application.CreateForm(TU_Principal, U_Principal);
  Application.Run;
end.
