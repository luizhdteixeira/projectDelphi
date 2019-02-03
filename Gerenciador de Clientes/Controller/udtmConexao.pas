unit udtmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL;

type
  TdtmConexao = class(TDataModule)
    SQLConnection1: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmConexao: TdtmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
