object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gerenciador de Clientes'
  ClientHeight = 525
  ClientWidth = 760
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
  object Label1: TLabel
    Left = 32
    Top = 295
    Width = 69
    Height = 19
    Caption = 'Endere'#231'o:'
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 525
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 756
    ExplicitHeight = 456
    object pclGerenciadorClientes: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 752
      Height = 489
      ActivePage = tbsListagem
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 748
      ExplicitHeight = 407
      object tbsListagem: TTabSheet
        Caption = 'Listagem'
        ExplicitTop = 24
        ExplicitWidth = 740
        ExplicitHeight = 380
        DesignSize = (
          744
          455)
        object dbgListagem: TDBGrid
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 738
          Height = 408
          Anchors = [akLeft, akTop, akRight]
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
              Width = 286
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Sexo'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Width = 155
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Width = 175
              Visible = True
            end>
        end
        object btnIncluir: TButton
          AlignWithMargins = True
          Left = 3
          Top = 427
          Width = 110
          Height = 25
          Anchors = [akBottom]
          Caption = 'Incluir'
          TabOrder = 1
          OnClick = btnIncluirClick
          ExplicitTop = 351
        end
        object btnEditar: TButton
          AlignWithMargins = True
          Left = 120
          Top = 427
          Width = 110
          Height = 25
          Anchors = [akBottom]
          Caption = 'Editar'
          TabOrder = 2
          ExplicitLeft = 119
          ExplicitTop = 351
        end
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 237
          Top = 427
          Width = 110
          Height = 25
          Anchors = [akBottom]
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = btnExcluirClick
          ExplicitLeft = 235
          ExplicitTop = 351
        end
        object btnImprimir: TButton
          AlignWithMargins = True
          Left = 584
          Top = 427
          Width = 157
          Height = 25
          Anchors = [akBottom]
          Caption = 'Imprimir Relat'#243'rio'
          TabOrder = 4
          ExplicitTop = 414
        end
      end
      object tbsManutecao: TTabSheet
        Caption = 'Manute'#231#227'o'
        ImageIndex = 1
        ExplicitLeft = 12
        ExplicitTop = 31
        ExplicitWidth = 740
        ExplicitHeight = 373
        object lblNome: TLabel
          Left = 24
          Top = 8
          Width = 46
          Height = 19
          Caption = 'Nome:'
        end
        object lblRG: TLabel
          Left = 504
          Top = 8
          Width = 25
          Height = 19
          Caption = 'RG:'
        end
        object lblCPF: TLabel
          Left = 616
          Top = 8
          Width = 33
          Height = 19
          Caption = 'CPF:'
        end
        object lblEndereco: TLabel
          Left = 24
          Top = 127
          Width = 69
          Height = 19
          Caption = 'Endere'#231'o:'
        end
        object lblTelefone: TLabel
          Left = 24
          Top = 271
          Width = 65
          Height = 19
          Caption = 'Telefone:'
        end
        object EdtNome: TEdit
          Left = 24
          Top = 33
          Width = 297
          Height = 27
          TabOrder = 0
        end
        object rdgpSexo: TRadioGroup
          Left = 344
          Top = 3
          Width = 121
          Height = 70
          Caption = 'Sexo:'
          Items.Strings = (
            'Masculino'
            'Feminino')
          TabOrder = 1
        end
        object mkedtRG: TMaskEdit
          Left = 504
          Top = 38
          Width = 89
          Height = 27
          EditMask = '##.###.###-##;1;_'
          MaxLength = 13
          TabOrder = 2
          Text = '  .   .   -  '
        end
        object mkedtCPF: TMaskEdit
          Left = 616
          Top = 38
          Width = 97
          Height = 27
          EditMask = '###.###.###-##;1;_'
          MaxLength = 14
          TabOrder = 3
          Text = '   .   .   -  '
        end
        object btnSalvar: TButton
          Left = 32
          Top = 79
          Width = 121
          Height = 33
          Caption = 'Salvar'
          TabOrder = 4
        end
        object btnCancelar: TButton
          Left = 192
          Top = 79
          Width = 121
          Height = 33
          Caption = 'Cancelar'
          TabOrder = 5
        end
        object dbgEndereco: TDBGrid
          Left = 24
          Top = 152
          Width = 625
          Height = 105
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
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Endere'#231'o'
              Width = 180
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
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP'
              Width = 130
              Visible = True
            end>
        end
        object dbgTelefone: TDBGrid
          Left = 24
          Top = 304
          Width = 625
          Height = 105
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
              Width = 296
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Telefone'
              Width = 312
              Visible = True
            end>
        end
        object bnbtnMais1: TBitBtn
          Left = 663
          Top = 152
          Width = 50
          Height = 25
          Caption = '+'
          TabOrder = 8
        end
        object btbtnMenos1: TBitBtn
          Left = 663
          Top = 183
          Width = 50
          Height = 25
          Caption = '-'
          TabOrder = 9
        end
        object btbtnMais2: TBitBtn
          Left = 663
          Top = 304
          Width = 50
          Height = 25
          Caption = '+'
          TabOrder = 10
        end
        object btbtnMenos2: TBitBtn
          Left = 663
          Top = 335
          Width = 50
          Height = 25
          Caption = '-'
          TabOrder = 11
        end
      end
      object tbsSistema: TTabSheet
        Caption = 'Sistema'
        ImageIndex = 2
        ExplicitTop = 24
        ExplicitWidth = 740
        ExplicitHeight = 420
        object lblSenhaAtual: TLabel
          Left = 304
          Top = 88
          Width = 90
          Height = 19
          Caption = 'Senha Atual:'
        end
        object lblNovaSenha: TLabel
          Left = 304
          Top = 160
          Width = 90
          Height = 19
          Caption = 'Nova Senha:'
        end
        object btnTrocarSenha: TButton
          Left = 312
          Top = 235
          Width = 137
          Height = 37
          Caption = 'Trocar Senha'
          TabOrder = 0
        end
        object edtSenhaAtual: TEdit
          Left = 304
          Top = 113
          Width = 153
          Height = 27
          PasswordChar = '*'
          TabOrder = 1
        end
        object edtNovaSenha: TEdit
          Left = 304
          Top = 185
          Width = 153
          Height = 27
          TabOrder = 2
        end
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 496
      Width = 758
      Height = 28
      Align = alBottom
      TabOrder = 1
    end
  end
end
