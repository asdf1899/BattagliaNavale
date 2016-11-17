unit ffrmnuovapartita;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, Menus, ffrmaiuto, fbblTipi, ffrmvittoria, ffrmsconfitta;

type

  { TfrmNuovaPartita }

  TfrmNuovaPartita = class(TForm)
    btnNuovaPartita: TButton;
    btnEsci: TButton;
    btnAggiungi: TButton;
    edtNSottomarini: TEdit;
    edtNNavi: TEdit;
    edtSottomariniRimanenti: TEdit;
    edtNaviRimanenti: TEdit;
    edtSottomarinoX: TEdit;
    edtSottomarinoY: TEdit;
    lblNSottomarini: TLabel;
    lblNNavi: TLabel;
    lblSottomariniRimanenti: TLabel;
    lblNaviRimanenti: TLabel;
    lblSottomarinoLabel: TLabel;
    lblX: TLabel;
    lblTitoloNuovaPartita: TLabel;
    lblY: TLabel;
    mnuInfo: TMenuItem;
    mnuAiuto: TMenuItem;
    mnuEsci: TMenuItem;
    mnuFile: TMenuItem;
    mnuNuovaPartita: TMenuItem;
    MenuNuovaPartita: TMainMenu;
    Oceano: TStringGrid;
    procedure btnAggiungiClick(Sender: TObject);
    procedure btnEsciClick(Sender: TObject);
    procedure btnNuovaPartitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuAiutoClick(Sender: TObject);
    procedure mnuEsciClick(Sender: TObject);
    procedure mnuNuovaPartitaClick(Sender: TObject);
  private
    { private declarations }

    procedure Inizializzazione;
    procedure AggiungiSottomarini;
    procedure Reset;
  public
    { public declarations }
   MatriceDati : TMatriceStringhe;
   NSottomarini: Integer;
   NNavi: Integer;
   Contatore: Integer;
   NaviAttuali :Integer;
   SottomariniAttuali:Integer;
  end;

var
  frmNuovaPartita: TfrmNuovaPartita;

implementation

{$R *.lfm}

{ TfrmNuovaPartita }

//------------------------------------------------------------------------------
procedure TfrmNuovaPartita.Reset;
//------------------------------------------------------------------------------
  var
   Riga: Integer;
   Colonna: Integer;
   begin
       for Riga := 1 to MatriceDati.Dimensioni.Righe   do
             begin
             for Colonna := 1 to MatriceDati.Dimensioni.Colonne  do
                 begin
                 Oceano.Row := Riga;
                 Oceano.Col := Colonna;
                 MatriceDati.ArrayDati[Colonna, Riga] := ' ' ;
                 Oceano.Cells[Oceano.Row, Oceano.Col] := MatriceDati.ArrayDati[Colonna, Riga];
                 end;
             end ;
       edtNSottomarini.Text := ' ';
       edtNNavi.Text := ' ';
       edtSottomariniRimanenti.Text := ' ';
       edtNaviRimanenti.Text := ' ';
       edtSottomarinoX.Text := ' ';
       edtSottomarinoY.Text := ' ';
   end;

