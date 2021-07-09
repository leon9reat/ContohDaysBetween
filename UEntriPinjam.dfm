object FEntriPinjam: TFEntriPinjam
  Left = 613
  Top = 222
  Width = 342
  Height = 182
  ActiveControl = edtJudul
  Caption = 'FEntriPinjam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    326
    144)
  PixelsPerInch = 96
  TextHeight = 13
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
  object Label3: TLabel
    Left = 12
    Top = 66
    Width = 49
    Height = 13
    Caption = 'Tgl Pinjam'
  end
  object edtId: TEdit
    Left = 90
    Top = 18
    Width = 43
    Height = 21
    TabOrder = 0
    Text = 'edtId'
  end
  object edtJudul: TEdit
    Left = 90
    Top = 42
    Width = 217
    Height = 21
    TabOrder = 1
    Text = 'edtJudul'
  end
  object dtpTglPinjam: TDateTimePicker
    Left = 90
    Top = 66
    Width = 91
    Height = 21
    Date = 44386.571776446760000000
    Time = 44386.571776446760000000
    TabOrder = 2
  end
  object btnSimpan: TButton
    Left = 150
    Top = 108
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 234
    Top = 108
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btnBatalClick
  end
end
