object DM_Conexao: TDM_Conexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object Database: TFDConnection
    Params.Strings = (
      'DriverID=MySQL'
      'User_Name=root')
    Left = 64
    Top = 56
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 400
    Top = 136
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 80
  end
end
