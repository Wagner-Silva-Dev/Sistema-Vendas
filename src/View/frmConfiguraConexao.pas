unit frmConfiguraConexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, IniFiles;

type
  TU_ConfiguraConexao = class(TForm)
    PN_Topo: TPanel;
    PN_Rodape: TPanel;
    PN_Principal: TPanel;
    EDT_IP: TEdit;
    Lbl_IP: TLabel;
    Lbl_ConfiguraArquivo: TLabel;
    Lbl_Porta: TLabel;
    EDT_Porta: TEdit;
    Lbl_BancoDados: TLabel;
    EDT_BancoDados: TEdit;
    Lbl_Usuario: TLabel;
    EDT_Usuario: TEdit;
    Lbl_Senha: TLabel;
    EDT_Senha: TEdit;
    Btn_Voltar: TBitBtn;
    Btn_SalvarConexao: TBitBtn;
    procedure Btn_VoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn_SalvarConexaoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    caminho : string;
    procedure SalvarIni;
  public

  end;

var
  U_ConfiguraConexao: TU_ConfiguraConexao;

implementation

{$R *.dfm}

procedure TU_ConfiguraConexao.SalvarIni;
var
  IniConf : Tinifile;
begin
  IniConf := Tinifile.Create(caminho);
  try
    IniConf.WriteString('Database', 'ip_servidor', EDT_IP.Text);
    IniConf.WriteString('Database', 'porta',       EDT_Porta.Text);
    IniConf.WriteString('Database', 'banco',       EDT_BancoDados.Text);
    IniConf.WriteString('Database', 'usuario',     EDT_Usuario.Text);
    IniConf.WriteString('Database', 'senha',       EDT_Senha.Text);
  finally
    IniConf.Free;
  end;
end;


procedure TU_ConfiguraConexao.Btn_VoltarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TU_ConfiguraConexao.Btn_SalvarConexaoClick(Sender: TObject);
begin
  SalvarIni;
  ShowMessage('Configurações salvas! Clique em Tentar Novamente');
  ModalResult := mrOk;
end;

procedure TU_ConfiguraConexao.FormCreate(Sender: TObject);
var
  IniConf : Tinifile;
begin
  caminho := ExtractFilePath(Application.ExeName) + 'config.ini';

  if FileExists(caminho) then
    Btn_SalvarConexao.Caption := 'Alterar conexão';

  IniConf := Tinifile.Create(caminho);


  try
    EDT_IP.Text         := IniConf.ReadString('Database', 'ip_servidor', 'localhost');
    EDT_Porta.Text      := IniConf.ReadString('Database', 'porta',       '3306');
    EDT_BancoDados.Text := IniConf.ReadString('Database', 'banco',     '');
    EDT_Usuario.Text    := IniConf.ReadString('Database', 'usuario',     'root');
    EDT_Senha.Text      := IniConf.ReadString('Database', 'senha',       '');
  finally
    IniConf.Free;
  end;
end;

procedure TU_ConfiguraConexao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

end.