//------------------------------------------------------------------------------
procedure TfrmNuovaPartita.Inizializzazione;
//------------------------------------------------------------------------------
 var
   Riga: Integer;
   Colonna: Integer;
   i: Integer;
   RigaNavi: longint;
   ColonnaNavi: longint;

   Begin
        Contatore := 0;
        NSottomarini := StrToInt(edtNSottomarini.Text);
        NNavi := StrToInt(edtNNavi.Text);
        MatriceDati.Dimensioni.Righe := 10;
        MatriceDati.Dimensioni.Colonne := 10;
        //Oceano.Row := MatriceDati.Dimensioni.Righe;
        //Oceano.Col := MatriceDati.Dimensioni.Colonne;
        edtNaviRimanenti.Text := IntToStr(NNavi);
        edtSottomariniRimanenti.Text := IntToStr(NSottomarini);

        for Riga := 1 to MatriceDati.Dimensioni.Righe   do
             begin
             for Colonna := 1 to MatriceDati.Dimensioni.Colonne  do
                 begin
                 Oceano.Row := Riga;
                 Oceano.Col := Colonna;
                 MatriceDati.ArrayDati[Colonna, Riga] := ' ' ;
                 Oceano.Cells[Oceano.Row, Oceano.Col] := MatriceDati.ArrayDati[Colonna, Riga];
                 end;
             end ;
        for i := 1 to NNavi do
            begin
                 RigaNavi := random(9)+1;
                 ColonnaNavi := random(9)+1;
                 Oceano.Row := RigaNavi ;
                 Oceano.Col := ColonnaNavi;
                 MatriceDati.ArrayDati[ColonnaNavi, RigaNavi] := 'nave' ;
                 Oceano.Cells[Oceano.Row, Oceano.Col] := MatriceDati.ArrayDati[ColonnaNavi, RigaNavi];
            end;
        end;
//------------------------------------------------------------------------------
procedure TfrmNuovaPartita.AggiungiSottomarini;
//------------------------------------------------------------------------------
var
  xSottomarino:Integer;
  ySottomarino:Integer;

begin
  Contatore := Contatore + 1;
  if (Contatore = 1) then
     begin
          NaviAttuali := NNavi;
          SottomariniAttuali := NSottomarini;
     end;

begin
   SottomariniAttuali := SottomariniAttuali - 1;
   edtNaviRimanenti.Text := IntToStr(NaviAttuali);
   edtSottomariniRimanenti.Text := IntToStr(SottomariniAttuali);
   xSottomarino := StrToInt(edtSottomarinoX.Text);
   ySottomarino := StrToInt(edtSottomarinoY.Text);
  if (MatriceDati.ArrayDati[ySottomarino, xSottomarino] = 'nave') then
      begin
           NaviAttuali := NaviAttuali - 1;
           edtNaviRimanenti.Text := IntToStr(NaviAttuali);
           Oceano.Row := xSottomarino ;
           Oceano.Col := ySottomarino;
           MatriceDati.ArrayDati[ySottomarino, xSottomarino] := 'nave colpita';
           Oceano.Cells[Oceano.Row, Oceano.Col] := MatriceDati.ArrayDati[ySottomarino, xSottomarino];
      end
   else
       begin
           Oceano.Row := xSottomarino ;
           Oceano.Col := ySottomarino;
           MatriceDati.ArrayDati[ySottomarino, xSottomarino] := 'sottomarino';
           Oceano.Cells[Oceano.Row, Oceano.Col] := MatriceDati.ArrayDati[ySottomarino, xSottomarino];
        end;
   edtSottomarinoX.Text := ' ';
   edtSottomarinoY.Text := ' ';
   if (NaviAttuali = 0) then
     begin
          reset;
          frmvittoria.ShowModal;
          frmnuovapartita.Close;
     end;
   if (SottomariniAttuali = 0) and (NaviAttuali > 0) then
     begin
          reset;
          frmsconfitta.ShowModal;;
     end;
  end;
end;

procedure TfrmNuovaPartita.mnuEsciClick(Sender: TObject);
begin
     reset;
     frmnuovapartita.Close;
end;

procedure TfrmNuovaPartita.mnuNuovaPartitaClick(Sender: TObject);
begin
     Inizializzazione;
end;

procedure TfrmNuovaPartita.btnEsciClick(Sender: TObject);
begin
  reset;
  frmnuovapartita.Close;
end;

procedure TfrmNuovaPartita.btnAggiungiClick(Sender: TObject);
begin
    AggiungiSottomarini;
end;

procedure TfrmNuovaPartita.btnNuovaPartitaClick(Sender: TObject);
begin
  Inizializzazione;
end;

procedure TfrmNuovaPartita.FormCreate(Sender: TObject);
begin

end;

procedure TfrmNuovaPartita.mnuAiutoClick(Sender: TObject);
begin
  frmAiuto.ShowModal;
end;

end.

