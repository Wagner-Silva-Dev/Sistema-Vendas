unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TF_Login = class(TForm)
    EDT_Usuario: TEdit;
    EDT_Senha: TEdit;
    Lbl_Usuario: TLabel;
    Lbl_Senha: TLabel;
    IMG_Login: TImage;
    PN_Rodape: TPanel;
    Btn_FecharSistema: TBitBtn;
    Btn_LoginUsuario: TBitBtn;
    Lbl_Login: TLabel;
    Lbl_DigiteDados: TLabel;
    procedure Btn_FecharSistemaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_LoginUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

uses
  ctrUsuario, frmPrincipal;

{$R *.dfm}

procedure TF_Login.Btn_FecharSistemaClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Login.Btn_LoginUsuarioClick(Sender: TObject);
begin
  if not Autenticar(EDT_Usuario.Text, EDT_Senha.Text) then
  begin
    ShowMessage('Usuário e Senha não cadastrado');
    EDT_Usuario.SetFocus;
  end
  else
  begin
    F_Principal.Show;
    Application.MainFormOnTaskbar := True;
    F_Login.Hide;
  end;
end;

procedure TF_Login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

end.
