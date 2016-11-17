unit ffrmsconfitta;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmSconfitta }

  TfrmSconfitta = class(TForm)
    btnOk: TButton;
    lblSconfitta: TLabel;
    procedure btnOkClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmSconfitta: TfrmSconfitta;

implementation

{$R *.lfm}

{ TfrmSconfitta }

procedure TfrmSconfitta.btnOkClick(Sender: TObject);
begin
  frmSconfitta.Close;
end;

end.

