unit DMUsuarios;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DMConexao;

type

  TDM_Usuarios = class(TDataModule)
    QUsuarios: TFDQuery;

  private
    { Private declarations }
  public
    function BuscarLogin(const ALogin, ASenha : string) : Boolean;
  end;

var
  DM_Usuarios: TDM_Usuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM_Usuarios.BuscarLogin(const ALogin, ASenha : string) : Boolean;
begin
try
  QUsuarios.Close;
  QUsuarios.SQL.Clear;
  QUsuarios.SQL.Add('SELECT 1 FROM usuarios');
  QUsuarios.SQL.Add('WHERE usuario = :usuario');
  QUsuarios.SQL.Add('AND Senha = :senha');
  QUsuarios.SQL.Add('AND ativo = 1');

  QUsuarios.ParamByName('usuario').AsString := ALogin;
  QUsuarios.ParamByName('senha').AsString   := ASenha;
  QUsuarios.Open;

  Result := not QUsuarios.IsEmpty;
finally
  QUsuarios.Close;
end;

end;

end.