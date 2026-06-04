object F_ConfiguraConexao: TF_ConfiguraConexao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Detectar IP e Configurar Banco de Dados'
  ClientHeight = 250
  ClientWidth = 590
  Color = clBtnFace
  CustomTitleBar.CaptionAlignment = taCenter
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 15
  object PN_Topo: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 684
    object Lbl_ConfiguraArquivo: TLabel
      AlignWithMargins = True
      Left = 9
      Top = 9
      Width = 572
      Height = 23
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      Caption = 
        'Esse procedimento serve para configurar a conex'#227'o com o Banco de' +
        ' Dados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 570
      ExplicitHeight = 21
    end
  end
  object PN_Rodape: TPanel
    Left = 0
    Top = 209
    Width = 590
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 215
    object Btn_Voltar: TBitBtn
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
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = Btn_VoltarClick
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object Btn_SalvarConexao: TBitBtn
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
      Caption = 'Criar Conex'#227'o'
      TabOrder = 0
      OnClick = Btn_SalvarConexaoClick
      ExplicitLeft = 157
      ExplicitTop = 5
      ExplicitHeight = 31
    end
  end
  object PN_Principal: TPanel
    Left = 0
    Top = 41
    Width = 590
    Height = 168
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 684
    DesignSize = (
      590
      168)
    object Lbl_IP: TLabel
      Left = 25
      Top = 8
      Width = 118
      Height = 21
      Caption = 'IP da M'#225'quina: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_Porta: TLabel
      Left = 94
      Top = 35
      Width = 49
      Height = 21
      Caption = 'Porta: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_BancoDados: TLabel
      Left = 13
      Top = 62
      Width = 130
      Height = 21
      Caption = 'Banco de Dados: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_Usuario: TLabel
      Left = 76
      Top = 93
      Width = 67
      Height = 21
      Caption = 'Usu'#225'rio: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_Senha: TLabel
      Left = 88
      Top = 120
      Width = 55
      Height = 21
      Caption = 'Senha: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EDT_IP: TEdit
      Left = 149
      Top = 6
      Width = 400
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
    end
    object EDT_Porta: TEdit
      Left = 149
      Top = 35
      Width = 400
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
    end
    object EDT_BancoDados: TEdit
      Left = 149
      Top = 64
      Width = 400
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
    end
    object EDT_Usuario: TEdit
      Left = 149
      Top = 93
      Width = 400
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
    end
    object EDT_Senha: TEdit
      Left = 149
      Top = 122
      Width = 400
      Height = 23
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 4
    end
  end
end
