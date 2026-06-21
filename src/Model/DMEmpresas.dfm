object DM_Empresas: TDM_Empresas
  Height = 480
  Width = 640
  object QEmpresasBuscar: TFDQuery
    Connection = DM_Conexao.Database
    SQL.Strings = (
      '')
    Left = 56
    Top = 56
  end
  object QEmpresaDelete: TFDQuery
    Connection = DM_Conexao.Database
    Left = 224
    Top = 56
  end
end
