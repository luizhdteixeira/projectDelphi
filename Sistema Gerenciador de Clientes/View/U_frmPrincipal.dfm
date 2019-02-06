object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Anchors = [akBottom]
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'FrmPrincipal'
  ClientHeight = 478
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object PclGerenciador: TPageControl
    Left = 0
    Top = 0
    Width = 779
    Height = 478
    ActivePage = TbsManutencao
    Align = alClient
    TabOrder = 0
    object TbsListagem: TTabSheet
      Caption = 'Listagem'
      ExplicitTop = 24
      ExplicitHeight = 450
      object DbgListagem: TDBGrid
        Left = 0
        Top = 3
        Width = 768
        Height = 406
        DataSource = DS_clientes
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome'
            Width = 342
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sexo'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Width = 145
            Visible = True
          end>
      end
      object BtnIncluir: TButton
        Left = 3
        Top = 415
        Width = 102
        Height = 25
        Caption = 'Incluir'
        TabOrder = 1
      end
      object BtnEditar: TButton
        Left = 111
        Top = 415
        Width = 102
        Height = 25
        Caption = 'Editar'
        TabOrder = 2
      end
      object BtnExcluir: TButton
        Left = 219
        Top = 415
        Width = 102
        Height = 25
        Caption = 'Excluir'
        TabOrder = 3
      end
      object BtnRelatorio: TButton
        Left = 600
        Top = 415
        Width = 168
        Height = 26
        Caption = 'Imprimir Relat'#243'rio'
        TabOrder = 4
      end
    end
    object TbsManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object LblNome: TLabel
        Left = 16
        Top = 3
        Width = 46
        Height = 19
        Caption = 'Nome:'
      end
      object LblRG: TLabel
        Left = 496
        Top = 3
        Width = 25
        Height = 19
        Caption = 'RG:'
      end
      object LblCPF: TLabel
        Left = 632
        Top = 3
        Width = 33
        Height = 19
        Caption = 'CPF:'
      end
      object LblEnderecos: TLabel
        Left = 16
        Top = 135
        Width = 77
        Height = 19
        Caption = 'Endere'#231'os:'
      end
      object LblTelefones: TLabel
        Left = 16
        Top = 271
        Width = 73
        Height = 19
        Caption = 'Telefones:'
      end
      object EdtNome: TEdit
        Left = 16
        Top = 36
        Width = 289
        Height = 27
        TabOrder = 0
      end
      object RgpSexo: TRadioGroup
        Left = 344
        Top = 3
        Width = 113
        Height = 60
        Caption = 'Sexo:'
        Items.Strings = (
          'Masculino'
          'Feminino')
        TabOrder = 1
      end
      object MedtRG: TMaskEdit
        Left = 496
        Top = 36
        Width = 89
        Height = 27
        EditMask = '##.###.###-##;1;_'
        MaxLength = 13
        TabOrder = 2
        Text = '  .   .   -  '
      end
      object MedtCPF: TMaskEdit
        Left = 632
        Top = 36
        Width = 97
        Height = 27
        EditMask = '###.###.###-##;1;_'
        MaxLength = 14
        TabOrder = 3
        Text = '   .   .   -  '
      end
      object BtnSalvar: TButton
        Left = 32
        Top = 80
        Width = 129
        Height = 33
        Caption = 'Salvar'
        TabOrder = 4
      end
      object BtnCancelar: TButton
        Left = 159
        Top = 80
        Width = 129
        Height = 33
        Caption = 'Cancelar'
        TabOrder = 5
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 160
        Width = 649
        Height = 89
        TabOrder = 6
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endere'#231'o'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N'#186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Width = 83
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 296
        Width = 649
        Height = 89
        TabOrder = 7
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Width = 321
            Visible = True
          end>
      end
      object BbtnMais1: TBitBtn
        Left = 688
        Top = 160
        Width = 41
        Height = 25
        Caption = '+'
        TabOrder = 8
      end
      object BbtnMenos1: TBitBtn
        Left = 688
        Top = 191
        Width = 41
        Height = 25
        Caption = '-'
        TabOrder = 9
      end
      object BbtnMais2: TBitBtn
        Left = 688
        Top = 296
        Width = 41
        Height = 25
        Caption = '+'
        TabOrder = 10
      end
      object BbtnMenos2: TBitBtn
        Left = 688
        Top = 327
        Width = 41
        Height = 25
        Caption = '-'
        TabOrder = 11
      end
    end
    object TbsSistema: TTabSheet
      Caption = 'Sistema'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 22
      object LblSenhaNova: TLabel
        Left = 296
        Top = 175
        Width = 90
        Height = 19
        Caption = 'Nova Senha:'
      end
      object LblSenhaAtual: TLabel
        Left = 296
        Top = 103
        Width = 86
        Height = 19
        Caption = 'Senha Atual'
      end
      object BtnTrocarSenha: TButton
        Left = 328
        Top = 264
        Width = 123
        Height = 25
        Caption = 'Trocar Senha'
        TabOrder = 0
        OnClick = BtnTrocarSenhaClick
      end
      object EdtSenhaAtual: TEdit
        Left = 296
        Top = 128
        Width = 177
        Height = 27
        PasswordChar = '*'
        TabOrder = 1
      end
      object EdtNovaSenha: TEdit
        Left = 296
        Top = 200
        Width = 177
        Height = 27
        PasswordChar = '*'
        TabOrder = 2
      end
    end
  end
  object DS_clientes: TDataSource
    DataSet = DM_ControllerDados.CDS_clientes
    Left = 352
    Top = 392
  end
  object DS_acesso: TDataSource
    DataSet = DM_ControllerDados.CDS_acesso
    Left = 292
    Top = 390
  end
  object DS_telefone: TDataSource
    Left = 412
    Top = 390
  end
  object DS_endereco: TDataSource
    Left = 484
    Top = 390
  end
end
