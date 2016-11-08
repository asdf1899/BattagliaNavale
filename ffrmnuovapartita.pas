unit ffrmnuovapartita;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, Menus, ffrmaiuto, fbblTipi, fbblCostanti;

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
    procedure mnuFileClick(Sender: TObject);
  private
    { private declarations }
    MatriceDati : TMatriceStringhe;
    procedure Inizializzazione;
  public
    { public declarations }
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
   NSottomarini: StrToInt(edtNSottomarini.Text);;
   NNavi: StrToInt(edtNNavi.Text);

   Begin
        MatriceDati.Dimensioni.Righe := 50;
        MatriceDati.Dimensioni.Colonne := 6;
   End

procedure TfrmNuovaPartita.mnuFileClick(Sender: TObject);
begin

end;

procedure TfrmNuovaPartita.mnuEsciClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmNuovaPartita.btnEsciClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmNuovaPartita.mnuAiutoClick(Sender: TObject);
begin
  frmAiuto.ShowModal;
end;

end.

