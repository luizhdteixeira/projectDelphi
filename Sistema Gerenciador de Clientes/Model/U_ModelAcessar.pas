unit U_ModelAcessar;

interface

type
    TAcessar = class
      private
        fSenha : String;
      public
        property Senha: String read fSenha write fSenha;

        function Logar: boolean;
    end;

implementation

uses
  Data.SqlExpr, U_ControllerDados;

  function TAcessar.Logar: boolean;
    begin
        with TSQLQuery.Create(nil) do
        try
          SQLConnection := DM_ControllerDados.SQLConnection;
          sql.Clear;
          sql.Add('SELECT CPCODACESSO FROM ACESSO WHERE SENHA = :SENHA');
          Params[0].AsString := fSenha;
          Open;
          result := Fields[0].AsInteger > 0;
        finally
          Close;
          Free;
        end;
    end;

end.
