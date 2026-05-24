unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TU_Principal = class(TForm)
    Menu: TMainMenu;
    Cadastros: TMenuItem;
    Empresas: TMenuItem;
    Cidades: TMenuItem;
    Clientes: TMenuItem;
    Fornecedores: TMenuItem;
    Fornecedores1: TMenuItem;
    SubGrupos: TMenuItem;
    Produtos: TMenuItem;
    Movimentacoes: TMenuItem;
    Vendas: TMenuItem;
    Compras: TMenuItem;
    Movimentaes2: TMenuItem;
    ContasaReceber: TMenuItem;
    ContasaPagar: TMenuItem;
    Utilitarios: TMenuItem;
    Usuarios: TMenuItem;
    Configuracoes: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  U_Principal: TU_Principal;

implementation

{$R *.dfm}

end.
