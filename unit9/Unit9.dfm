object Form9: TForm9
  Left = 192
  Top = 152
  Width = 1044
  Height = 540
  Caption = 'Form9'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 24
    object FILE1: TMenuItem
      Caption = 'FILE'
      object FORMSISWA1: TMenuItem
        Caption = 'FORM SISWA'
        OnClick = FORMSISWA1Click
      end
      object FORMKELAS1: TMenuItem
        Caption = 'FORM KELAS'
        OnClick = FORMKELAS1Click
      end
      object FORMWALIKELAS1: TMenuItem
        Caption = 'FORM WALI KELAS'
        OnClick = FORMWALIKELAS1Click
      end
      object FORMPOIN1: TMenuItem
        Caption = 'FORM POIN'
        OnClick = FORMPOIN1Click
      end
      object FORMORANGTUA1: TMenuItem
        Caption = 'FORM ORANG TUA'
        OnClick = FORMORANGTUA1Click
      end
      object FORMHUBUNGAN1: TMenuItem
        Caption = 'FORM HUBUNGAN'
        OnClick = FORMHUBUNGAN1Click
      end
      object FORMSEMESTER1: TMenuItem
        Caption = 'FORM SEMESTER'
        OnClick = FORMSEMESTER1Click
      end
      object FORMUSER1: TMenuItem
        Caption = 'FORM USER'
        OnClick = FORMUSER1Click
      end
    end
    object KELUAR1: TMenuItem
      Caption = 'KELUAR'
      OnClick = KELUAR1Click
    end
  end
end
