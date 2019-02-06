unit U_frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, U_ModelAcessar;

type
  TFrmLogin = class(TForm)
    EdtSenha: TEdit;
    BtnEntrar: TButton;
    ImgSuperior: TImage;
    PnlLogin: TPanel;
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Acesso;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
     Acesso;
end;

// Processo para acessar - Login
procedure TFrmLogin.Acesso;
var
  Acessar: TAcessar;

begin
  if (Trim(EdtSenha.Text) = '') then
  begin
    Application.MessageBox('Insira uma senha!', 'Atenção',
      MB_OK + MB_ICONWARNING);
    EdtSenha.SetFocus;
    abort;
  end;

  Acessar := TAcessar.Create;
  try
    Acessar.Senha := Trim(EdtSenha.Text);
    if Acessar.Logar then
    begin
      FrmLogin.Visible := false;
    end
    else
    begin
      Application.MessageBox('Senha inválida!', 'Atenção',
        MB_OK + MB_ICONWARNING);
      EdtSenha.Clear;
      EdtSenha.SetFocus;
      abort;
    end;
  finally
    FreeAndNil(Acessar);
  end;
end;

end.
