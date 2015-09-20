unit dct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, ExtCtrls, Jpeg;

type
  TGlosar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cauta: TEdit;
    adauga: TButton;
    gigi: TButton;
    Memo1: TMemo;
    Image1: TImage;
    Im: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    lbl: TLabel;
    Panel1: TPanel;
    procedure adaugaClick(Sender: TObject);
    procedure gigiClick(Sender: TObject);
    procedure ImClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  var
    h, g, f: TextFile;
    img, dr, st: array [1 .. 1000] of string;
    s: string;
    i, nr: 1 .. 1000;
    cuv: string;
    p: byte;
  end;

var
  Glosar: TGlosar;
  cu: string;

implementation

{$R *.dfm}

procedure TGlosar.adaugaClick(Sender: TObject);
var
  i: integer;
  gasit: boolean;
begin
Image1.Picture:=nil;
  Memo1.Text := '';   Panel1.Visible:=false;
  cuv := cauta.Text;
  System.assign(h, 'imagini.txt');
  cuv := UpperCase(cuv);
  reset(h);
  System.assign(g, 'cuvinte.txt');
  reset(g);
  readln(g, nr);
  System.assign(f, 'dictionar.txt');
  reset(f);
  for i := 1 to nr do
  begin

    readln(f, s);
    p := pos('=', s);
    dr[i] := copy(s, 1, p - 1);
    st[i] := copy(s, p + 1, length(s));
    readln(h, img[i]);
  end;
  closeFile(f);
  closeFile(g);
  closeFile(h);
  if (cuv <> '') then
  begin
    for i := 1 to nr do
      if cuv = dr[i] then
      begin
        gasit := true;
        Memo1.Text := st[i];
        if img[i] <> '' then
          Image1.picture.loadfromfile(img[i]);

      end;
    if not gasit then
    begin
      gigi.Visible := true;
      Im.Visible := true;
      Memo1.Text :=
        'Termenul nu exista!Daca vrei sa-l adaugi in dictionar, scrie in acesta fereastra explicatia, apoi da click pe butonul "Adaug�".'
    end;
  end
  else
    Memo1.Text :=
      'Termenul nu exista!Daca vrei sa-l adaugi in dictionar, scrie in acesta fereastra explicatia, apoi da click pe butonul "Adaug�".'

end;

procedure TGlosar.gigiClick(Sender: TObject);
var
  valid: boolean;
  i: integer;
  cin: string;
  k: string;
begin
  k := lbl.Caption;
  gigi.Visible := false;
  System.assign(h, 'imagini.txt');
  append(h);
  writeln(h, k);
  System.assign(g, 'cuvinte.txt');
  reset(g);
  readln(g, nr);
  rewrite(g);
  write(g, nr + 1);
  System.assign(f, 'dictionar.txt');
  append(f);
  write(f);
  valid := true;
  for i := 1 to nr do
    if UpperCase(cauta.Text) = dr[i] then
      valid := false;
  if (cauta.Text <> '') then
    if (Memo1.Text <> '') and (Memo1.Text <>
        'Termenul nu exista!Daca vrei sa-l adaugi in dictionar, scrie in acesta fereastra explicatia, apoi da click pe butonul "Adaug�".') then
      valid := true
    else
      valid := false;
  if valid then
  begin
    dr[nr + 1] := UpperCase(cauta.Text);
    st[nr + 1] := Memo1.Text;
    s := dr[nr + 1] + '=' + st[nr + 1];
    writeln(f, s);
    cauta.Text := '';
    Memo1.Text := '';
  end;
  closeFile(f);
  Im.Visible := false;
  lbl.Caption := '';
  Image1.picture := nil;
  closeFile(g);
  closeFile(h);
end;

procedure TGlosar.ImClick(Sender: TObject);
begin ;
  if OpenPictureDialog1.Execute then
    Image1.picture.loadfromfile(OpenPictureDialog1.filename);
  lbl.Caption := OpenPictureDialog1.filename;
end;
begin

end.
