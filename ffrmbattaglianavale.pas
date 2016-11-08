unit ffrmbattaglianavale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmBattagliaNavale }

  TfrmBattagliaNavale = class(TForm)
    btnAiuto1: TButton;
    btnNuovaPartita: TButton;
    btnAiuto: TButton;
    lblBattagliaNavale: TLabel;
    procedure FormCreate(Sender: TObject);
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

end.

