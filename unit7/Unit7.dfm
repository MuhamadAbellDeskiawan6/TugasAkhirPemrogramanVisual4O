object Form7: TForm7
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 200
    Top = 48
    Width = 40
    Height = 13
    Caption = 'Id Siswa'
  end
  object Label2: TLabel
    Left = 200
    Top = 80
    Width = 33
    Height = 13
    Caption = 'Id Poin'
  end
  object Label3: TLabel
    Left = 200
    Top = 112
    Width = 61
    Height = 13
    Caption = 'Id Wali Kelas'
  end
  object Label4: TLabel
    Left = 200
    Top = 144
    Width = 64
    Height = 13
    Caption = 'Id Orang Tua'
  end
  object Label5: TLabel
    Left = 200
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Id Kelas'
  end
  object Label6: TLabel
    Left = 200
    Top = 224
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 200
    Top = 256
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label8: TLabel
    Left = 200
    Top = 288
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 200
    Top = 320
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label10: TLabel
    Left = 280
    Top = 200
    Width = 141
    Height = 13
    Caption = 'Format Tanggal : 12/02/2023'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 352
    Width = 897
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 280
    Top = 40
    Width = 145
    Height = 21
    DataField = 'id_siswa'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 280
    Top = 72
    Width = 145
    Height = 21
    DataField = 'id_poin'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 280
    Top = 104
    Width = 145
    Height = 21
    DataField = 'id_wali'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 280
    Top = 136
    Width = 145
    Height = 21
    DataField = 'id_ortu'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 280
    Top = 168
    Width = 145
    Height = 21
    DataField = 'id_kelas'
    DataSource = DataSource1
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 552
    Top = 56
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 552
    Top = 96
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 552
    Top = 136
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 552
    Top = 176
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 552
    Top = 216
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = BitBtn5Click
  end
  object DBEdit1: TDBEdit
    Left = 280
    Top = 280
    Width = 121
    Height = 21
    DataField = 'status'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit2: TDBEdit
    Left = 280
    Top = 312
    Width = 121
    Height = 21
    DataField = 'tingkat_kelas'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBComboBox1: TDBComboBox
    Left = 280
    Top = 248
    Width = 145
    Height = 21
    DataField = 'semester'
    DataSource = DataSource1
    ItemHeight = 13
    Items.Strings = (
      'ganjil'
      'genap')
    TabOrder = 13
  end
  object DBEdit3: TDBEdit
    Left = 280
    Top = 216
    Width = 134
    Height = 21
    DataField = 'tanggal'
    DataSource = DataSource1
    TabOrder = 14
  end
  object BitBtn6: TBitBtn
    Left = 552
    Top = 256
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 15
    OnClick = BitBtn6Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\uniska\SEMESTER 4\PEMROGRAMAN VISUAL 2\TugasAkhir\unit7\libmy' +
      'sql.dll'
    Left = 24
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_semester')
    Params = <>
    Left = 24
    Top = 64
    object ZQuery1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZQuery1siswa_id: TIntegerField
      FieldName = 'siswa_id'
    end
    object ZQuery1poin_id: TIntegerField
      FieldName = 'poin_id'
    end
    object ZQuery1wali_id: TIntegerField
      FieldName = 'wali_id'
    end
    object ZQuery1ortu_id: TIntegerField
      FieldName = 'ortu_id'
    end
    object ZQuery1kelas_id: TIntegerField
      FieldName = 'kelas_id'
    end
    object ZQuery1tanggal: TDateField
      FieldName = 'tanggal'
    end
    object ZQuery1semester: TStringField
      FieldName = 'semester'
      Size = 6
    end
    object ZQuery1status: TStringField
      FieldName = 'status'
    end
    object ZQuery1tingkat_kelas: TStringField
      FieldName = 'tingkat_kelas'
    end
    object ZQuery1id_siswa: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_siswa'
      LookupDataSet = ZQuery2
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'siswa_id'
      Lookup = True
    end
    object ZQuery1id_poin: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_poin'
      LookupDataSet = ZQuery3
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'poin_id'
      Lookup = True
    end
    object ZQuery1id_wali: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_wali'
      LookupDataSet = ZQuery4
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'wali_id'
      Lookup = True
    end
    object ZQuery1id_ortu: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_ortu'
      LookupDataSet = ZQuery5
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'ortu_id'
      Lookup = True
    end
    object ZQuery1id_kelas: TIntegerField
      FieldKind = fkLookup
      FieldName = 'id_kelas'
      LookupDataSet = ZQuery6
      LookupKeyFields = 'id'
      LookupResultField = 'id'
      KeyFields = 'kelas_id'
      Lookup = True
    end
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_siswa')
    Params = <>
    Left = 24
    Top = 112
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_poin')
    Params = <>
    Left = 24
    Top = 160
  end
  object ZQuery4: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_walikelas')
    Params = <>
    Left = 64
    Top = 64
  end
  object ZQuery5: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_ortu')
    Params = <>
    Left = 64
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 64
    Top = 16
  end
  object ZQuery6: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tabel_kelas')
    Params = <>
    Left = 64
    Top = 160
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 24
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45103.437133067100000000
    ReportOptions.LastChange = 45103.444562534720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 64
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 260.787570000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA SEMESTER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID POIN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID WALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID ORTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'SEMESTER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 672.756340000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TINGKAT KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 94.488250000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo12: TfrxMemoView
          Width = 37.795300000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 37.795300000000000000
          Width = 75.590600000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'siswa_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."siswa_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 113.385900000000000000
          Width = 75.590600000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'poin_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."poin_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Width = 75.590600000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'wali_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."wali_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 264.567100000000000000
          Width = 75.590600000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'ortu_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."ortu_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 340.157700000000000000
          Width = 79.370130000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'kelas_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kelas_id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 419.527830000000000000
          Width = 94.488250000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Width = 94.488250000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'semester'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."semester"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 608.504330000000000000
          Width = 64.252010000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 672.756340000000000000
          Width = 68.031540000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'tingkat_kelas'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tingkat_kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
