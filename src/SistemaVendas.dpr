program SistemaVendas;

uses
  Vcl.Forms,
  System.UITypes,
  frmPrincipal in 'View\frmPrincipal.pas' {F_Principal},
  DMConexao in 'Utils\DMConexao.pas' {DM_Conexao: TDataModule},
  frmConexaoErro in 'View\frmConexaoErro.pas' {F_ConexaoErro},
  frmConfiguraConexao in 'View\frmConfiguraConexao.pas' {F_ConfiguraConexao},
  frmLogin in 'View\frmLogin.pas' {F_Login},
  ctrUsuario in 'Controller\ctrUsuario.pas',
  DMUsuarios in 'Model\DMUsuarios.pas' {DM_Usuarios: TDataModule},
  frmHerancaBuscar in 'View\frmHerancaBuscar.pas' {F_HerancaBuscar},
  frmEmpresasBuscar in 'View\frmEmpresasBuscar.pas' {F_EmpresaBuscar},
  DMEmpresas in 'Model\DMEmpresas.pas' {DM_Empresas: TDataModule},
  ctrEmpresas in 'Controller\ctrEmpresas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Conexao, DM_Conexao);
  Application.CreateForm(TDM_Usuarios, DM_Usuarios);
  Application.CreateForm(TF_Principal, F_Principal);
  F_Principal.Hide;
  F_Login := TF_Login.Create(Application);
  try
    if F_Login.ShowModal <> mrOk then
      Application.Terminate
    else
      Application.Run;
  finally
    F_Login.Free;
  end;
end.
