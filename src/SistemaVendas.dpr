program SistemaVendas;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {F_Principal},
  DMConexao in 'Utils\DMConexao.pas' {DM_Conexao: TDataModule},
  frmConexaoErro in 'View\frmConexaoErro.pas' {F_ConexaoErro},
  frmConfiguraConexao in 'View\frmConfiguraConexao.pas' {F_ConfiguraConexao},
  ctrUsuario in 'Controller\ctrUsuario.pas',

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Conexao, DM_Conexao);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_Login, F_Login);
  Application.Run;
end.
