object DM_ControllerDados: TDM_ControllerDados
  OldCreateOrder = False
  Height = 465
  Width = 492
  object SQLConnection: TSQLConnection
    ConnectionName = 'Devart MySQL'
    DriverName = 'DevartMySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DbxDevartMySql'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver240.' +
        'bpl'
      
        'MetaDataPackageLoader=TDBXDevartMySqlMetaDataCommandFactory,DbxD' +
        'evartMySqlDriver240.bpl'
      'ProductName=DevartMySQL'
      'GetDriverFunc=getSQLDriverMySQL'
      'LibraryName=dbexpmda40.dll'
      'VendorLib=libmysql.dll'
      'MaxBlobSize=-1'
      'UseUnicode=True'
      'BlobSize=-1'
      'HostName=localhost'
      'Database=mycliente'
      'DriverName=DevartMySQL'
      'User_Name=root'
      'Password=1234'
      'FetchAll=True'
      'EnableBoolean=False'
      'IPVersion=IPv4')
    Connected = True
    Left = 40
    Top = 24
  end
  object SQL_endereco: TSQLQuery
    SchemaName = 'mycliente'
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CPCODTELEFONECLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'T.*'
      'FROM'
      'TELEFONECLIENTE T'
      'INNER JOIN CLIENTES C'
      'ON (T.CPCODTELEFONECLIENTE=C.CETELEFONECLIENTE)'
      'WHERE'
      'T.CPCODTELEFONECLIENTE= :CPCODTELEFONECLIENTE')
    SQLConnection = SQLConnection
    Left = 120
    Top = 88
  end
  object SQLDS_clientes: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT'#13#10'cpcliente,'#13#10'nomecliente,'#13#10'sexocliente,'#13#10'rgcliente,'#13#10'cpfc' +
      'liente'#13#10'FROM clientes ORDER BY cpcliente;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 120
    Top = 24
  end
  object DSP_clientes: TDataSetProvider
    DataSet = SQLDS_clientes
    Left = 224
    Top = 24
  end
  object CDS_clientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_clientes'
    Left = 336
    Top = 24
    object CDS_clientescpcliente: TIntegerField
      FieldName = 'cpcliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDS_clientesnomecliente: TWideStringField
      FieldName = 'nomecliente'
      Size = 100
    end
    object CDS_clientessexocliente: TWideStringField
      FieldName = 'sexocliente'
      Size = 2
    end
    object CDS_clientesrgcliente: TWideStringField
      FieldName = 'rgcliente'
      Size = 12
    end
    object CDS_clientescpfcliente: TWideStringField
      FieldName = 'cpfcliente'
      Size = 14
    end
  end
  object CDS_endereco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_endereco'
    Left = 336
    Top = 88
    object CDS_enderecocpcodtelefonecliente: TIntegerField
      FieldName = 'cpcodtelefonecliente'
    end
    object CDS_enderecocetipotelefonecliente: TIntegerField
      FieldName = 'cetipotelefonecliente'
    end
    object CDS_enderecotelfixo: TWideStringField
      FieldName = 'telfixo'
      Size = 13
    end
    object CDS_enderecotelmovel: TWideStringField
      FieldName = 'telmovel'
      Size = 14
    end
    object CDS_enderecotelcomercial: TWideStringField
      FieldName = 'telcomercial'
      Size = 13
    end
    object CDS_enderecotelrecado: TWideStringField
      FieldName = 'telrecado'
      Size = 14
    end
  end
  object DSP_endereco: TDataSetProvider
    DataSet = SQL_endereco
    Left = 224
    Top = 88
  end
  object DSP_telefone: TDataSetProvider
    DataSet = SQL_telefone
    Left = 224
    Top = 152
  end
  object DSP_acesso: TDataSetProvider
    DataSet = SQL_acesso
    Left = 224
    Top = 216
  end
  object CDS_telefone: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_telefone'
    Left = 336
    Top = 152
    object CDS_telefonecpcodendcliente: TIntegerField
      FieldName = 'cpcodendcliente'
    end
    object CDS_telefonecetipoendereco: TIntegerField
      FieldName = 'cetipoendereco'
    end
    object CDS_telefonelogradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 100
    end
    object CDS_telefonenumeroendereco: TIntegerField
      FieldName = 'numeroendereco'
    end
    object CDS_telefonecep: TWideStringField
      FieldName = 'cep'
      Size = 9
    end
  end
  object CDS_acesso: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_acesso'
    Left = 336
    Top = 216
    object CDS_acessocpcodacesso: TIntegerField
      FieldName = 'cpcodacesso'
    end
    object CDS_acessosenha: TWideStringField
      FieldName = 'senha'
      Size = 255
    end
  end
  object SQL_telefone: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'CPCODENDCLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'E.*'
      'FROM'
      'ENDERECOCLIENTE E'
      'INNER JOIN CLIENTES C'
      'ON (E.CPCODENDCLIENTE=C.CEENDERECOCLIENTE)'
      'WHERE'
      'E.CPCODENDCLIENTE = :CPCODENDCLIENTE')
    SQLConnection = SQLConnection
    Left = 120
    Top = 152
  end
  object SQL_acesso: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'SENHA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '* FROM'
      'ACESSO'
      'WHERE'
      'SENHA= :SENHA')
    SQLConnection = SQLConnection
    Left = 120
    Top = 216
  end
  object SQL_tipotelefone: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'cetipotelefone'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  TT.*'
      'FROM tipotelefone TT'
      '  INNER JOIN telefonecliente TC'
      '    ON TT.cptipotelefone = TC.cetipotelefonecliente'
      'WHERE TT.cptipotelefone = :cetipotelefone;')
    SQLConnection = SQLConnection
    Left = 120
    Top = 280
  end
  object SQL_tipoendereco: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'cpcodtipoendereco'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  TE.*'
      'FROM tipoendereco TE'
      '  INNER JOIN enderecocliente EC'
      '    ON (TE.cpcodtipoendereco=EC.cetipoendereco)'
      'WHERE TE.cpcodtipoendereco = :cpcodtipoendereco;')
    SQLConnection = SQLConnection
    Left = 120
    Top = 352
  end
  object DSP_tipotelefone: TDataSetProvider
    DataSet = SQL_tipotelefone
    Left = 224
    Top = 280
  end
  object DSP_tipoendereco: TDataSetProvider
    DataSet = SQL_tipoendereco
    Left = 224
    Top = 352
  end
  object CDS_tipotelefone: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_tipotelefone'
    Left = 336
    Top = 280
    object CDS_tipotelefonecptipotelefone: TIntegerField
      FieldName = 'cptipotelefone'
    end
    object CDS_tipotelefonetipotelefone: TWideStringField
      FieldName = 'tipotelefone'
    end
  end
  object CDS_tipoendereco: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_tipoendereco'
    Left = 336
    Top = 352
    object CDS_tipoenderecocpcodtipoendereco: TIntegerField
      FieldName = 'cpcodtipoendereco'
    end
    object CDS_tipoenderecotipoendereco: TWideStringField
      FieldName = 'tipoendereco'
    end
  end
end
