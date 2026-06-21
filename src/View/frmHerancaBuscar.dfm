object F_HerancaBuscar: TF_HerancaBuscar
  Left = 0
  Top = 0
  Caption = 'Busca de '
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object PN_Topo: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Lbl_Pesquisa: TLabel
      Left = 19
      Top = 12
      Width = 93
      Height = 17
      Caption = 'Pesquisar por: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EDT_Buscar: TEdit
      AlignWithMargins = True
      Left = 15
      Top = 37
      Width = 754
      Height = 23
      Margins.Left = 15
      Margins.Top = 5
      Margins.Right = 15
      Margins.Bottom = 5
      Align = alBottom
      TabOrder = 0
      OnChange = EDT_BuscarChange
      OnKeyDown = EDT_BuscarKeyDown
      OnKeyPress = EDT_BuscarKeyPress
    end
  end
  object PN_Rodape: TPanel
    Left = 0
    Top = 461
    Width = 784
    Height = 100
    Align = alBottom
    TabOrder = 2
    object PN_RTopo: TPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 30
      Align = alTop
      TabOrder = 0
      object Lbl_Registros: TLabel
        AlignWithMargins = True
        Left = 582
        Top = 4
        Width = 189
        Height = 22
        Margins.Right = 10
        Align = alRight
        Caption = 'Registros encontrados : 000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitHeight = 17
      end
    end
    object RDG_Buscar: TRadioGroup
      Left = 1
      Top = 31
      Width = 320
      Height = 68
      Align = alLeft
      Caption = 'Buscar por: '
      TabOrder = 1
      OnClick = RDG_BuscarClick
    end
    object Btn_Cadastrar: TBitBtn
      AlignWithMargins = True
      Left = 331
      Top = 46
      Width = 100
      Height = 38
      Margins.Left = 10
      Margins.Top = 15
      Margins.Bottom = 15
      Align = alLeft
      Caption = 'Cadastrar'
      TabOrder = 2
    end
    object Btn_Alterar: TBitBtn
      AlignWithMargins = True
      Left = 437
      Top = 46
      Width = 100
      Height = 38
      Margins.Top = 15
      Margins.Bottom = 15
      Align = alLeft
      Caption = 'Alterar'
      TabOrder = 3
      OnClick = Btn_AlterarClick
    end
    object Btn_Excluir: TBitBtn
      AlignWithMargins = True
      Left = 543
      Top = 46
      Width = 100
      Height = 38
      Margins.Top = 15
      Margins.Bottom = 15
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = ExcluirClick
    end
    object Btn_Sair: TBitBtn
      AlignWithMargins = True
      Left = 649
      Top = 46
      Width = 100
      Height = 38
      Margins.Top = 15
      Margins.Bottom = 15
      Align = alLeft
      Caption = 'Sair'
      TabOrder = 5
      OnClick = Btn_SairClick
    end
  end
  object PN_Principal: TPanel
    Left = 0
    Top = 65
    Width = 784
    Height = 396
    Align = alClient
    TabOrder = 1
    object DBG_Buscar: TDBGrid
      Left = 1
      Top = 1
      Width = 782
      Height = 394
      Align = alClient
      DataSource = DS_Resultado
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = DBG_BuscarDblClick
      OnKeyPress = DBG_BuscarKeyPress
    end
  end
  object DS_Resultado: TDataSource
    Left = 40
    Top = 113
  end
  object PopupMenu: TPopupMenu
    Left = 136
    Top = 121
    object Atualizar: TMenuItem
      Caption = 'Atualizar'
      OnClick = AtualizarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluir: TMenuItem
      Caption = 'Excluir'
      OnClick = ExcluirClick
    end
  end
end
