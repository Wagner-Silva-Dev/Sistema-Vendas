unit DMConexao;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client,
  IniFiles, Vcl.Forms, Vcl.Dialogs;

type
  TDM_Conexao = class(TDataModule)
    Database: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);

  private
    procedure CarregarIni;
  public
    function TestarConexao : Boolean;
  end;

var
  DM_Conexao: TDM_Conexao;

implementation

  uses
    System.UITypes, frmConexaoErro;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM_Conexao.CarregarIni;
var
  IniConf: TIniFile;
  caminho: string;
begin
  FDPhysMySQLDriverLink.VendorLib := ExtractFilePath(Application.ExeName) + 'libmysql.dll';

  caminho := ExtractFilePath(Application.ExeName) + 'config.ini';

  if not FileExists(caminho) then
  begin
      raise Exception.Create('Arquivo config.ini não encontrado em ' + caminho);
  end;

    IniConf := TIniFile.Create(caminho);
    try
      Database.Params.Values['Server']    := IniConf.ReadString('Database', 'ip_servidor', 'localhost');
      Database.Params.Values['Port']      := IniConf.ReadString('Database', 'porta',       '3306');
      Database.Params.Values['Database']  := IniConf.ReadString('Database', 'banco',     '');
      Database.Params.Values['User_Name'] := IniConf.ReadString('Database', 'usuario',     'root');
      Database.Params.Values['Password']  := IniConf.ReadString('Database', 'senha',       '');
      Database.LoginPrompt := False;
    finally
      IniConf.Free;
    end;
end;

procedure TDM_Conexao.DataModuleCreate(Sender: TObject);
var
  FrmErro : TF_ConexaoErro;
begin
  try
      TestarConexao;
  except
    on E : Exception do
    begin
      FrmErro := TF_ConexaoErro.Create(Application);
      try
        FrmErro.Lbl_MensagemErroDatabase.Caption := 'Não foi possível se conectar ao Banco de Dados' + sLineBreak +
          'Possível causa: '+ E.Message;
        FrmErro.ShowModal;
      finally
        FrmErro.Free;
      end;
    end;
  end;
end;

function TDM_Conexao.TestarConexao: Boolean;
begin
  Result := False;

    if Database.Connected then
      Database.Connected := False;

    CarregarIni;
    Database.Connected := True;

    Result := True;
end;

end.
