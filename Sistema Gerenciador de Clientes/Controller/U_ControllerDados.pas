unit U_ControllerDados;

interface

uses
  System.SysUtils, System.Classes, DbxDevartMySql, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDM_ControllerDados = class(TDataModule)
    SQLConnection: TSQLConnection;
    SQL_endereco: TSQLQuery;
    SQLDS_clientes: TSQLDataSet;
    DSP_clientes: TDataSetProvider;
    CDS_clientes: TClientDataSet;
    CDS_clientescpcliente: TIntegerField;
    CDS_clientesnomecliente: TWideStringField;
    CDS_clientessexocliente: TWideStringField;
    CDS_clientesrgcliente: TWideStringField;
    CDS_clientescpfcliente: TWideStringField;
    CDS_endereco: TClientDataSet;
    DSP_endereco: TDataSetProvider;
    DSP_telefone: TDataSetProvider;
    DSP_acesso: TDataSetProvider;
    CDS_telefone: TClientDataSet;
    CDS_acesso: TClientDataSet;
    SQL_telefone: TSQLQuery;
    SQL_acesso: TSQLQuery;
    SQL_tipotelefone: TSQLQuery;
    SQL_tipoendereco: TSQLQuery;
    DSP_tipotelefone: TDataSetProvider;
    DSP_tipoendereco: TDataSetProvider;
    CDS_tipotelefone: TClientDataSet;
    CDS_tipoendereco: TClientDataSet;
    CDS_acessocpcodacesso: TIntegerField;
    CDS_acessosenha: TWideStringField;
    CDS_telefonecpcodendcliente: TIntegerField;
    CDS_telefonecetipoendereco: TIntegerField;
    CDS_telefonelogradouro: TWideStringField;
    CDS_telefonenumeroendereco: TIntegerField;
    CDS_telefonecep: TWideStringField;
    CDS_enderecocpcodtelefonecliente: TIntegerField;
    CDS_enderecocetipotelefonecliente: TIntegerField;
    CDS_enderecotelfixo: TWideStringField;
    CDS_enderecotelmovel: TWideStringField;
    CDS_enderecotelcomercial: TWideStringField;
    CDS_enderecotelrecado: TWideStringField;
    CDS_tipotelefonecptipotelefone: TIntegerField;
    CDS_tipotelefonetipotelefone: TWideStringField;
    CDS_tipoenderecocpcodtipoendereco: TIntegerField;
    CDS_tipoenderecotipoendereco: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_ControllerDados: TDM_ControllerDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
