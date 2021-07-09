object FEntriKembali: TFEntriKembali
  Left = 338
  Top = 187
  Width = 339
  Height = 204
  ActiveControl = dtpTglKembali
  Caption = 'FEntriKembali'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    323
    166)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 66
    Width = 49
    Height = 13
    Caption = 'Tgl Pinjam'
  end
  object Label1: TLabel
    Left = 12
    Top = 18
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 12
    Top = 42
    Width = 53
    Height = 13
    Caption = 'Judul Buku'
  end
  object Label4: TLabel
    Left = 12
    Top = 90
    Width = 55
    Height = 13
    Caption = 'Tgl Kembali'
  end
  object dtpTglPinjam: TDateTimePicker
    Left = 90
    Top = 66
    Width = 91
    Height = 21
    Date = 44386.571776446760000000
    Time = 44386.571776446760000000
    Enabled = False
    TabOrder = 0
  end
  object btnSimpan: TButton
    Left = 149
    Top = 126
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 233
    Top = 126
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Batal'
    TabOrder = 2
    OnClick = btnBatalClick
  end
  object edtId: TEdit
    Left = 90
    Top = 18
    Width = 43
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'edtId'
  end
  object edtJudul: TEdit
    Left = 90
    Top = 42
    Width = 217
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'edtJudul'
  end
  object dtpTglKembali: TDateTimePicker
    Left = 90
    Top = 90
    Width = 91
    Height = 21
    Date = 44386.571776446760000000
    Time = 44386.571776446760000000
    TabOrder = 5
  end
end
