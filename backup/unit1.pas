unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons, Menus, unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Input_Uang: TEdit;
    Label55: TLabel;
    Label56: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Total_Bayar: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure Label47Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Label52Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);

begin




end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);

begin




end;

procedure TForm1.Edit5Change(Sender: TObject);



begin




end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label39Click(Sender: TObject);
begin

end;

procedure TForm1.Label47Click(Sender: TObject);
begin

end;

procedure TForm1.Label48Click(Sender: TObject);
begin

end;

procedure TForm1.Label49Click(Sender: TObject);
begin

end;

procedure TForm1.Label52Click(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.StaticText1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);

   //Right

var

   makanan,
   minuman,
   total,
   beli,
   bayar,
   kembalian : real;

begin

  makanan := StrToFloat (Edit1.text);
  minuman := StrToFloat (Edit2.text);
  beli := StrtoFloat (Edit5.text);
  bayar := StrtoFloat (Input_Uang.text);

  //Operator

  total := (makanan + minuman) * beli;
  Total_Bayar.text := FloatToStr (total);
  kembalian := total - bayar;
  Edit8.text := FloatToStr (kembalian);

  //Operator If (Ngebug, kd tuntung)

  If Input_Uang.text < Total_Bayar.text
  Then showmessage ('Uang anda tidak mencukupi untuk pembayaran !!');

  (*else
  if Input_Uang.text > Total_Bayar.text

  Then
  showmessage ('Silahkan tekan tombol "Konfirmasi" untuk memesan pesanan');*)

end;

procedure TForm1.Button2Click(Sender: TObject);
begin



end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  //B.Close

    Close;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin

  Edit1.Clear;
  Edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  Edit5.Clear;
  Input_Uang.Clear;
  Total_Bayar.Clear;
  Edit8.Clear;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin

  Form2.ShowModal //Pindah Form

end;

procedure TForm1.ComboBox1Change(Sender: TObject);



begin

  //Left

  if Combobox1.text = '1' then edit3.text := 'Nasi Ikan Bandeng';
  if Combobox1.text = '1' then edit1.text := '23000';

  if Combobox1.text = '2' then edit3.text := 'Nasi Undang ';
  if Combobox1.text = '2' then edit1.text := '27000';

  if Combobox1.text = '3' then edit3.text := 'Nasi Ayam Goreng';
  if Combobox1.text = '3' then edit1.text := '18000';

  if Combobox1.text = '4' then edit3.text := 'Nasi Ayam Bakar';
  if Combobox1.text = '4' then edit1.text := '23000';

  if Combobox1.text = '5' then edit3.text := 'Nasi Ikan Tongkol';
  if Combobox1.text = '5' then edit1.text := '21000';

  if Combobox1.text = '6' then edit3.text := 'Nasi Ayam Presto';
  if Combobox1.text = '6' then edit1.text := '19000';

  if Combobox1.text = '7' then edit3.text := 'Nasi Ikan Lele';
  if Combobox1.text = '7' then edit1.text := '17000';

end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin

  //Input Nomor Menu (Makanan)

  if Combobox2.text = '1' then edit4.text := 'Jus Mangga';
  if Combobox2.text = '1' then edit2.text := '15000';

  if Combobox2.text = '2' then edit4.text := 'Jus Alpukat';
  if Combobox2.text = '2' then edit2.text := '17000';

  if Combobox2.text = '3' then edit4.text := 'Jus Melon';
  if Combobox2.text = '3' then edit2.text := '13000';

  if Combobox2.text = '4' then edit4.text := 'Es Teh';
  if Combobox2.text = '4' then edit2.text := '4000';

  if Combobox2.text = '5' then edit4.text := 'Es Jeruk';
  if Combobox2.text = '5' then edit2.text := '6000';

  if Combobox2.text = '6' then edit4.text := 'Air Putih';
  if Combobox2.text = '6' then edit2.text := '2000';

  if Combobox2.text = '7' then edit4.text := 'Kopi Hitam';
  if Combobox2.text = '7' then edit2.text := '5000';

end;

end.

