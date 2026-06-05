unit ctrUsuario;

interface

function Autenticar(const Alogin, ASenha : string) : Boolean;

implementation

uses
  System.SysUtils, DMUsuarios;

function Autenticar(const Alogin, ASenha : string) : Boolean;
begin
  Result := False;

  if (Trim(Alogin) = '') or (Trim(ASenha) = '') then
    Exit;

    Result := DM_Usuarios.BuscarLogin(Alogin, ASenha);
end;

end.
