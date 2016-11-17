unit ffrmvittoria;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmVittoria }

  TfrmVittoria = class(TForm)
    bntOK: TButton;
    lblVittoria: TLabel;
    procedure bntOKClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmVittoria: TfrmVittoria;

implementation

{$R *.lfm}

{ TfrmVittoria }

procedure TfrmVittoria.bntOKClick(Sender: TObject);
begin
  frmvittoria.Close;
end;

end.

