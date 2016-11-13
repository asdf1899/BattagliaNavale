unit ffrmnuovapartita;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, Menus, ffrmaiuto, fbblTipi;

type

  { TfrmNuovaPartita }

  TfrmNuovaPartita = class(TForm)
    btnNuovaPartita: TButton;
    btnEsci: TButton;
    btnAggiungi: TButton;
    edtNSottomarini: TEdit;
    edtNNavi: TEdit;
    edtSottomariniAttuali: TEdit;
    editNaviRimanenti: TEdit;
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
    procedure btnEsciClick(Sender: TObject);
    procedure mnuAiutoClick(Sender: TObject);
    procedure mnuEsciClick(Sender: TObject);
  private
    { private declarations }

    procedure Inizializzazione;
  public
    { public declarations }
   MatriceDati : TMatriceStringhe;
   NSottomarini: Integer;
   NNavi: Integer;
  end;

var
  frmNuovaPartita: TfrmNuovaPartita;

implementation

{$R *.lfm}

{ TfrmNuovaPartita }

//------------------------------------------------------------------------------
procedure TfrmNuovaPartita.Inizializzazione;
//------------------------------------------------------------------------------
 var
   Riga: Integer;
   Colonna: Integer;


   Begin
        NSottomarini := StrToInt(edtNSottomarini.Text);
        NNavi := StrToInt(edtNNavi.Text);
        MatriceDati.Dimensioni.Righe := 10;
        MatriceDati.Dimensioni.Colonne := 10;
        Oceano.Row := MatriceDati.Dimensioni.Righe;
        Oceano.Col := MatriceDati.Dimensioni.Colonne;
        for Riga := 1 to MatriceDati.Dimensioni.Righe   do
             begin
             for Colonna := 1 to MatriceDati.Dimensioni.Colonne  do
                 begin
                 MatriceDati.ArrayDati[Colonna, Riga] := ' ' ;
                 Oceano.Cells[Oceano.Col, Oceano.Row] := MatriceDati.ArrayDati[Colonna, Riga];
                 end;
             end ;
        end;

procedure TfrmNuovaPartita.mnuEsciClick(Sender: TObject);
begin
  frmnuovapartita.Close;
end;

procedure TfrmNuovaPartita.btnEsciClick(Sender: TObject);
begin
  frmnuovapartita.Close;
end;

procedure TfrmNuovaPartita.mnuAiutoClick(Sender: TObject);
begin
  frmAiuto.ShowModal;
end;

end.

