unit frmConexaoErro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TF_ConexaoErro = class(TForm)
    Lbl_MensagemErro: TLabel;
    Btn_ConfiguraConexao: TBitBtn;
    PN_Principal: TPanel;
    PN_Rodape: TPanel;
    Btn_TentarNovamente: TBitBtn;
    Lbl_MensagemErroDatabase: TLabel;
    PN_Topo: TPanel;
    Btn_FecharSistema: TBitBtn;

    procedure Btn_TentarNovamenteClick(Sender: TObject);
    procedure Btn_FecharSistemaClick(Sender: TObject);
    procedure Btn_ConfiguraConexaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ConexaoErro: TF_ConexaoErro;

implementation

uses
  DMConexao, frmConfiguraConexao, System.UITypes;

{$R *.dfm}

procedure TF_ConexaoErro.Btn_ConfiguraConexaoClick(Sender: TObject);
var
  FrmConfigConexao : TF_ConfiguraConexao;
begin
  FrmConfigConexao := TF_ConfiguraConexao.Create(Self);
  try
    FrmConfigConexao.ShowModal;
  finally
    FrmConfigConexao.Free;
  end;
end;

procedure TF_ConexaoErro.Btn_FecharSistemaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_ConexaoErro.Btn_TentarNovamenteClick(Sender: TObject);
begin
  try
    if DM_Conexao.TestarConexao then
      ModalResult := mrOk;
  except
    on E: Exception do
    begin
      Lbl_MensagemErroDatabase.Caption := 'Não foi possível se conectar ao Banco de Dados' + sLineBreak +
          'Possível causa: '+ E.Message;
      MessageDlg('Não foi possivel se conectar ao banco de dados', mtError, [mbok], 0);
    end;
  end;

end;

end.
