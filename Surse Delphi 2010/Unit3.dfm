object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Ad'#259'ugare/Rezolvare'
  ClientHeight = 414
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 184
    Top = 41
    Width = 149
    Height = 24
    Caption = 'Creaz'#259' test nou'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Image1: TImage
    Left = 311
    Top = 121
    Width = 177
    Height = 163
    Proportional = True
  end
  object Label1: TLabel
    Left = 48
    Top = 121
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 400
    Top = 104
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object cian: TLabel
    Left = 25
    Top = 290
    Width = 70
    Height = 16
    Caption = 'Test curent:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 101
    Top = 292
    Width = 3
    Height = 13
  end
  object variabil: TLabel
    Left = 355
    Top = 102
    Width = 39
    Height = 13
    Caption = 'punctaj '
    Visible = False
  end
  object total: TLabel
    Left = 409
    Top = 102
    Width = 3
    Height = 13
    Visible = False
  end
  object CheckBox1: TCheckBox
    Left = 48
    Top = 176
    Width = 257
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 0
    Visible = False
  end
  object CheckBox2: TCheckBox
    Left = 48
    Top = 208
    Width = 257
    Height = 17
    Caption = 'CheckBox2'
    TabOrder = 1
    Visible = False
  end
  object CheckBox3: TCheckBox
    Left = 48
    Top = 240
    Width = 257
    Height = 17
    Caption = 'CheckBox3'
    TabOrder = 2
    Visible = False
  end
  object Edit2: TEdit
    Left = 135
    Top = 22
    Width = 257
    Height = 21
    TabOrder = 3
    TextHint = 'Scrie'#355'i denumirea testului pe care doriti s'#259'-l rezolva'#355'i'
    Visible = False
  end
  object Button1: TButton
    Left = 312
    Top = 324
    Width = 176
    Height = 31
    Caption = 'Adaug'#259' item in testul curent'
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 335
    Top = 381
    Width = 105
    Height = 25
    Caption = 'Salveaz'#259' testul'
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 48
    Top = 381
    Width = 121
    Height = 25
    Caption = 'Editeaz'#259' test'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 201
    Top = 334
    Width = 105
    Height = 41
    Caption = 'Creaz'#259' test nou'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 233
    Top = 290
    Width = 105
    Height = 33
    Cancel = True
    Caption = 'Verific'#259
    TabOrder = 8
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 398
    Top = 12
    Width = 90
    Height = 41
    HelpType = htKeyword
    Caption = 'Rezolv'#259
    TabOrder = 9
    Visible = False
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 312
    Top = 290
    Width = 176
    Height = 32
    Caption = 'Imagine'
    TabOrder = 10
    Visible = False
    OnClick = Button7Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 123
    Width = 281
    Height = 163
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 11
    Visible = False
    OnChange = Memo1Change
  end
  object Button8: TButton
    Left = 344
    Top = 290
    Width = 120
    Height = 33
    Caption = 'Continu'#259' >>'
    TabOrder = 12
    Visible = False
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 201
    Top = 381
    Width = 105
    Height = 25
    Caption = 'Rezolv'#259' teste'
    TabOrder = 13
    OnClick = Button9Click
  end
  object Panel1: TPanel
    Left = 25
    Top = 123
    Width = 264
    Height = 163
    Color = clHighlightText
    ParentBackground = False
    TabOrder = 14
    Visible = False
    OnClick = Panel1Click
    object Label5: TLabel
      Left = 8
      Top = 3
      Width = 46
      Height = 13
      Caption = #206'ntrebare'
    end
    object Label6: TLabel
      Left = 8
      Top = 22
      Width = 53
      Height = 13
      Caption = 'Varianta a)'
    end
    object Label7: TLabel
      Left = 8
      Top = 41
      Width = 53
      Height = 13
      Caption = 'Varianta b)'
    end
    object Label8: TLabel
      Left = 8
      Top = 60
      Width = 52
      Height = 13
      Caption = 'Varianta c)'
    end
    object Label9: TLabel
      Left = 9
      Top = 79
      Width = 107
      Height = 13
      Caption = 'R'#259'spuns corect(a,b,c)'
    end
    object Label10: TLabel
      Left = 9
      Top = 100
      Width = 79
      Height = 13
      Caption = 'Imagine(adres'#259')'
    end
    object Label11: TLabel
      Left = 8
      Top = 119
      Width = 83
      Height = 13
      Caption = 'Punctajul itemului'
    end
    object Label12: TLabel
      Left = 8
      Top = 142
      Width = 251
      Height = 13
      Caption = '! Nu uitati sa salvati fisierul astfel: nume fisier +'#39'.txt'#39
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 160
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Left = 128
    Top = 72
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 64
    Top = 72
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 295
    Top = 40
  end
end
