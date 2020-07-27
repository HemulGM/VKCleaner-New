program VKCleaner;

uses
  System.StartUpCopy,
  FMX.Forms,
  VKC.Main in 'VKC.Main.pas' {FormMain},
  VKC.SaveManager in 'VKC.SaveManager.pas',
  HGM.FMX.ImagePreview in '..\FMXComponents\HGM.FMX.ImagePreview.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
