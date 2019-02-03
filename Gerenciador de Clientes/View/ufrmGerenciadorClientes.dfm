object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Clientes'
  ClientHeight = 360
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 360
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 732
    ExplicitHeight = 316
    object pclGerenciadorClientes: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 727
      Height = 352
      ActivePage = tbsSistema
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 724
      ExplicitHeight = 308
      object tbsListagem: TTabSheet
        Caption = 'Listagem'
        ExplicitWidth = 716
        ExplicitHeight = 280
        object dbgListagem: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 713
          Height = 318
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object btnIncluir: TButton
          AlignWithMargins = True
          Left = 35
          Top = 277
          Width = 110
          Height = 25
          Caption = 'Incluir'
          TabOrder = 1
          OnClick = btnIncluirClick
        end
        object btnEditar: TButton
          AlignWithMargins = True
          Left = 151
          Top = 277
          Width = 110
          Height = 25
          Caption = 'Editar'
          TabOrder = 2
        end
        object btnExcluir: TButton
          AlignWithMargins = True
          Left = 267
          Top = 277
          Width = 110
          Height = 25
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = btnExcluirClick
        end
        object btnImprimir: TButton
          AlignWithMargins = True
          Left = 580
          Top = 277
          Width = 110
          Height = 25
          Caption = 'Imprimir Relat'#243'rio'
          TabOrder = 4
        end
      end
      object tbsManutecao: TTabSheet
        Caption = 'Manute'#231#227'o'
        ImageIndex = 1
        ExplicitWidth = 716
        ExplicitHeight = 503
      end
      object tbsSistema: TTabSheet
        Caption = 'Sistema'
        ImageIndex = 2
        ExplicitWidth = 716
        ExplicitHeight = 503
      end
    end
  end
end
