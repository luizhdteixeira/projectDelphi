program Gerenciador;

uses
  Vcl.Forms,
  ufrmGerenciadorClientes in 'ufrmGerenciadorClientes.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  udtmConexao in '..\Controller\udtmConexao.pas' {dtmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.Run;
end.
