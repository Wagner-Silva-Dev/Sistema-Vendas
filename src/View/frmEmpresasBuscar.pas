unit frmEmpresasBuscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmHerancaBuscar, Data.DB, Vcl.Menus,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.UITypes;

type
  TF_EmpresaBuscar = class(TF_HerancaBuscar)
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EDT_BuscarChange(Sender: TObject);
  private
    { Private declarations }
  protected
    function ExcluirRegistro : Boolean; override;
  public
    { Public declarations }
  end;

var
  F_EmpresaBuscar: TF_EmpresaBuscar;

implementation

uses
  ctrEmpresas;

{$R *.dfm}

procedure TF_EmpresaBuscar.EDT_BuscarChange(Sender: TObject);
var
  DS : TDataSet;
  Campo : string;
begin
  case RDG_Buscar.ItemIndex of
    0: Campo := 'razao_social';
    1: Campo := 'nome_fantasia';
    2: Campo := 'cnpj';
  end;

  BuscarRegistroEmpresas(Campo, EDT_Buscar.Text, DS);
  DS_Resultado.DataSet := DS;

  inherited;
end;

function TF_EmpresaBuscar.ExcluirRegistro : Boolean;
var
  DS:  TDataSet;
  Aid: Integer;
begin
  Result  := False;

  Aid := DS_Resultado.DataSet.FieldByName('id').AsInteger;

  if not inherited ExcluirRegistro then
    Exit;

    try
      ctrEmpresas.ExcluirEmpresa(Aid);
      BuscarRegistroEmpresas(DS);
      DS_Resultado.DataSet := DS;

      Result  := True;
    except
      on E: Exception do
      begin
        MessageDlg(E.Message, mtError, [mbOk], 0);
      end;

    end;

end;

procedure TF_EmpresaBuscar.FormDestroy(Sender: TObject);
begin
  inherited;
  ctrEmpresas.LiberarDM;
end;

procedure TF_EmpresaBuscar.FormShow(Sender: TObject);
var
  DS : TDataSet;
begin
  inherited;
  BuscarRegistroEmpresas(DS);
  DS_Resultado.DataSet := DS;
  BuscarDados;
end;

end.
