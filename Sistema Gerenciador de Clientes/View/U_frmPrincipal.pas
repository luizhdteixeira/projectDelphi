unit U_frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  frxClass, frxDBSet, Datasnap.DBClient, Data.FMTBcd, Data.SqlExpr,
  Datasnap.Provider,frxUtils, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    PclGerenciador: TPageControl;
    TbsListagem: TTabSheet;
    TbsManutencao: TTabSheet;
    TbsSistema: TTabSheet;
    DbgListagem: TDBGrid;
    BtnIncluir: TButton;
    BtnEditar: TButton;
    BtnExcluir: TButton;
    BtnRelatorio: TButton;
    LblNome: TLabel;
    EdtNome: TEdit;
    RgpSexo: TRadioGroup;
    MedtRG: TMaskEdit;
    MedtCPF: TMaskEdit;
    LblRG: TLabel;
    LblCPF: TLabel;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BbtnMais1: TBitBtn;
    BbtnMenos1: TBitBtn;
    BbtnMais2: TBitBtn;
    BbtnMenos2: TBitBtn;
    LblEnderecos: TLabel;
    LblTelefones: TLabel;
    BtnTrocarSenha: TButton;
    DS_clientes: TDataSource;
    EdtSenhaAtual: TEdit;
    EdtNovaSenha: TEdit;
    LblSenhaNova: TLabel;
    LblSenhaAtual: TLabel;
    DS_acesso: TDataSource;
    DS_telefone: TDataSource;
    DS_endereco: TDataSource;
    procedure BtnTrocarSenhaClick(Sender: TObject);
  private
    CDS_acesso: TClientDataSet;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Datasnap.DBClient, U_ControllerDados;

{$R *.dfm}

//Bot�o trocar senha
procedure TFrmPrincipal.BtnTrocarSenhaClick(Sender: TObject);
begin
  if EdtSenhaAtual.Text = '' then
  begin
    Application.MessageBox('Informe a senha do usu�rio que deseja Alterar!','Aten��o',0+48);
    EdtSenhaAtual.SetFocus;
    Abort;
  end;

  if EdtNovaSenha.Text = '' then
  begin
    Application.MessageBox('Informe a senha nova!','Aten��o',0+48);
    EdtNovaSenha.SetFocus;
    Abort;
  end;

    with DM_ControllerDados do
    begin
      CDS_acesso.Close;
      CDS_acesso.ParamByName('SENHA').AsString := EdtSenhaAtual.Text;
      CDS_acesso.Open;
    end;

    if not DM_ControllerDados.CDS_acesso.IsEmpty then
    begin
      try
          DM_ControllerDados.CDS_acesso.Edit;
          DM_ControllerDados.CDS_acessosenha.AsString := trim(EdtNovaSenha.Text);
          TClientDataSet(CDS_acesso.Data).Post;
          TClientDataSet(CDS_acesso.Data).ApplyUpdates(0);

          Application.MessageBox('Senha Alterada com sucesso!','Aten��o',MB_OK+MB_ICONINFORMATION);

          EdtSenhaAtual.Clear;
          EdtNovaSenha.Clear;
      except on E: Exception do
          raise Exception.Create('Erro ao Alterar'+E.Message);
      end;
    end
    else
    begin
      Application.MessageBox('Senha atual inv�lida!','Aten��o',MB_OK+MB_ICONWARNING);
      EdtSenhaAtual.Clear;
      EdtSenhaAtual.SetFocus;
      Abort;
    end;
end;

end.