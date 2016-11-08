unit ffrmnuovapartita;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, Menus, ffrmaiuto;

type

  { TfrmNuovaPartita }

  TfrmNuovaPartita = class(TForm)
    btnNuovaPartita: TButton;
    btnEsci: TButton;
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
  public
    { public declarations }
  end;

var
  frmNuovaPartita: TfrmNuovaPartita;

implementation

{$R *.lfm}

{ TfrmNuovaPartita }

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

