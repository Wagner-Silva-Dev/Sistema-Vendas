unit DMEmpresas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DMConexao;

type
  TDM_Empresas = class(TDataModule)
    QEmpresasBuscar: TFDQuery;
    QEmpresaDelete: TFDQuery;
  private
    { Private declarations }
  public
    function BuscarRegistros(const ACampo, AValor : string) : TDataSet;
    function ExcluirEmpresa(const Aid: Integer) : Boolean;
  end;

var
  DM_Empresas: TDM_Empresas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM_Empresas.BuscarRegistros(const ACampo, AValor : string) : TDataSet;
begin
  QEmpresasBuscar.Close;
  QEmpresasBuscar.SQL.Clear;
  QEmpresasBuscar.SQL.Add('SELECT id, nome_fantasia, razao_social, cnpj, cep, uf FROM empresas');

  if ACampo <> '' then
  begin
    QEmpresasBuscar.SQL.Add('WHERE ' + ACampo + ' LIKE :valor');
    QEmpresasBuscar.ParamByName('valor').AsString := AValor + '%';
  end;

  QEmpresasBuscar.SQL.Add('ORDER BY razao_social');
  QEmpresasBuscar.Open;

  Result := QEmpresasBuscar;
end;

function TDM_Empresas.ExcluirEmpresa(const Aid : Integer) : Boolean;
begin
    QEmpresaDelete.Close;
    QEmpresaDelete.SQL.Clear;
    QEmpresaDelete.SQL.Add('DELETE FROM empresas');
    QEmpresaDelete.SQL.Add('WHERE id = :id');

    QEmpresaDelete.ParamByName('id').AsInteger := Aid;
    QEmpresaDelete.ExecSQL;
    Result := True;
end;

end.
