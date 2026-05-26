unit ConexaoDM;

interface

uses
  System.SysUtils, System.Classes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client,
  IniFiles, Vcl.Forms, dialogs;

type
  TDM_Conexao = class(TDataModule)
    Database: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Conexao: TDM_Conexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM_Conexao.DataModuleCreate(Sender: TObject);
var
  IniConf: TIniFile;
  caminho: string;
begin
  caminho := ExtractFilePath(Application.ExeName) + 'config.ini';

  if not FileExists(caminho) then
    raise Exception.Create('Arquivo config.ini não encontrado.');

  try
    IniConf := TIniFile.Create(caminho);
    try
      Database.Params.Values['Server']    := IniConf.ReadString('Database', 'ip_servidor', 'localhost');
      Database.Params.Values['Port']      := IniConf.ReadString('Database', 'porta',       '3306');
      Database.Params.Values['Database']  := IniConf.ReadString('Database', 'caminho',     '');
      Database.Params.Values['User_Name'] := IniConf.ReadString('Database', 'usuario',     'root');
      Database.Params.Values['Password']  := IniConf.ReadString('Database', 'senha',       '');
      Database.LoginPrompt := False;
      Database.Connected   := True;
    finally
      IniConf.Free;
    end;
  except
    on E: Exception do
      ShowMessage('Erro ao conectar: ' + E.Message);
  end;
end;

end.
