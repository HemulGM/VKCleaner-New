unit VKC.SaveManager;

interface

uses
  System.Classes, System.Generics.Collections, HGM.Common.Download;

type
  TOnProgress = procedure(Sender: TObject; CurrentFile: string; LeftDownload: Integer; ProgressCurrent: Single) of object;

  TOnFinish = procedure(Sender: TObject; CurrentFile: string; LeftDownload: Integer) of object;

  TDownloadList = TObjectList<TDownload>;

  TSaveManager = class(TComponent)
  private
    FDownloadList: TDownloadList;
    FOnProgress: TOnProgress;
    FOnFinish: TOnFinish;
    FDownloadLimit: Integer;
    FChecking: Boolean;
    FDownloadCount: Integer;
    procedure SetOnProgress(const Value: TOnProgress);
    procedure SetOnFinish(const Value: TOnFinish);
    procedure SetDownloadLimit(const Value: Integer);
    procedure CheckList;
    procedure ClearFinished;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property OnProgress: TOnProgress read FOnProgress write SetOnProgress;
    property OnFinish: TOnFinish read FOnFinish write SetOnFinish;
    procedure Add(Url, FileName: string);
    property DownloadLimit: Integer read FDownloadLimit write SetDownloadLimit;
  end;

implementation

{ TSaveManager }

procedure TSaveManager.Add(Url, FileName: string);
var
  Item: TDownload;
begin
  Item := TDownload.Create;
  Item.URL := Url;
  Item.FileName := FileName;
  Item.OnReceive :=
    procedure(const Sender: TDownload; AContentLength: Int64; AReadCount: Int64; var Abort: Boolean)
    begin
      if Assigned(FOnProgress) then
        FOnProgress(Self, Sender.FileName, FDownloadList.Count, ((100 / AContentLength) * AReadCount));
    end;
  Item.OnFinish :=
    procedure(const Sender: TDownload; ResponseCode: Integer)
    begin
      if Assigned(FOnFinish) then
        FOnFinish(Self, Sender.FileName, FDownloadList.Count - 1);
      Dec(FDownloadCount);
      CheckList;
    end;
  FDownloadList.Add(Item);
  CheckList;
end;

procedure TSaveManager.ClearFinished;
var
  i: Integer;
begin
  i := 0;
  while (FDownloadList.Count > 0) and (i < FDownloadList.Count) do
  begin
    if FDownloadList[i].Finished then
    begin
      FDownloadList.Delete(i);
    end
    else
      Inc(i);
  end;
end;

procedure TSaveManager.CheckList;
begin
  if FChecking then
    Exit;
  if FDownloadList.Count > 0 then
  begin
    FChecking := True;
    TThread.CreateAnonymousThread(
      procedure
      var
        i: Integer;
      begin
        while FDownloadCount >= FDownloadLimit do
          TThread.Sleep(100);
        for i := 0 to FDownloadList.Count - 1 do
          if (FDownloadList[i].Suspended) and (not FDownloadList[i].Finished) then
          begin
            Inc(FDownloadCount);
            FDownloadList[i].Start;
            if FDownloadCount >= FDownloadLimit then
              Break;
          end;
        FChecking := False;
        ClearFinished;
      end).Start;
  end;
end;

constructor TSaveManager.Create(AOwner: TComponent);
begin
  inherited;
  FDownloadList := TDownloadList.Create;
  FDownloadLimit := 5;
  FDownloadCount := 0;
end;

destructor TSaveManager.Destroy;
begin
  FDownloadList.Free;
  inherited;
end;

procedure TSaveManager.SetDownloadLimit(const Value: Integer);
begin
  FDownloadLimit := Value;
end;

procedure TSaveManager.SetOnFinish(const Value: TOnFinish);
begin
  FOnFinish := Value;
end;

procedure TSaveManager.SetOnProgress(const Value: TOnProgress);
begin
  FOnProgress := Value;
end;

end.

