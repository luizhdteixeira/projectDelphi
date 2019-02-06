program Gerenciador;

uses
  Vcl.Forms,
  U_frmLogin in 'View\U_frmLogin.pas' {FrmLogin},
  Vcl.Themes,
  Vcl.Styles,
  U_ControllerDados in 'Controller\U_ControllerDados.pas' {DM_ControllerDados: TDataModule},
  U_ModelFuncao in 'Model\U_ModelFuncao.pas',
  U_ModelAcessar in 'Model\U_ModelAcessar.pas',
  U_frmPrincipal in 'View\U_frmPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDM_ControllerDados, DM_ControllerDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
