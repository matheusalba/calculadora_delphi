unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btn_1: TButton;
    btn_mais: TButton;
    btn_menos: TButton;
    btn_multi: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ce: TButton;
    btn_igual: TButton;
    Button1: TButton;
    Button2: TButton;
    btn_0: TButton;
    label_op: TLabel;
    tela_dois: TEdit;
    tela_um: TEdit;
    procedure btn_0Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_maisClick(Sender: TObject);
    procedure btn_menosClick(Sender: TObject);
    procedure btn_multiClick(Sender: TObject);
  private
         var primeiro_numero: Integer;
         var segundo_numero: Integer;
         var resultado: Integer;
         function soma(x,y:Integer):Integer;
         function subtrai(x,y:Integer):Integer;
         function multi(x,y:Integer):Integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btn_1Click(Sender: TObject);
begin
     tela_um.Text := tela_um.Text + '1'
end;

procedure TForm1.btn_0Click(Sender: TObject);
begin
     tela_um.Text := tela_um.Text + '0'
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
     tela_um.Text := tela_um.Text + '2'
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '3'
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '4'
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '5'
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '6'
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '7'
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '8'
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
  tela_um.Text := tela_um.Text + '9'
end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
  primeiro_numero:=0;
  segundo_numero:=0;
  label_op.Caption:='';
  tela_um.Text:='';
  tela_dois.Text:='';
end;

procedure TForm1.btn_igualClick(Sender: TObject);
begin
  segundo_numero := StrToInt(tela_um.Text);
  if(label_op.Caption = '+')then
        begin
          resultado := soma(primeiro_numero,segundo_numero);
          tela_um.Text := IntToStr(resultado);
          tela_dois.Text := '';
          segundo_numero := 0;
          primeiro_numero := resultado;
        end
  else if(label_op.Caption = '-')then
       begin
            resultado := subtrai(primeiro_numero,segundo_numero);
            tela_um.Text := IntToStr(resultado);
            tela_dois.Text := '';
            segundo_numero := 0;
            primeiro_numero := resultado;
      end
  else if(label_op.Caption = '*')then
       begin
            resultado := multi(primeiro_numero,segundo_numero);
            tela_um.Text := IntToStr(resultado);
            tela_dois.Text := '';
            segundo_numero := 0;
            primeiro_numero := resultado;
       end
end;

procedure TForm1.btn_maisClick(Sender: TObject);
begin
  tela_dois.Text := tela_um.Text;
  primeiro_numero := StrToInt(tela_um.Text);
  tela_um.Text := '';
  label_op.Caption:= '+';
end;

procedure TForm1.btn_menosClick(Sender: TObject);
begin
  tela_dois.Text := tela_um.Text;
  tela_um.Text := '';
  label_op.Caption:= '-';
end;

procedure TForm1.btn_multiClick(Sender: TObject);
begin
  tela_dois.Text := tela_um.Text;
  tela_um.Text := '';
  label_op.Caption:= '*';
end;

function TForm1.soma(x, y: Integer): Integer;
begin
    Result := x+y;
end;

function TForm1.subtrai(x, y: Integer): Integer;
begin
    Result := x-y;
end;

function TForm1.multi(x, y: Integer): Integer;
begin
    Result := x*y;
end;

end.

