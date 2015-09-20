object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Parol'#259
  ClientHeight = 104
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 36
    Top = 16
    Width = 223
    Height = 16
    Caption = 'Introduce'#355'i parola in c'#226'mpul de mai jos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 36
    Top = 38
    Width = 223
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    TextHint = 'Parola uitilizatorului...'
  end
  object Button1: TButton
    Left = 36
    Top = 65
    Width = 223
    Height = 25
    Caption = 'Login'
    TabOrder = 1
    OnClick = Button1Click
  end
end
