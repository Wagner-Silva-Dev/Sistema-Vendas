object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Sistema de Vendas'
  ClientHeight = 569
  ClientWidth = 953
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = Menu
  WindowState = wsMaximized
  TextHeight = 15
  object Menu: TMainMenu
    Left = 904
    Top = 8
    object Cadastros: TMenuItem
      Caption = 'Cadastros'
      object Empresas: TMenuItem
        Caption = 'Empresas'
      end
      object Cidades: TMenuItem
        Caption = 'Cidades'
      end
      object Clientes: TMenuItem
        Caption = 'Clientes'
      end
      object Fornecedores: TMenuItem
        Caption = 'Fornecedores'
      end
      object Fornecedores1: TMenuItem
        Caption = '-'
      end
      object SubGrupos: TMenuItem
        Caption = 'SubGrupos'
      end
      object Produtos: TMenuItem
        Caption = 'Produtos'
      end
    end
    object Movimentacoes: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Vendas: TMenuItem
        Caption = 'Vendas'
      end
      object Compras: TMenuItem
        Caption = 'Compras'
      end
    end
    object Movimentaes2: TMenuItem
      Caption = 'Financeiro'
      object ContasaReceber: TMenuItem
        Caption = 'Contas a Receber'
      end
      object ContasaPagar: TMenuItem
        Caption = 'Contas a pagar'
      end
    end
    object Utilitarios: TMenuItem
      Caption = 'Utilitarios'
      object Usuarios: TMenuItem
        Caption = 'Usuarios'
      end
    end
    object Configuracoes: TMenuItem
      Caption = 'Configura'#231#245'es'
    end
  end
end
