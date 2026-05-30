unit frmConexaoErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TU_ConexaoErro = class(TForm)
    Lbl_MensagemErro: TLabel;
    Btn_FecharSistema: TBitBtn;
    PN_Principal: TPanel;
    PN_Rodape: TPanel;
    Btn_TentarNovamente: TBitBtn;
    Lbl_MensagemErroDatabase: TLabel;
    PN_Topo: TPanel;
    procedure Btn_FecharSistemaClick(Sender: TObject);
    procedure Btn_TentarNovamenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  U_ConexaoErro: TU_ConexaoErro;

implementation

uses
  ConexaoDM;

{$R *.dfm}

procedure TU_ConexaoErro.Btn_FecharSistemaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TU_ConexaoErro.Btn_TentarNovamenteClick(Sender: TObject);
begin
  try
    if DM_Conexao.TestarConexao then
      ModalResult := mrOk;
  except
    on E: Exception do
    begin
      Lbl_MensagemErroDatabase.Caption := 'Não foi possível se conectar ao Banco de Dados' + sLineBreak +
          'Possível causa: '+ E.Message;;
      MessageDlg('Não foi possivel se conectar ao banco de dados', mtError, [mbok], 0);
    end;
  end;

end;

end.
