program SistemaVendas;

uses
  Vcl.Forms,
  frmPrincipal in 'View\frmPrincipal.pas' {F_Principal},
  DMConexao in 'Utils\DMConexao.pas' {DM_Conexao: TDataModule},
  frmConexaoErro in 'View\frmConexaoErro.pas' {F_ConexaoErro},
  frmConfiguraConexao in 'View\frmConfiguraConexao.pas' {F_ConfiguraConexao},
  frmLogin in 'View\frmLogin.pas' {F_Login},
  ctrUsuario in 'Controller\ctrUsuario.pas',
  DMUsuarios in 'Model\DMUsuarios.pas' {DM_Usuarios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Conexao, DM_Conexao);
  Application.CreateForm(TDM_Usuarios, DM_Usuarios);
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.Run;
end.
