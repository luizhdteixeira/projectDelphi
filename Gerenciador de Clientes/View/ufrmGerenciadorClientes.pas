unit ufrmGerenciadorClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    pnlPrincipal: TPanel;
    pclGerenciadorClientes: TPageControl;
    tbsListagem: TTabSheet;
    tbsManutecao: TTabSheet;
    tbsSistema: TTabSheet;
    dbgListagem: TDBGrid;
    btnIncluir: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnImprimir: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
//
end;

procedure TForm1.btnIncluirClick(Sender: TObject);
begin
//
end;

end.
