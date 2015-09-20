unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Edit1.Text='profesor')THEN
begin form3.show; form1.Hide;
  Form3.Button5.Visible:=false;   Form3.Button4.Visible:=false;   Form3.CheckBox1.Visible:=false;  Form3.CheckBox2.Visible:=false;  Form3.CheckBox3.Visible:=false;   Form3.Edit2.Visible:=false;    Form3.Button6.Visible:=false;   Form3.Button7.Visible:=TRUE;   Form3.Button1.Visible:=TRUE;  Form3.Image1.Visible:=TRUE;    Form3.Label3.Visible:=TRUE;   Form3. Memo1.Visible:=TRUE;  Form3.Button1.Enabled:=FALSE; Form3.Button8.visible:=false;    form3.Image1.Picture:=nil;
end else
begin
  ShowMessage('Parolã incorectã!');Form1.hide;Form3.Show;
  Form3.Panel1.Visible:=false;
end;
end;

end.
