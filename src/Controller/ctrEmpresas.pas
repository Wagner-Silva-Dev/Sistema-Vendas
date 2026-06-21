unit ctrEmpresas;

interface

uses
  System.SysUtils, Data.DB;

procedure BuscarRegistroEmpresas(const ACampo, AValor : string ; out ADataSet : TDataSet); overload;
procedure BuscarRegistroEmpresas(out ADataSet : TDataSet); overload;
function  ExcluirEmpresa(const Aid : Integer) : Boolean;
procedure LiberarDM;

implementation

uses
  DMEmpresas;

procedure BuscarRegistroEmpresas(const ACampo, AValor : string ; out ADataSet : TDataSet);
begin
  if (DM_Empresas = nil) then
    DM_Empresas := TDM_Empresas.Create(nil);

  ADataSet := DM_Empresas.BuscarRegistros(ACampo, AValor);
end;

procedure BuscarRegistroEmpresas(out ADataSet : TDataSet);
begin
  BuscarRegistroEmpresas('', '', ADataSet)
end;

procedure LiberarDM;
begin
  FreeAndNil(DM_Empresas);
end;

function ExcluirEmpresa(const Aid : Integer) : Boolean;
begin
  try
    Result := DM_Empresas.ExcluirEmpresa(Aid);
  except
    on E: Exception do
      raise Exception.Create('Erro ao excluir a empresa!' + #13#10 +
        'Detalhes: ' + E.Message);
  end;

end;

end.
