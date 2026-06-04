object F_ConexaoErro: TF_ConexaoErro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Erro ao conectar ao banco de dados'
  ClientHeight = 200
  ClientWidth = 600
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taRightJustify
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object PN_Principal: TPanel
    Left = 0
    Top = 41
    Width = 600
    Height = 118
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Lbl_MensagemErroDatabase: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 594
      Height = 112
      Align = alClient
      AutoSize = False
      Caption = 'Mensagem de erro ao conectar com o banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 5
      ExplicitTop = 6
      ExplicitWidth = 592
      ExplicitHeight = 110
    end
  end
  object PN_Rodape: TPanel
    Left = 0
    Top = 159
    Width = 600
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Btn_ConfiguraConexao: TBitBtn
      AlignWithMargins = True
      Left = 308
      Top = 4
      Width = 144
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Configurar Conex'#227'o'
      TabOrder = 0
      OnClick = Btn_ConfiguraConexaoClick
      ExplicitLeft = 309
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object Btn_TentarNovamente: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 144
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Tentar Novamente'
      TabOrder = 1
      OnClick = Btn_TentarNovamenteClick
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object Btn_FecharSistema: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 4
      Width = 144
      Height = 33
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alLeft
      Caption = 'Fechar Sistema'
      TabOrder = 2
      OnClick = Btn_FecharSistemaClick
      ExplicitLeft = 157
      ExplicitTop = 5
      ExplicitHeight = 31
    end
  end
  object PN_Topo: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    TabOrder = 2
    object Lbl_MensagemErro: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 592
      Height = 25
      Align = alTop
      Caption = 'ERRO AO CONECTAR AO BANCO DE DADOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 386
    end
  end
end
