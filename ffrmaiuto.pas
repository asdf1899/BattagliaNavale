unit ffrmaiuto;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmAiuto }

  TfrmAiuto = class(TForm)
    btnOk: TButton;
    lblAbout: TLabel;
    procedure btnOkClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmAiuto: TfrmAiuto;

implementation

{$R *.lfm}

{ TfrmAiuto }

procedure TfrmAiuto.btnOkClick(Sender: TObject);
begin
  frmAiuto.Close;
end;

end.

