unit frmHerancaBuscar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Menus;

type
  TF_HerancaBuscar = class(TForm)
    PN_Topo: TPanel;
    PN_Rodape: TPanel;
    PN_Principal: TPanel;
    EDT_Buscar: TEdit;
    Lbl_Pesquisa: TLabel;
    PN_RTopo: TPanel;
    DBG_Buscar: TDBGrid;
    RG_Buscar: TRadioGroup;
    Btn_Cadastrar: TBitBtn;
    Btn_Alterar: TBitBtn;
    Btn_Excluir: TBitBtn;
    Lbl_Registros: TLabel;
    DS_Resultado: TDataSource;
    PopupMenu: TPopupMenu;
    Atualizar: TMenuItem;
    N1: TMenuItem;
    Excluir: TMenuItem;
    Btn_Sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EDT_BuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBG_BuscarDblClick(Sender: TObject);
    procedure DBG_BuscarKeyPress(Sender: TObject; var Key: Char);
    procedure EDT_BuscarChange(Sender: TObject);
    procedure AtualizarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure EDT_BuscarKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_SairClick(Sender: TObject);
    procedure RG_BuscarClick(Sender: TObject);
  private
    procedure BuscarDados;

  protected
    procedure ExcluirRegistro; virtual;
  public
    { Public declarations }
  end;

var
  F_HerancaBuscar: TF_HerancaBuscar;

implementation

{$R *.dfm}

procedure TF_HerancaBuscar.FormShow(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
  EDT_Buscar.SetFocus;
end;

procedure TF_HerancaBuscar.RG_BuscarClick(Sender: TObject);
begin
  EDT_Buscar.SetFocus;
end;

procedure TF_HerancaBuscar.ExcluirClick(Sender: TObject);
begin
  if (DS_Resultado.DataSet = nil) or (DS_Resultado.DataSet.IsEmpty) then
    raise Exception.Create('Selecione um registro');

  if(Application.MessageBox(
    'Confirma exclusão deste registro?',
    'Confirma exclusão?',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) <> idYes)
  then
    Exit;

  ExcluirRegistro;
  Self.BuscarDados;
end;

procedure TF_HerancaBuscar.ExcluirRegistro;
begin
  // implementado pelos forms herdados
end;

procedure TF_HerancaBuscar.EDT_BuscarChange(Sender: TObject);
begin
  Self.BuscarDados;
end;

procedure TF_HerancaBuscar.BuscarDados;
begin
  Lbl_Registros.Caption := 'Registros encontrados : 000000';

  if (DS_Resultado.DataSet = nil) or (DS_Resultado.DataSet.IsEmpty) then
    Exit;

  Lbl_Registros.Caption := 'Registros encontrados : ' + FormatFloat('000000', DS_Resultado.DataSet.RecordCount);
end;

procedure TF_HerancaBuscar.DBG_BuscarDblClick(Sender: TObject);
begin
  Btn_Alterar.Click;
end;

procedure TF_HerancaBuscar.DBG_BuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    Btn_Alterar.Click;
end;

procedure TF_HerancaBuscar.EDT_BuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (DS_Resultado.DataSet = nil) or DS_Resultado.DataSet.IsEmpty then
    Exit;

  case (Key) of
    VK_UP   : DS_Resultado.DataSet.Prior;
    VK_DOWN : DS_Resultado.DataSet.Next;
  end;
end;

procedure TF_HerancaBuscar.EDT_BuscarKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (DS_Resultado.DataSet <> nil) and (not DS_Resultado.DataSet.IsEmpty) then
    Btn_Alterar.Click;
end;

procedure TF_HerancaBuscar.AtualizarClick(Sender: TObject);
begin
  Self.BuscarDados;
end;

procedure TF_HerancaBuscar.Btn_AlterarClick(Sender: TObject);
begin
  if (DS_Resultado.DataSet = nil) or (DS_Resultado.DataSet.IsEmpty) then
    raise Exception.Create('Selecione um registro');

  Self.ModalResult := mrOk;
end;

procedure TF_HerancaBuscar.Btn_SairClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TF_HerancaBuscar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.ModalResult := mrCancel;
end;

procedure TF_HerancaBuscar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case (Key) of
    VK_F4:
    begin
      if (ssAlt in Shift) then
        Key := 0;
    end;

    VK_ESCAPE:
      Btn_Sair.Click;
  end;
end;

procedure TF_HerancaBuscar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

end.
