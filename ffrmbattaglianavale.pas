unit ffrmbattaglianavale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, ffrmnuovapartita, ffrmaiuto;

type

  { TfrmBattagliaNavale }

  TfrmBattagliaNavale = class(TForm)
    btnAiuto1: TButton;
    btnNuovaPartita: TButton;
    btnAiuto: TButton;
    lblBattagliaNavale: TLabel;
    menuBattagliaNavale: TMainMenu;
    mnuAiuto: TMenuItem;
    mnuInfo: TMenuItem;
    mnuEsci: TMenuItem;
    mnuNuovaPartita: TMenuItem;
    mnuFile: TMenuItem;
    procedure btnAiuto1Click(Sender: TObject);
    procedure btnAiutoClick(Sender: TObject);
    procedure btnNuovaPartitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuAiutoClick(Sender: TObject);
    procedure mnuEsciClick(Sender: TObject);
    procedure mnuFileClick(Sender: TObject);
    procedure mnuNuovaPartitaClick(Sender: TObject);
  private
    { private declarations }

  public
    { public declarations }
  end;

var
  frmBattagliaNavale: TfrmBattagliaNavale;

implementation

{$R *.lfm}

{ TfrmBattagliaNavale }

procedure TfrmBattagliaNavale.FormCreate(Sender: TObject);
begin

end;

procedure TfrmBattagliaNavale.mnuAiutoClick(Sender: TObject);
begin
 frmAiuto.ShowModal;
end;

procedure TfrmBattagliaNavale.mnuEsciClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfrmBattagliaNavale.mnuFileClick(Sender: TObject);
begin

end;

procedure TfrmBattagliaNavale.mnuNuovaPartitaClick(Sender: TObject);
begin
 frmNuovaPartita.ShowModal;
end;

procedure TfrmBattagliaNavale.btnAiuto1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmBattagliaNavale.btnAiutoClick(Sender: TObject);
begin
  frmAiuto.ShowModal;
end;

procedure TfrmBattagliaNavale.btnNuovaPartitaClick(Sender: TObject);
begin
  frmNuovaPartita.ShowModal;
end;

end.

