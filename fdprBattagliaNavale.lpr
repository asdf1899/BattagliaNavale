program fdprBattagliaNavale;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, ffrmbattaglianavale, ffrmnuovapartita, ffrmaiuto, ffrmvittoria, 
ffrmsconfitta
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TfrmBattagliaNavale, frmBattagliaNavale);
  Application.CreateForm(TfrmNuovaPartita, frmNuovaPartita);
  Application.CreateForm(TfrmAiuto, frmAiuto);
  Application.CreateForm(TfrmVittoria, frmVittoria);
  Application.CreateForm(TfrmSconfitta, frmSconfitta);
  Application.Run;
end.

