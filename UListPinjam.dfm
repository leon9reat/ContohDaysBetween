object FListPinjam: TFListPinjam
  Left = 239
  Top = 123
  Width = 644
  Height = 255
  Caption = 'FListPinjam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 18
    Top = 12
    Width = 589
    Height = 150
    Columns = <
      item
        Caption = 'ID'
      end
      item
        Caption = 'Judul Buku'
        Width = 200
      end
      item
        Caption = 'Pinjam'
        Width = 100
      end
      item
        Caption = 'Kembali'
        Width = 100
      end
      item
        Caption = 'Terlambat'
      end
      item
        Caption = 'Denda'
        Width = 80
      end>
    Items.Data = {
      560000000300000000000000FFFFFFFFFFFFFFFF030000000000000001610162
      0163016400000000FFFFFFFFFFFFFFFF0000000000000000013200000000FFFF
      FFFFFFFFFFFF00000000000000000133FFFFFFFFFFFF}
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object btnPinjam: TButton
    Left = 18
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Pinjam'
    TabOrder = 1
    OnClick = btnPinjamClick
  end
  object btnKembali: TButton
    Left = 102
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 2
    OnClick = btnKembaliClick
  end
end
