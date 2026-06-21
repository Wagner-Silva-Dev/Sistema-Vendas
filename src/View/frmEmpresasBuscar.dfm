inherited F_EmpresaBuscar: TF_EmpresaBuscar
  Caption = 'Buscar Empresa'
  StyleElements = [seFont, seClient, seBorder]
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited PN_Topo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Lbl_Pesquisa: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited EDT_Buscar: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited PN_Rodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited PN_RTopo: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited Lbl_Registros: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited RDG_Buscar: TRadioGroup
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Raz'#227'o Social (F1)'
        'Nome Fantasia (F2)'
        'CNPJ (F3)')
    end
  end
  inherited PN_Principal: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited DBG_Buscar: TDBGrid
      PopupMenu = PopupMenu
      Columns = <
        item
          Expanded = False
          FieldName = 'nome_fantasia'
          Title.Caption = 'Nome Fantasia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razao_social'
          Title.Caption = 'Raz'#227'o Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj'
          Title.Caption = 'CNPJ'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telefone'
          Title.Caption = 'Telefone'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cep'
          Title.Caption = 'CEP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Caption = 'UF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end>
    end
  end
  inherited DS_Resultado: TDataSource
    DataSet = DM_Empresas.QEmpresasBuscar
  end
  inherited PopupMenu: TPopupMenu
    Left = 128
    Top = 113
  end
end
