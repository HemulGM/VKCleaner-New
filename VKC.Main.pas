unit VKC.Main;

interface

uses
  FMX.Graphics, HGM.FMX.Image, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Types,
  FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Effects, FMX.DialogService, FMX.Objects, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation, VK.API, VK.Components, VK.Types, FMX.MultiView, System.ImageList, FMX.ImgList, FMX.Layouts,
  FMX.Ani, FMX.ListBox, VK.Entity.Doc, VK.Entity.Audio, VK.Entity.Playlist, VK.Entity.Photo, VK.Entity.Album,
  VK.Entity.Profile, VK.Entity.Group, VK.Entity.Video, VK.Entity.Market, VK.Entity.Fave, VK.Entity.Note, VK.Entity.Link,
  VK.Entity.Message, VK.Entity.Conversation, VK.Entity.Media, FMX.DateTimeCtrls, VKC.SaveManager, HGM.FMX.ImagePreview,
  FMX.ScrollBox, FMX.Memo, VK.Entity.Board, FMX.Edit, System.Actions, FMX.ActnList, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Fmx.Bind.GenData, Data.Bind.GenData, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.ObjectScope, System.Threading;

type
  TFormMain = class(TForm)
    StyleBook1: TStyleBook;
    TabControlMain: TTabControl;
    TabItemMWall: TTabItem;
    VKAPI: TVK;
    MultiViewMain: TMultiView;
    ButtonMenu: TButton;
    ImageListControls: TImageList;
    TabItemMDialogs: TTabItem;
    TabItemMFriends: TTabItem;
    TabItemMGroups: TTabItem;
    TabItemMPhotos: TTabItem;
    VertScrollBoxMenu: TVertScrollBox;
    ButtonMenuAudio: TButton;
    ButtonMenuDialogs: TButton;
    ButtonMenuDocs: TButton;
    ButtonMenuFriends: TButton;
    ButtonMenuGroups: TButton;
    ButtonMenuWall: TButton;
    ButtonMenuNotes: TButton;
    ButtonMenuPhotos: TButton;
    ButtonMenuVideo: TButton;
    Layout1: TLayout;
    Layout2: TLayout;
    ButtonMenuFaves: TButton;
    ButtonMenuMarket: TButton;
    Line1: TLine;
    LayoutGroups: TLayout;
    ButtonMenuSettings: TButton;
    LayoutAuth: TLayout;
    Rectangle1: TRectangle;
    Image1: TImage;
    Label1: TLabel;
    FloatAnimationAuthPos: TFloatAnimation;
    TabItemMAudio: TTabItem;
    TabItemMVideo: TTabItem;
    TabItemMMarket: TTabItem;
    TabItemMFaves: TTabItem;
    TabItemMDocs: TTabItem;
    TabItemMNotes: TTabItem;
    TabItemMSets: TTabItem;
    CircleAvatar: TCircle;
    LabelMenuFriendsCnt: TLabel;
    LabelMenuGroupsCnt: TLabel;
    ButtonAuthReset: TButton;
    TabItemMGroup: TTabItem;
    AniIndicatorLoad: TAniIndicator;
    LabelMenuPhotosCnt: TLabel;
    LabelMenuVideosCnt: TLabel;
    LabelMenuAudiosCnt: TLabel;
    LabelMenuDialogsCnt: TLabel;
    LabelMenuDocsCnt: TLabel;
    LabelMenuFavesCnt: TLabel;
    LabelMenuNotesCnt: TLabel;
    LabelMenuWallCnt: TLabel;
    FloatAnimationAuthOpc: TFloatAnimation;
    TabControlMenu: TTabControl;
    TabItemMenuMain: TTabItem;
    TabItemMenuGroup: TTabItem;
    VertScrollBoxMenuGroup: TVertScrollBox;
    ButtonMenuGroupBack: TButton;
    Layout3: TLayout;
    ListBoxAlbums: TListBox;
    AniIndicatorLoadPage: TAniIndicator;
    LabelMenuMarketCnt: TLabel;
    LayoutClient: TLayout;
    TabItemMWelcome: TTabItem;
    Rectangle2: TRectangle;
    Label3: TLabel;
    TabControlPhotos: TTabControl;
    TabItemPhotosAlbums: TTabItem;
    TabItemPhotosItems: TTabItem;
    LayoutPhotosCaption: TLayout;
    ButtonPhotosBack: TButton;
    Circle1: TCircle;
    AniIndicator1: TAniIndicator;
    Layout5: TLayout;
    LabelAlbumName: TLabel;
    FloatAnimationPCSize: TFloatAnimation;
    FloatAnimationPCFSX: TFloatAnimation;
    FloatAnimationPCFSY: TFloatAnimation;
    ShadowEffect1: TShadowEffect;
    Rectangle4: TRectangle;
    FloatAnimationPCFSS: TFloatAnimation;
    LayoutHead: TLayout;
    LabelHeadText: TLabel;
    Layout4: TLayout;
    LabelGroupHead: TLabel;
    Layout7: TLayout;
    LabelHeadWallCnt: TLabel;
    Layout8: TLayout;
    LabelHeadAlbumsCnt: TLabel;
    Layout6: TLayout;
    LabelHeadDialogsCnt: TLabel;
    Layout9: TLayout;
    LabelHeadFriends: TLabel;
    Layout10: TLayout;
    LabelHeadGroups: TLabel;
    Layout11: TLayout;
    LabelHeadAudiosCnt: TLabel;
    Layout13: TLayout;
    LabelHeadMarketCnt: TLabel;
    Layout14: TLayout;
    LabelHeadFavesCnt: TLabel;
    Layout15: TLayout;
    LabelHeadDocsCnt: TLabel;
    Layout16: TLayout;
    LabelHeadNotesCnt: TLabel;
    Layout17: TLayout;
    Label14: TLabel;
    TabItemMBoard: TTabItem;
    Layout18: TLayout;
    LabelHeadBoardCnt: TLabel;
    ButtonMenuGroupAudio: TButton;
    LabelMenuGAudiosCnt: TLabel;
    ButtonMenuGroupDialogs: TButton;
    LabelMenuGDialogsCnt: TLabel;
    ButtonMenuGroupDocs: TButton;
    LabelMenuGDocsCnt: TLabel;
    ButtonMenuGroupMembers: TButton;
    LabelMenuGUsers: TLabel;
    ButtonMenuGroupPhotos: TButton;
    LabelMenuGPhotosCnt: TLabel;
    ButtonMenuGroupVideo: TButton;
    LabelMenuGVideosCnt: TLabel;
    Layout19: TLayout;
    ButtonMenuGroupMarket: TButton;
    LabelMenuGMarketCnt: TLabel;
    ButtonMenuGroupWall: TButton;
    LabelMenuGWallCnt: TLabel;
    ButtonMenuGroupBoard: TButton;
    LabelMenuGBoardCnt: TLabel;
    ListBoxDocs: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ImageListFileTypes: TImageList;
    ListBoxUsers: TListBox;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ImageListIcons: TImageList;
    ListBoxGroups: TListBox;
    ListBoxAudioPlaylists: TListBox;
    ListBoxItem11: TListBoxItem;
    ListBoxItem12: TListBoxItem;
    ListBoxAudios: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    TabControlVideos: TTabControl;
    TabItemVideosAlbums: TTabItem;
    ListBoxVideoAlbums: TListBox;
    Layout20: TLayout;
    LabelHeadVideoAlbumsCnt: TLabel;
    TabItemVideosItems: TTabItem;
    ListBoxVideos: TListBox;
    Layout21: TLayout;
    Rectangle3: TRectangle;
    Button7: TButton;
    Circle2: TCircle;
    AniIndicator2: TAniIndicator;
    Layout22: TLayout;
    LabelVideoAlbumName: TLabel;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    ShadowEffect2: TShadowEffect;
    FloatAnimation4: TFloatAnimation;
    LabelAudiosLoad: TLabel;
    ListBoxFaves: TListBox;
    ListBoxItem13: TListBoxItem;
    ListBoxItem14: TListBoxItem;
    ListBoxMarket: TListBox;
    ListBoxNotes: TListBox;
    ListBoxItem15: TListBoxItem;
    ListBoxItem16: TListBoxItem;
    ListBoxDialogs: TListBox;
    ListBoxItem17: TListBoxItem;
    ListBoxItem18: TListBoxItem;
    Layout12: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    ListBoxWall: TListBox;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    CheckBoxWallSelect: TCheckBox;
    Layout25: TLayout;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Layout26: TLayout;
    Button10: TButton;
    Button12: TButton;
    Label4: TLabel;
    Layout27: TLayout;
    Button13: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Layout28: TLayout;
    Layout29: TLayout;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Label5: TLabel;
    Label7: TLabel;
    Layout30: TLayout;
    Button14: TButton;
    Layout31: TLayout;
    ButtonSavePhoto: TButton;
    Button16: TButton;
    Layout32: TLayout;
    Layout33: TLayout;
    CheckBoxPhotoSelect: TCheckBox;
    ListBoxPhotos: TListBox;
    LayoutDownload: TLayout;
    Rectangle5: TRectangle;
    ShadowEffect3: TShadowEffect;
    Button15: TButton;
    ProgressBarDownload1: TProgressBar;
    LabelDownload: TLabel;
    ProgressBarDownload2: TProgressBar;
    ProgressBarDownload3: TProgressBar;
    ProgressBarDownload4: TProgressBar;
    ProgressBarDownload5: TProgressBar;
    MemoLog: TMemo;
    Layout34: TLayout;
    Button17: TButton;
    ListBoxBoard: TListBox;
    ListBoxItem19: TListBoxItem;
    ListBoxItem20: TListBoxItem;
    SwitchMenu: TSwitch;
    Button1: TButton;
    StyleBook2: TStyleBook;
    ImageListControlsW: TImageList;
    Layout35: TLayout;
    Label6: TLabel;
    EditLogin: TEdit;
    EditPassword: TEdit;
    ButtonLogin: TButton;
    AniIndicatorLogin: TAniIndicator;
    ButtonLoginOAuth2: TButton;
    AniIndicator3: TAniIndicator;
    Label8: TLabel;
    procedure MultiViewMainShown(Sender: TObject);
    procedure MultiViewMainStartHiding(Sender: TObject);
    procedure ButtonMenuClick(Sender: TObject);
    procedure MultiViewMainHidden(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure VKAPIAuth(Sender: TObject; Url: string; var Token: string; var TokenExpiry: Int64; var ChangePasswordHash: string);
    procedure VKAPILogin(Sender: TObject);
    procedure FloatAnimationAuthPosFinish(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
    procedure ButtonMenuWallClick(Sender: TObject);
    procedure ButtonMenuDialogsClick(Sender: TObject);
    procedure ButtonMenuFriendsClick(Sender: TObject);
    procedure ButtonMenuGroupsClick(Sender: TObject);
    procedure ButtonMenuPhotosClick(Sender: TObject);
    procedure ButtonMenuAudioClick(Sender: TObject);
    procedure ButtonMenuVideoClick(Sender: TObject);
    procedure ButtonMenuMarketClick(Sender: TObject);
    procedure ButtonMenuFavesClick(Sender: TObject);
    procedure ButtonMenuDocsClick(Sender: TObject);
    procedure ButtonMenuNotesClick(Sender: TObject);
    procedure ButtonMenuSettingsClick(Sender: TObject);
    procedure ButtonAuthResetClick(Sender: TObject);
    procedure ButtonMenuGroupBackClick(Sender: TObject);
    procedure ListBoxAlbumsItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure ButtonPhotosBackClick(Sender: TObject);
    procedure ListBoxPhotosViewportPositionChange(Sender: TObject; const OldViewportPosition, NewViewportPosition:
      TPointF; const ContentSizeChanged: Boolean);
    procedure VKAPIError(Sender: TObject; E: Exception; Code: Integer; Text: string);
    procedure ListBoxAlbumsResize(Sender: TObject);
    procedure ListBoxPhotosResize(Sender: TObject);
    procedure ListBoxAlbumsViewportPositionChange(Sender: TObject; const OldViewportPosition, NewViewportPosition:
      TPointF; const ContentSizeChanged: Boolean);
    procedure ListBoxVideoAlbumsResize(Sender: TObject);
    procedure ListBoxVideoAlbumsItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure Button7Click(Sender: TObject);
    procedure ListBoxVideosResize(Sender: TObject);
    procedure CheckBoxWallSelectChange(Sender: TObject);
    procedure CheckBoxPhotoSelectChange(Sender: TObject);
    procedure ButtonSavePhotoClick(Sender: TObject);
    procedure ListBoxPhotosClick(Sender: TObject);
    procedure VKAPILog(Sender: TObject; const Value: string);
    procedure Button17Click(Sender: TObject);
    procedure ButtonMenuGroupWallClick(Sender: TObject);
    procedure ButtonMenuGroupDialogsClick(Sender: TObject);
    procedure ButtonMenuGroupMembersClick(Sender: TObject);
    procedure ButtonMenuGroupPhotosClick(Sender: TObject);
    procedure ButtonMenuGroupAudioClick(Sender: TObject);
    procedure ButtonMenuGroupVideoClick(Sender: TObject);
    procedure ButtonMenuGroupMarketClick(Sender: TObject);
    procedure ButtonMenuGroupDocsClick(Sender: TObject);
    procedure ButtonMenuGroupBoardClick(Sender: TObject);
    procedure SwitchMenuSwitch(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure VKAPIErrorLogin(Sender: TObject; E: Exception; Code: Integer; Text: string);
    procedure ButtonLoginOAuth2Click(Sender: TObject);
  private
    FCanManuAction: Boolean;
    FChangePasswordHash: string;
    FDownloadManager: TSaveManager;
    FLoadingCount: Integer;
    FLoadingPageCount: Integer;
    FPathPhotos: string;
    FPreviewImage: TImagePreview;
    FToken: string;
    FTokenExpiry: Int64;
    FUserId: Integer;
    FGroupId: Integer;
    function CreateAlbumListItem(Listbox: TListBox; Album: TVkPhotoAlbum): TListBoxItem;
    function CreateAudioListItem(Listbox: TListBox; Audio: TVkAudio): TListBoxItem;
    function CreateAudioPlaylistListItem(Listbox: TListBox; Playlist: TVkAudioPlaylist): TListBoxItem;
    function CreateDialogListItem(Listbox: TListBox; Item: TVkConversationItem; Profile: TVkProfile; Group: TVkGroup):
      TListBoxItem;
    function CreateDocListItem(Listbox: TListBox; Doc: TVkDocument): TListBoxItem;
    function CreateFaveListItem(Listbox: TListBox; Item: TVkFave): TListBoxItem;
    function CreateGroupListItem(Listbox: TListBox; Item: TVkGroup): TListBoxItem;
    function CreateLinkListItem(Listbox: TListBox; Item: TVkLink): TListBoxItem;
    function CreateNoteListItem(Listbox: TListBox; Item: TVkNote): TListBoxItem;
    function CreatePhotoListItem(Listbox: TListBox; Photo: TVkPhoto): TListBoxItem;
    function CreateProductListItem(Listbox: TListBox; Item: TVkProduct): TListBoxItem;
    function CreateUserListItem(Listbox: TListBox; Item: TVkProfile): TListBoxItem;
    function CreateVideoAlbumListItem(Listbox: TListBox; Album: TVkVIdeoAlbum): TListBoxItem;
    function CreateVideoListItem(Listbox: TListBox; Item: TVkVideo): TListBoxItem;
    function CreateWallListItem(Listbox: TListBox; Item: TVkPost; Items: TVkPosts): TListBoxItem;
    procedure ButtonGroupClick(Sender: TObject);
    procedure DownloadFinish(Sender: TObject; CurrentFile: string; LeftDownload: Integer);
    procedure DownloadProgress(Sender: TObject; CurrentFile: string; LeftDownload: Integer; ProgressCurrent: Single);
    procedure LoadAlbums(OwnerId: Integer = 0);
    procedure LoadAudioPlaylists(OwnerId: Integer = 0);
    procedure LoadAudios(OwnerId: Integer = 0);
    procedure LoadDialogs(GroupID: Integer = 0);
    procedure LoadDocs(OwnerId: Integer = 0);
    procedure LoadFaves;
    procedure LoadFriends;
    procedure LoadMembers(const GroupID: Integer);
    procedure LoadGroup(const GroupID: Integer);
    procedure LoadGroups;
    procedure LoadingPage;
    procedure LoadingPageEnd;
    procedure LoadingStart;
    procedure LoadingStop;
    procedure LoadMarket(OwnerId: Integer = 0);
    procedure LoadNotes;
    procedure LoadPhotos(AlbumId: Integer; AlbumName: string; OwnerId: Integer = 0);
    procedure LoadVideoAlbums(OwnerId: Integer = 0);
    procedure LoadVideos(AlbumId: Integer; AlbumName: string; OwnerId: Integer = 0);
    procedure LoadWall(OwnerId: Integer = 0);
    procedure SelectMenuItem(Button: TButton);
    procedure SetDownloadManager(const Value: TSaveManager);
    procedure SetPreviewImage(const Value: TImagePreview);
    procedure LoadBoard;
    function CreateBoardListItem(Listbox: TListBox; Item: TVkBoardTopic): TListBoxItem;
  public
    procedure AddButtonGroup(ACaption: string; AGroupId: Int64; APhoto: TBitmap);
    procedure ClearButtonGroups;
    procedure LoadInfo;
    procedure LoginError(Url: string);
    procedure OpenPage(Tab: TTabItem);
    property DownloadManager: TSaveManager read FDownloadManager write SetDownloadManager;
    property PreviewImage: TImagePreview read FPreviewImage write SetPreviewImage;
  end;

const
  IHeight = 165;
  IScroll = 25;
  IWidth = 245;

var
  FormMain: TFormMain;
  FileTypes: array of string = ['', '3ds', 'dll', 'jpeg', 'log', 'jar', 'doc', 'ppt', 'obj', 'flv', 'dat', 'ai', 'gif',
    'bat', 'php', 'dwg', 'exe', 'eml', 'pdf', 'html', 'iso', 'srt', 'rar', 'xml', 'otf', 'zip', 'app', 'js', 'psd',
    'jpg', 'css', 'mp4', 'docx', 'mp3', 'csv', 'asp', 'eps', 'sql', 'cpp', 'ttf', 'mov', 'txt', 'wav', 'svg', 'png',
    'cs', 'xls', 'ics', 'xlsx', 'mdb', 'pub', 'torrent'];

implementation

uses
  System.IOUtils, HGM.Common.Download, VK.FMX.OAuth2, VK.Groups, VK.Friends, VK.Photos, VK.Video, VK.Audio, VK.Messages,
  VK.Docs, VK.Fave, VK.Notes, VK.Wall, VK.Market, VK.Entity.Common, VK.Board, VK.Entity.Board.Comment, VK.Handler,
  VK.Notifications, VK.Entity.Notifications, VK.Entity.Photo.Upload, VK.Clients;

{$R *.fmx}

procedure SetChecks(ListBox: TListBox; CheckBox: TCheckBox);
var
  i: Integer;
begin
  if CheckBox.IsChecked then
    CheckBox.Text := 'Снять выделение'
  else
    CheckBox.Text := 'Выделить все';
  for i := 0 to ListBox.Count - 1 do
    ListBox.ListItems[i].IsChecked := CheckBox.IsChecked;
end;

procedure TFormMain.SelectMenuItem(Button: TButton);
begin
  VertScrollBoxMenu.EnumControls(
    function(AControl: TControl): TEnumControlsResult
    begin
      if AControl is TButton then
        (AControl as TButton).IsPressed := (AControl as TButton) = Button;
      Result := TEnumControlsResult.Continue;
    end);
  VertScrollBoxMenuGroup.EnumControls(
    function(AControl: TControl): TEnumControlsResult
    begin
      if AControl is TButton then
        (AControl as TButton).IsPressed := (AControl as TButton) = Button;
      Result := TEnumControlsResult.Continue;
    end);
  ButtonMenuSettings.IsPressed := ButtonMenuSettings = Button;
end;

procedure TFormMain.SetDownloadManager(const Value: TSaveManager);
begin
  FDownloadManager := Value;
end;

procedure TFormMain.SetPreviewImage(const Value: TImagePreview);
begin
  FPreviewImage := Value;
end;

procedure TFormMain.SwitchMenuSwitch(Sender: TObject);
begin
  if SwitchMenu.IsChecked then
  begin
    MultiViewMain.Mode := TMultiViewMode.Panel;
    MultiViewMain.Margins.Right := 10;
    Padding.Left := 0;
    MultiViewMainShown(nil);
  end
  else
  begin
    MultiViewMain.Mode := TMultiViewMode.NavigationPane;
    Padding.Left := 60;
    MultiViewMainStartHiding(nil);
  end;
end;

function TFormMain.CreatePhotoListItem(Listbox: TListBox; Photo: TVkPhoto): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  Result.TagString := Photo.Sizes.GetSizeMin('w', True).Url;
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);

  RectangleBG.Align := TAlignLayout.Contents;
  RectangleBG.Margins.Rect := TRectF.Create(26, 5, 5, 5);
  RectangleBG.ClipChildren := True;
  RectangleBG.Parent := Result;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.Align := TAlignLayout.Center;
  RectangleImage.HitTest := False;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.Visible := False;
  if Assigned(Photo.Sizes.GetSizeMax('x', True)) then
  begin
    RectangleImage.LoadFromUrlAsync(Photo.Sizes.GetSizeMax('x', True).URL,
      procedure(Image: TImage)
      begin
        if Assigned(RectangleImage.Bitmap) and (not RectangleImage.Bitmap.IsEmpty) then
        begin
          RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
            RectangleImage.Bitmap.Height) + 4;
          RectangleImage.Height := RectangleImage.Width * (RectangleImage.Bitmap.Height /
            RectangleImage.Bitmap.Width) + 4;

          if RectangleImage.Height > Listbox.ItemHeight then
          begin
            RectangleImage.Height := Listbox.ItemWidth * (RectangleImage.Bitmap.Height /
              RectangleImage.Bitmap.Width) + 4;
            RectangleImage.Width := RectangleImage.Height * (RectangleImage.Bitmap.Width /
              RectangleImage.Bitmap.Height) + 4;
          end;
          Image.Visible := True;
          Image.Repaint;
        end;
      end);
  end;
end;

function TFormMain.CreateVideoListItem(Listbox: TListBox; Item: TVkVideo): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);

  RectangleBG.Align := TAlignLayout.Contents;
  RectangleBG.Margins.Rect := TRectF.Create(26, 5, 5, 5);
  RectangleBG.ClipChildren := True;
  RectangleBG.Parent := Result;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.Align := TAlignLayout.Center;
  RectangleImage.HitTest := False;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.Visible := False;
  if Assigned(Item.Image) then
  begin
    RectangleImage.LoadFromUrlAsync(Item.Image[High(Item.Image)].URL,
      procedure(Image: TImage)
      begin
        if Assigned(RectangleImage.Bitmap) and (not RectangleImage.Bitmap.IsEmpty) then
        begin
          RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
            RectangleImage.Bitmap.Height) + 4;
          RectangleImage.Height := RectangleImage.Width * (RectangleImage.Bitmap.Height /
            RectangleImage.Bitmap.Width) + 4;

          if RectangleImage.Height > Listbox.ItemHeight then
          begin
            RectangleImage.Height := Listbox.ItemWidth * (RectangleImage.Bitmap.Height /
              RectangleImage.Bitmap.Width) + 4;
            RectangleImage.Width := RectangleImage.Height * (RectangleImage.Bitmap.Width /
              RectangleImage.Bitmap.Height) + 4;
          end;
          Image.Visible := True;
          Image.Repaint;
        end;
      end);
  end;
end;

function TFormMain.CreateProductListItem(Listbox: TListBox; Item: TVkProduct): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
  RectangleTitle: TRectangle;
  LabelTitle: TLabel;
  LabelSize: TLabel;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  Result.Text := '';
  Result.Tag := Item.Id;
  Result.TagString := Item.Title;
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);
  RectangleTitle := TRectangle.Create(Result);
  LabelTitle := TLabel.Create(Result);
  LabelSize := TLabel.Create(Result);

  RectangleBG.Align := TAlignLayout.Contents;
  RectangleBG.Margins.Rect := TRectF.Create(26, 5, 5, 5);
  RectangleBG.ClipChildren := True;
  RectangleBG.Parent := Result;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.HitTest := False;
  RectangleImage.Visible := False;
  if not Item.ThumbPhoto.IsEmpty then
  begin
    RectangleImage.LoadFromUrlAsync(Item.ThumbPhoto,
      procedure(Image: TImage)
      begin
        if Assigned(RectangleImage.Bitmap) and (not RectangleImage.Bitmap.IsEmpty) then
        begin
          RectangleImage.Align := TAlignLayout.HorzCenter;
          RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
            RectangleImage.Bitmap.Height) + 4;

          if RectangleImage.Height < RectangleImage.Bitmap.Height then
          begin
            RectangleImage.Align := TAlignLayout.VertCenter;
            RectangleImage.Height := Listbox.ItemWidth * (RectangleImage.Bitmap.Height /
              RectangleImage.Bitmap.Width) + 4;
            RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
              RectangleImage.Bitmap.Height) + 4;
          end;
          Image.Visible := True;
          Image.Repaint;
        end;
      end);
  end;

  RectangleTitle.Parent := Result;
  RectangleTitle.HitTest := False;
  RectangleTitle.Margins.Rect := TRectF.Create(26, 5, 5, 5);
  RectangleTitle.Fill.Kind := TBrushKind.Gradient;
  RectangleTitle.Fill.Gradient.Style := TGradientStyle.Linear;
  RectangleTitle.Fill.Gradient.Color := TAlphaColorF.Create(0, 0, 0, 0).ToAlphaColor;
  RectangleTitle.Fill.Gradient.Color1 := TAlphaColorF.Create(0, 0, 0, 1).ToAlphaColor;
  RectangleTitle.Stroke.Kind := TBrushKind.None;
  RectangleTitle.Align := TAlignLayout.Bottom;
  RectangleTitle.Height := 35;
  RectangleTitle.Opacity := 0.9;
  RectangleTitle.Padding.Rect := TRectF.Create(10, 0, 10, 10);
  RectangleTitle.BringToFront;

  LabelTitle.Parent := RectangleTitle;
  LabelTitle.HitTest := False;
  LabelTitle.Margins.Rect := TRectF.Create(0, 0, 0, 0);
  LabelTitle.Align := TAlignLayout.Client;
  LabelTitle.TextSettings.WordWrap := True;
  LabelTitle.TextAlign := TTextAlign.Leading;
  LabelTitle.VertTextAlign := TTextAlign.Trailing;
  LabelTitle.Text := Item.Title;
  LabelTitle.StyledSettings := [];
  LabelTitle.Font.Size := 13;
  LabelTitle.Font.Style := [TFontStyle.fsBold];
  LabelTitle.TextSettings.FontColor := TAlphaColorRec.White;

  if Item.ViewsCount > 0 then
  begin
    LabelSize.Parent := RectangleTitle;
    LabelSize.HitTest := False;
    LabelSize.Margins.Rect := TRectF.Create(0, 0, 0, 0);
    LabelSize.Align := TAlignLayout.Right;
    LabelSize.TextSettings.WordWrap := False;
    LabelSize.TextAlign := TTextAlign.Trailing;
    LabelSize.VertTextAlign := TTextAlign.Trailing;
    LabelSize.AutoSize := True;
    LabelSize.Font.Size := 13;
    LabelSize.Text := Item.ViewsCount.ToString;
    LabelSize.StyledSettings := [];
    LabelSize.TextSettings.FontColor := TAlphaColorRec.Whitesmoke;
  end;
  Result.RecalcAbsoluteNow;
end;

function TFormMain.CreateVideoAlbumListItem(Listbox: TListBox; Album: TVkVIdeoAlbum): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
  RectangleTitle: TRectangle;
  LabelTitle: TLabel;
  LabelSize: TLabel;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  Result.Text := '';
  Result.Tag := Album.Id;
  Result.TagString := Album.Title;
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);
  RectangleTitle := TRectangle.Create(Result);
  LabelTitle := TLabel.Create(Result);
  LabelSize := TLabel.Create(Result);

  RectangleBG.Align := TAlignLayout.Contents;
  RectangleBG.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleBG.ClipChildren := True;
  RectangleBG.Parent := Result;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.HitTest := False;
  RectangleImage.Visible := False;
  if Length(Album.Image) > 0 then
  begin
    RectangleImage.LoadFromUrlAsync(Album.Image[High(Album.Image)].Url,
      procedure(Image: TImage)
      begin
        if Assigned(RectangleImage.Bitmap) and (not RectangleImage.Bitmap.IsEmpty) then
        begin
          RectangleImage.Align := TAlignLayout.HorzCenter;
          RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
            RectangleImage.Bitmap.Height) + 4;

          if RectangleImage.Height < RectangleImage.Bitmap.Height then
          begin
            RectangleImage.Align := TAlignLayout.VertCenter;
            RectangleImage.Height := Listbox.ItemWidth * (RectangleImage.Bitmap.Height /
              RectangleImage.Bitmap.Width) + 4;
            RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
              RectangleImage.Bitmap.Height) + 4;
          end;
          Image.Visible := True;
          Image.Repaint;
        end;
      end);
  end;

  RectangleTitle.Parent := Result;
  RectangleTitle.HitTest := False;
  RectangleTitle.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleTitle.Fill.Kind := TBrushKind.Gradient;
  RectangleTitle.Fill.Gradient.Style := TGradientStyle.Linear;
  RectangleTitle.Fill.Gradient.Color := TAlphaColorF.Create(0, 0, 0, 0).ToAlphaColor;
  RectangleTitle.Fill.Gradient.Color1 := TAlphaColorF.Create(0, 0, 0, 1).ToAlphaColor;
  RectangleTitle.Stroke.Kind := TBrushKind.None;
  RectangleTitle.Align := TAlignLayout.Bottom;
  RectangleTitle.Height := 35;
  RectangleTitle.Opacity := 0.9;
  RectangleTitle.Padding.Rect := TRectF.Create(10, 0, 10, 10);
  RectangleTitle.BringToFront;

  LabelTitle.Parent := RectangleTitle;
  LabelTitle.Margins.Rect := TRectF.Create(0, 0, 0, 0);
  LabelTitle.Align := TAlignLayout.Client;
  LabelTitle.TextSettings.WordWrap := True;
  LabelTitle.TextAlign := TTextAlign.Leading;
  LabelTitle.VertTextAlign := TTextAlign.Trailing;
  LabelTitle.Text := Album.Title;
  LabelTitle.HitTest := False;
  if Assigned(Album.Privacy) then
  begin
    if Album.Privacy.Category <> 'all' then
      LabelTitle.Text := '● ' + LabelTitle.Text;
  end;
  LabelTitle.StyledSettings := [];
  LabelTitle.Font.Size := 13;
  LabelTitle.Font.Style := [TFontStyle.fsBold];
  LabelTitle.TextSettings.FontColor := TAlphaColorRec.White;

  if Album.Count > 0 then
  begin
    LabelSize.Parent := RectangleTitle;
    LabelSize.HitTest := False;
    LabelSize.Margins.Rect := TRectF.Create(0, 0, 0, 0);
    LabelSize.Align := TAlignLayout.Right;
    LabelSize.TextSettings.WordWrap := False;
    LabelSize.TextAlign := TTextAlign.Trailing;
    LabelSize.VertTextAlign := TTextAlign.Trailing;
    LabelSize.AutoSize := True;
    LabelSize.Font.Size := 13;
    LabelSize.Text := Album.Count.ToString;
    LabelSize.StyledSettings := [];
    LabelSize.TextSettings.FontColor := TAlphaColorRec.Whitesmoke;
  end;
  Result.RecalcAbsoluteNow;
end;

function TFormMain.CreateAlbumListItem(Listbox: TListBox; Album: TVkPhotoAlbum): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
  RectangleTitle: TRectangle;
  LabelTitle: TLabel;
  LabelSize: TLabel;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  Result.Text := '';
  Result.Tag := Album.Id;
  Result.TagString := Album.Title;
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);
  RectangleTitle := TRectangle.Create(Result);
  LabelTitle := TLabel.Create(Result);
  LabelSize := TLabel.Create(Result);

  RectangleBG.Align := TAlignLayout.Contents;
  RectangleBG.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleBG.ClipChildren := True;
  RectangleBG.Parent := Result;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.HitTest := False;
  RectangleImage.Visible := False;
  if Assigned(Album.Sizes.GetSizeMax('x')) then
  begin
    RectangleImage.LoadFromUrlAsync(Album.Sizes.GetSizeMax('x').Src,
      procedure(Image: TImage)
      begin
        if Assigned(RectangleImage.Bitmap) and (not RectangleImage.Bitmap.IsEmpty) then
        begin
          RectangleImage.Align := TAlignLayout.HorzCenter;
          RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
            RectangleImage.Bitmap.Height) + 4;

          if RectangleImage.Height < RectangleImage.Bitmap.Height then
          begin
            RectangleImage.Align := TAlignLayout.VertCenter;
            RectangleImage.Height := Listbox.ItemWidth * (RectangleImage.Bitmap.Height /
              RectangleImage.Bitmap.Width) + 4;
            RectangleImage.Width := Listbox.ItemHeight * (RectangleImage.Bitmap.Width /
              RectangleImage.Bitmap.Height) + 4;
          end;
          Image.Visible := True;
          Image.Repaint;
        end;
      end);
  end;

  RectangleTitle.Parent := Result;
  RectangleTitle.HitTest := False;
  RectangleTitle.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleTitle.Fill.Kind := TBrushKind.Gradient;
  RectangleTitle.Fill.Gradient.Style := TGradientStyle.Linear;
  RectangleTitle.Fill.Gradient.Color := TAlphaColorF.Create(0, 0, 0, 0).ToAlphaColor;
  RectangleTitle.Fill.Gradient.Color1 := TAlphaColorF.Create(0, 0, 0, 1).ToAlphaColor;
  RectangleTitle.Stroke.Kind := TBrushKind.None;
  RectangleTitle.Align := TAlignLayout.Bottom;
  RectangleTitle.Height := 35;
  RectangleTitle.Opacity := 0.9;
  RectangleTitle.Padding.Rect := TRectF.Create(10, 0, 10, 10);
  RectangleTitle.BringToFront;

  LabelTitle.Parent := RectangleTitle;
  LabelTitle.HitTest := False;
  LabelTitle.Margins.Rect := TRectF.Create(0, 0, 0, 0);
  LabelTitle.Align := TAlignLayout.Client;
  LabelTitle.TextSettings.WordWrap := True;
  LabelTitle.TextAlign := TTextAlign.Leading;
  LabelTitle.VertTextAlign := TTextAlign.Trailing;
  LabelTitle.Text := Album.Title;
  if Assigned(Album.PrivacyView) then
  begin
    if Album.PrivacyView.Category <> 'all' then
      LabelTitle.Text := '● ' + LabelTitle.Text;
  end;

  LabelTitle.StyledSettings := [];
  LabelTitle.Font.Size := 13;
  LabelTitle.Font.Style := [TFontStyle.fsBold];
  LabelTitle.TextSettings.FontColor := TAlphaColorRec.White;

  if Album.Size > 0 then
  begin
    LabelSize.Parent := RectangleTitle;
    LabelSize.HitTest := False;
    LabelSize.Margins.Rect := TRectF.Create(0, 0, 0, 0);
    LabelSize.Align := TAlignLayout.Right;
    LabelSize.TextSettings.WordWrap := False;
    LabelSize.TextAlign := TTextAlign.Trailing;
    LabelSize.VertTextAlign := TTextAlign.Trailing;
    LabelSize.AutoSize := True;
    LabelSize.Font.Size := 13;
    LabelSize.Text := Album.Size.ToString;
    LabelSize.StyledSettings := [];
    LabelSize.TextSettings.FontColor := TAlphaColorRec.Whitesmoke;
  end;
  Result.RecalcAbsoluteNow;
end;

procedure TFormMain.CheckBoxPhotoSelectChange(Sender: TObject);
begin
  SetChecks(ListBoxPhotos, CheckBoxPhotoSelect);
end;

procedure TFormMain.CheckBoxWallSelectChange(Sender: TObject);
begin
  SetChecks(ListBoxWall, CheckBoxWallSelect);
end;

procedure TFormMain.ClearButtonGroups;
begin
  {$IFNDEF AUTOREFCOUNT}
  while LayoutGroups.ControlsCount > 0 do
    LayoutGroups.Controls[0].Free;
  {$ENDIF}
  LayoutGroups.Height := 0;
end;

procedure TFormMain.LoadingStart;
begin
  Inc(FLoadingCount);
  if FLoadingCount = 1 then
  begin
    AniIndicatorLoad.Visible := True;
    AniIndicatorLoad.Enabled := True;
  end;
end;

procedure TFormMain.LoadingStop;
begin
  Dec(FLoadingCount);
  if FLoadingCount <= 0 then
  begin
    FLoadingCount := 0;
    AniIndicatorLoad.Visible := False;
    AniIndicatorLoad.Enabled := False;
  end;
end;

procedure TFormMain.LoadGroup(const GroupID: Integer);
begin
  if FGroupId = GroupID then
    Exit;
  LoadingStart;
  FGroupId := GroupID;
  TTask.Run(
    procedure
    var
      Users: TVkProfiles;
      Conves: TVkConversationItems;
      Posts: TVkPosts;
      Groups: TVkGroups;
      UParams: TVkParamsGroupsGetMembers;
      MParams: TVkParamsConversationsGet;
      WParams: TVkParamsWallGet;
    begin
      LabelMenuGUsers.Text := '';
      LabelMenuGPhotosCnt.Text := '';
      LabelMenuGVideosCnt.Text := '';
      LabelMenuGAudiosCnt.Text := '';
      LabelMenuGDialogsCnt.Text := '';
      LabelMenuGMarketCnt.Text := '';
      LabelMenuGWallCnt.Text := '';
      LabelMenuGBoardCnt.Text := '';
      LabelMenuGDocsCnt.Text := '';

      if VKAPI.Groups.GetById(Groups, GroupID, [gfCounters]) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            if Assigned(Groups.Items[0].Counters) then
            begin
              LabelMenuGPhotosCnt.Text := Groups.Items[0].Counters.Photos.ToString;
              LabelMenuGVideosCnt.Text := Groups.Items[0].Counters.Videos.ToString;
              LabelMenuGAudiosCnt.Text := Groups.Items[0].Counters.Audios.ToString;
              LabelMenuGDocsCnt.Text := Groups.Items[0].Counters.Docs.ToString;
              LabelMenuGBoardCnt.Text := Groups.Items[0].Counters.Topics.ToString;
              LabelMenuGMarketCnt.Text := Groups.Items[0].Counters.Market.ToString;
            end;
            Groups.Free;
          end);
      end
      else
      begin
        LabelMenuGPhotosCnt.Text := '-';
        LabelMenuGVideosCnt.Text := '-';
        LabelMenuGAudiosCnt.Text := '-';
        LabelMenuGDocsCnt.Text := '-';
        LabelMenuGBoardCnt.Text := '-';
        LabelMenuGMarketCnt.Text := '-';
      end;

      UParams.GroupId(GroupID);
      UParams.Count(1);
      if VKAPI.Groups.GetMembers(Users, UParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuGUsers.Text := Users.Count.ToString;
            Users.Free;
          end);
      end;

      MParams.GroupId(GroupID);
      MParams.Count(1);
      if VKAPI.Messages.GetConversations(Conves, MParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuGDialogsCnt.Text := Conves.Count.ToString;
            Conves.Free;
          end);
      end
      else
        LabelMenuGDialogsCnt.Text := '-';

      WParams.OwnerId(-GroupID);
      WParams.Count(1);
      if VKAPI.Wall.Get(Posts, WParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuGWallCnt.Text := Posts.Count.ToString;
            Posts.Free;
          end);
      end;

      TThread.ForceQueue(nil,
        procedure
        begin
          LoadingStop;
        end);
    end);
end;

procedure TFormMain.ButtonGroupClick(Sender: TObject);
var
  Button: TButton absolute Sender;
begin
  ButtonMenuGroupBack.Text := Button.Text;
  LabelGroupHead.Text := Button.Text;
  TabControlMenu.SetActiveTabWithTransitionAsync(TabItemMenuGroup, TTabTransition.Slide, TTabTransitionDirection.Normal, nil);
  LoadGroup(Button.Tag);
end;

procedure TFormMain.AddButtonGroup(ACaption: string; AGroupId: Int64; APhoto: TBitmap);
var
  CircleAvatar: TCircle;
  Btn: TButton;
begin
  Btn := TButton.Create(LayoutGroups);
  with Btn do
  begin
    Parent := LayoutGroups;
    StyleLookup := 'drawertoolbuttonmultiview';
    Images := ImageListControlsW;
    ImageIndex := 10;

    if not APhoto.IsEmpty then
    begin
      CircleAvatar := TCircle.Create(Btn);
      CircleAvatar.Align := TAlignLayout.Left;
      CircleAvatar.Parent := Btn;
      CircleAvatar.Margins.Rect := TRectF.Create(0, 7, 7, 7);
      CircleAvatar.Stroke.Kind := TBrushKind.None;
      CircleAvatar.Fill.Kind := TBrushKind.Bitmap;
      CircleAvatar.Fill.Bitmap.Bitmap.Assign(APhoto);
      CircleAvatar.Fill.Bitmap.WrapMode := TWrapMode.TileStretch;
      CircleAvatar.HitTest := False;
      CircleAvatar.Visible := True;
    end;

    Align := TAlignLayout.Top;
    Text := ACaption;
    StyledSettings := [TStyledSetting.Family, TStyledSetting.Size, TStyledSetting.FontColor, TStyledSetting.Other];
    TextSettings.Font.Style := [];
    Tag := AGroupId;
    OnClick := ButtonGroupClick;
    TextSettings.HorzAlign := TTextAlign.Leading;
    LayoutGroups.Height := LayoutGroups.ControlsCount * Height;
  end;
end;

procedure TFormMain.Button17Click(Sender: TObject);
begin
  if VKAPI.Photos.SaveOwnerPhoto('D:\Мультимедиа\Картинки\15.11.2012\C663F5F2B0D666C4FB70BD870F184367.jpg') then
  begin
    ShowMessage('ok');
  end;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  VKAPI.LogResponse := True;
end;

procedure TFormMain.ButtonMenuGroupMarketClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMMarket);
  LoadMarket(-FGroupId);
end;

procedure TFormMain.ButtonMenuGroupMembersClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMFriends);
  LoadMembers(FGroupId);
end;

procedure TFormMain.ButtonMenuGroupDialogsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMDialogs);
  LoadDialogs(FGroupId);
end;

procedure TFormMain.ButtonMenuGroupDocsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMDocs);
  LoadDocs(-FGroupId);
end;

procedure TFormMain.Button7Click(Sender: TObject);
begin
  TabControlVideos.ActiveTab := TabItemVideosAlbums;
end;

procedure TFormMain.ButtonMenuGroupPhotosClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMPhotos);
  LoadAlbums(-FGroupId);
end;

procedure TFormMain.ButtonAuthResetClick(Sender: TObject);
begin
  {$IFDEF MSWINDOWS}
  TDialogService.MessageDialog('Вы уверены, что хотите сбросить авторизацию?',
    TMsgDlgType.mtWarning, mbYesNoCancel, TMsgDlgBtn.mbCancel, 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYes then
        DeleteCache('vk.com');
    end);
  {$ENDIF}
end;

procedure TFormMain.ButtonLoginClick(Sender: TObject);
begin
  ButtonLogin.Enabled := False;
  AniIndicatorLogin.Enabled := True;
  AniIndicatorLogin.Visible := True;
  //VKAPI.Login; // '+79512202848', 'IdidNAH009',
  VKAPI.Application := TVkApplicationData.Android;
  VKAPI.Login(EditLogin.Text, EditPassword.Text,
    function(const ValidationType: TVkValidationType; var Code: string; var Remember: Boolean): Boolean
    begin
      Code := InputBox('Двухэтапная авторизация', 'Введите код', '');
      Remember := True;
      Result := not Code.IsEmpty;
    end);
end;

procedure TFormMain.ButtonLoginOAuth2Click(Sender: TObject);
begin
  ButtonLogin.Enabled := False;
  AniIndicatorLogin.Enabled := True;
  AniIndicatorLogin.Visible := True;
  VKAPI.Application := TVkApplicationData.VKAdmin;
  VKAPI.Login;
end;

procedure TFormMain.ButtonMenuAudioClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMAudio);
  LoadAudios;
  LoadAudioPlaylists;
end;

procedure TFormMain.LoadFaves;
begin
  if not ListBoxFaves.Visible then
    Exit;
  ListBoxFaves.Visible := False;
  ListBoxFaves.BeginUpdate;
  ListBoxFaves.Clear;
  LabelHeadFavesCnt.Text := 'Закладки';
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkFave;
          Items: TVkFaves;
          Params: TVkParamsFaveGet;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          if VKAPI.Fave.Get(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxFaves.AddObject(CreateFaveListItem(ListBoxFaves, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadFavesCnt.Text := 'Закладки (' + Cnt.ToString + ')';
          LabelHeadFavesCnt.Repaint;
          ListBoxFaves.EndUpdate;
          ListBoxFaves.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.ButtonMenuFavesClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMFaves);
  LoadFaves;
end;

procedure TFormMain.ButtonMenuClick(Sender: TObject);
begin
  if TPresentationState.Moving in MultiViewMain.Presenter.State then
    Exit;
  if not FCanManuAction then
    Exit;
  FCanManuAction := False;
  if MultiViewMain.Presenter.Opened then
    MultiViewMain.Presenter.Close
  else
    MultiViewMain.Presenter.Open;
end;

procedure TFormMain.LoadDialogs;
begin
  if not ListBoxDialogs.Visible then
    Exit;
  ListBoxDialogs.Visible := False;
  ListBoxDialogs.BeginUpdate;
  ListBoxDialogs.Clear;
  LabelHeadDialogsCnt.Text := 'Диалоги';
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkConversationItem;
          Items: TVkConversationItems;
          Params: TVkParamsConversationsGet;
          UserId: Integer;
          User: TVkProfile;
          Group: TVkGroup;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          Params.Extended(True);
          if GroupID <> 0 then
            Params.GroupId(GroupID);
          if VKAPI.Messages.GetConversations(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            for Item in Items.Items do
            begin
              User := nil;
              Group := nil;
              if not Item.Conversation.IsChat then
              begin
                if Item.Conversation.Peer.Id > 0 then
                begin
                  UserId := FindUser(Item.Conversation.Peer.Id, Items.Profiles);
                  if UserId >= 0 then
                    User := Items.Profiles[UserId];
                end
                else
                begin
                  UserId := FindGroup(Item.Conversation.Peer.Id, Items.Groups);
                  if UserId >= 0 then
                    Group := Items.Groups[UserId];
                end;
              end;
              ListBoxDialogs.AddObject(CreateDialogListItem(ListBoxDialogs, Item, User, Group));
            end;
            Items.Free;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadDialogsCnt.Text := 'Дилоги (' + Cnt.ToString + ')';
          ListBoxDialogs.EndUpdate;
          ListBoxDialogs.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.ButtonMenuDialogsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMDialogs);
  LoadDialogs;
end;

function TFormMain.CreateDocListItem(Listbox: TListBox; Doc: TVkDocument): TListBoxItem;
var
  i: Integer;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.ItemData.Detail := Doc.SizeStr + ' ' + FormatDateTime('c', Doc.Date);
  Result.ItemData.Text := Doc.Title;
  Result.ImageIndex := 0;
  for i := Low(FileTypes) to High(FileTypes) do
  begin
    if FileTypes[i] = Doc.Ext then
    begin
      Result.ImageIndex := i;
      Break;
    end;
  end;
end;

function TFormMain.CreateDialogListItem(Listbox: TListBox; Item: TVkConversationItem; Profile: TVkProfile; Group:
  TVkGroup): TListBoxItem;
var
  ItemLink: TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  ItemLink := Result;
  if Assigned(Item.LastMessage) then
  begin
    Result.ItemData.Detail := Item.LastMessage.Text + ' ' + FormatDateTime('c', Item.LastMessage.Date);
  end;
  if not Item.Conversation.IsChat then
  begin
    if Item.Conversation.Peer.IsUser then
    begin
      if Assigned(Profile) then
      begin
        Result.ItemData.Text := Profile.GetFullName;
        Result.ItemData.Bitmap.LoadFromUrlAsync(Profile.Photo50, True,
          procedure(Image: TBitmap)
          begin
            if Assigned(ItemLink) then
            begin
              ItemLink.ImageIndex := 0;
              ItemLink.ImageIndex := -1;
            end;
          end);
      end;
    end
    else
    begin
      if Assigned(Group) then
      begin
        Result.ItemData.Text := Group.Name;
        Result.ItemData.Bitmap.LoadFromUrlAsync(Group.Photo50, True,
          procedure(Image: TBitmap)
          begin
            if Assigned(ItemLink) then
            begin
              ItemLink.ImageIndex := 0;
              ItemLink.ImageIndex := -1;
            end;
          end);
      end;
    end;
  end
  else
  begin
    Result.ItemData.Text := Item.Conversation.ChatSettings.Title;
    Result.ItemData.Bitmap.LoadFromUrlAsync(Item.Conversation.ChatSettings.Photo.Photo50, True,
      procedure(Image: TBitmap)
      begin
        if Assigned(ItemLink) then
        begin
          ItemLink.ImageIndex := 0;
          ItemLink.ImageIndex := -1;
        end;
      end);
  end;
end;

function TFormMain.CreateNoteListItem(Listbox: TListBox; Item: TVkNote): TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.ItemData.Detail := Item.Text;
  Result.ItemData.Text := Item.Title + ' - ' + FormatDateTime('c', Item.Date);
end;

function TFormMain.CreateLinkListItem(Listbox: TListBox; Item: TVkLink): TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.ItemData.Detail := Item.Url;
  Result.ItemData.Text := Item.Title + ' - ' + Item.Description;
end;

function TFormMain.CreateFaveListItem(Listbox: TListBox; Item: TVkFave): TListBoxItem;
begin
  if Item.&Type = ftVideo then
    Result := CreateVideoListItem(Listbox, Item.Video)
  else if Item.&Type = ftProduct then
    Result := CreateProductListItem(Listbox, Item.Product)
  else if Item.&Type = ftLink then
    Result := CreateLinkListItem(Listbox, Item.Link)
  else
  begin
    Result := TListBoxItem.Create(Listbox);
    Result.ItemData.Detail := FormatDateTime('c', Item.AddedDate);
    Result.ItemData.Text := Item.&Type.ToString;
  end;
end;

function TFormMain.CreateWallListItem(Listbox: TListBox; Item: TVkPost; Items: TVkPosts): TListBoxItem;
var
  Id: Integer;
  From: string;
begin
  Result := TListBoxItem.Create(Listbox);
  if Item.FromId <> FUserId then
  begin
    if Item.FromId > 0 then
    begin
      Id := FindUser(Item.FromId, Items.Profiles);
      if Id >= 0 then
        From := Items.Profiles[Id].GetFullName;
    end
    else
    begin
      Id := FindGroup(Item.FromId, Items.Groups);
      if Id >= 0 then
        From := Items.Groups[Id].Name;
    end;
  end
  else
    From := 'Вы';
  From := From + ' | ' + FormatDateTime('c', Item.Date);
  if Length(Item.CopyHistory) > 0 then
  begin
    From := From + ' [Репост]';
  end;
  Result.ItemData.Text := From;
  Result.ItemData.Detail := Item.Text;
  if Length(Item.Attachments) > 0 then
    Result.ItemData.Detail := Result.ItemData.Detail + ' [Вложений: ' + Length(Item.Attachments).ToString + ']';
  if Result.ItemData.Detail.IsEmpty then
  begin
    if Length(Item.CopyHistory) > 0 then
    begin
      Result.ItemData.Detail := Item.CopyHistory[0].Text;
      if Length(Item.CopyHistory[0].Attachments) > 0 then
        Result.ItemData.Detail := Result.ItemData.Detail + ' [Вложений: ' + Length(Item.CopyHistory[0].Attachments).ToString
          + ']';
      if Result.ItemData.Detail.IsEmpty then
        Result.ItemData.Detail := '[Репост записи со страницы]';
    end;
  end;
  Result.TagFloat := Item.Date;
  Result.ItemData.Detail := Result.ItemData.Detail.Trim;
end;

procedure TFormMain.DownloadFinish(Sender: TObject; CurrentFile: string; LeftDownload: Integer);
begin
  if ProgressBarDownload1.TagString = CurrentFile then
  begin
    ProgressBarDownload1.Value := 0;
    ProgressBarDownload1.TagString := '';
  end
  else if ProgressBarDownload2.TagString = CurrentFile then
  begin
    ProgressBarDownload2.Value := 0;
    ProgressBarDownload2.TagString := '';
  end
  else if ProgressBarDownload3.TagString = CurrentFile then
  begin
    ProgressBarDownload3.Value := 0;
    ProgressBarDownload3.TagString := '';
  end
  else if ProgressBarDownload4.TagString = CurrentFile then
  begin
    ProgressBarDownload4.Value := 0;
    ProgressBarDownload4.TagString := '';
  end
  else if ProgressBarDownload5.TagString = CurrentFile then
  begin
    ProgressBarDownload5.Value := 0;
    ProgressBarDownload5.TagString := '';
  end;
  LabelDownload.Text := 'Осталось - ' + LeftDownload.ToString;
  LayoutDownload.Visible := LeftDownload > 0;
end;

procedure TFormMain.DownloadProgress(Sender: TObject; CurrentFile: string; LeftDownload: Integer; ProgressCurrent: Single);
begin
  LayoutDownload.Visible := True;
  if ProgressBarDownload1.TagString = CurrentFile then
    ProgressBarDownload1.Value := ProgressCurrent
  else if ProgressBarDownload2.TagString = CurrentFile then
    ProgressBarDownload2.Value := ProgressCurrent
  else if ProgressBarDownload3.TagString = CurrentFile then
    ProgressBarDownload3.Value := ProgressCurrent
  else if ProgressBarDownload4.TagString = CurrentFile then
    ProgressBarDownload4.Value := ProgressCurrent
  else if ProgressBarDownload5.TagString = CurrentFile then
    ProgressBarDownload5.Value := ProgressCurrent
  else
  begin
    if ProgressBarDownload1.TagString = '' then
    begin
      ProgressBarDownload1.Value := ProgressCurrent;
      ProgressBarDownload1.TagString := CurrentFile;
    end
    else if ProgressBarDownload2.TagString = '' then
    begin
      ProgressBarDownload2.Value := ProgressCurrent;
      ProgressBarDownload2.TagString := CurrentFile;
    end
    else if ProgressBarDownload3.TagString = '' then
    begin
      ProgressBarDownload3.Value := ProgressCurrent;
      ProgressBarDownload3.TagString := CurrentFile;
    end
    else if ProgressBarDownload4.TagString = '' then
    begin
      ProgressBarDownload4.Value := ProgressCurrent;
      ProgressBarDownload4.TagString := CurrentFile;
    end
    else if ProgressBarDownload5.TagString = '' then
    begin
      ProgressBarDownload5.Value := ProgressCurrent;
      ProgressBarDownload5.TagString := CurrentFile;
    end;
  end;
end;

function TFormMain.CreateUserListItem(Listbox: TListBox; Item: TVkProfile): TListBoxItem;
var
  ItemLink: TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  ItemLink := Result;
  if not Item.Status.IsEmpty then
    Result.ItemData.Detail := Item.Status
  else if Length(Item.Career) > 0 then
    Result.ItemData.Detail := Item.UniversityName
  else
    Result.ItemData.Detail := Item.City.Title;
  Result.ItemData.Text := Item.GetFullName;
  Result.ItemData.Bitmap.LoadFromUrlAsync(Item.Photo50, True,
    procedure(Image: TBitmap)
    begin
      if Assigned(ItemLink) then
      begin
        ItemLink.ImageIndex := 0;
        ItemLink.ImageIndex := -1;
      end;
    end);
end;

function TFormMain.CreateAudioListItem(Listbox: TListBox; Audio: TVkAudio): TListBoxItem;
var
  ItemLink: TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  ItemLink := Result;
  Result.ItemData.Detail := Audio.Artist;
  Result.ItemData.Text := Audio.Title;
  //Result.ImageIndex := 33;
  if Assigned(Audio.Album) and Assigned(Audio.Album.Thumb) then
    Result.ItemData.Bitmap.LoadFromUrlAsync(Audio.Album.Thumb.Photo68, True,
      procedure(Image: TBitmap)
      begin
        if Assigned(ItemLink) then
        begin
          ItemLink.ImageIndex := 0;
          ItemLink.ImageIndex := -1;
        end;
      end);
end;

function TFormMain.CreateBoardListItem(Listbox: TListBox; Item: TVkBoardTopic): TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.ItemData.Detail := DateTimeToStr(Item.Created);
  Result.ItemData.Text := Item.Title;
end;

function TFormMain.CreateGroupListItem(Listbox: TListBox; Item: TVkGroup): TListBoxItem;
var
  ItemLink: TListBoxItem;
begin
  Result := TListBoxItem.Create(Listbox);
  ItemLink := Result;
  Result.ItemData.Detail := Item.Description;
  //Item.
  Result.ItemData.Text := Item.Name;
  Result.ItemData.Bitmap.LoadFromUrlAsync(Item.Photo50, True,
    procedure(Image: TBitmap)
    begin
      if Assigned(ItemLink) then
      begin
        ItemLink.ImageIndex := 0;
        ItemLink.ImageIndex := -1;
      end;
    end);
end;

function TFormMain.CreateAudioPlaylistListItem(Listbox: TListBox; Playlist: TVkAudioPlaylist): TListBoxItem;
var
  RectangleBG: TRectangle;
  RectangleImage: TImage;
  RectangleTitle: TLayout;
  LabelTitle: TLabel;
  LabelSize: TLabel;
begin
  Result := TListBoxItem.Create(Listbox);
  Result.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  Result.Text := '';
  Result.Tag := Playlist.Id;
  Result.TagString := Playlist.Title;
  RectangleBG := TRectangle.Create(Result);
  RectangleImage := TImage.Create(Result);
  RectangleTitle := TLayout.Create(Result);
  LabelTitle := TLabel.Create(Result);
  LabelSize := TLabel.Create(Result);

  RectangleBG.Parent := Result;
  RectangleBG.Align := TAlignLayout.Client;
  RectangleBG.Margins.Rect := TRectF.Create(5, 5, 5, 0);
  RectangleBG.ClipChildren := True;
  RectangleBG.HitTest := False;
  RectangleBG.Stroke.Kind := TBrushKind.None;
  RectangleBG.Fill.Color := TAlphaColorRec.Black;

  RectangleImage.Parent := RectangleBG;
  RectangleImage.WrapMode := TImageWrapMode.Stretch;
  RectangleImage.HitTest := False;
  RectangleImage.Visible := False;
  RectangleImage.Align := TAlignLayout.Client;
  if Assigned(Playlist.Photo) then
  begin
    RectangleImage.LoadFromUrlAsync(Playlist.Photo.Photo135,
      procedure(Image: TImage)
      begin
        Image.Visible := True;
      end);
  end;

  RectangleTitle.Parent := Result;
  RectangleTitle.HitTest := False;
  RectangleTitle.Margins.Rect := TRectF.Create(5, 5, 5, 5);
  RectangleTitle.Align := TAlignLayout.Bottom;
  RectangleTitle.Height := 20;

  LabelTitle.Parent := RectangleTitle;
  LabelTitle.HitTest := False;
  LabelTitle.Margins.Rect := TRectF.Create(0, 0, 0, 0);
  LabelTitle.Align := TAlignLayout.Client;
  LabelTitle.TextSettings.WordWrap := True;
  LabelTitle.TextAlign := TTextAlign.Leading;
  LabelTitle.VertTextAlign := TTextAlign.Trailing;
  LabelTitle.Text := Playlist.Title;
  LabelTitle.StyledSettings := [];
  LabelTitle.Font.Size := 13;
  LabelTitle.Font.Style := [TFontStyle.fsBold];
  LabelTitle.TextSettings.FontColor := TAlphaColorRec.White;

  if Playlist.Count > 0 then
  begin
    LabelSize.Parent := RectangleTitle;
    LabelSize.HitTest := False;
    LabelSize.Margins.Rect := TRectF.Create(0, 0, 0, 0);
    LabelSize.Align := TAlignLayout.Right;
    LabelSize.TextSettings.WordWrap := False;
    LabelSize.TextAlign := TTextAlign.Trailing;
    LabelSize.VertTextAlign := TTextAlign.Trailing;
    LabelSize.AutoSize := True;
    LabelSize.Font.Size := 13;
    LabelSize.Text := Playlist.Count.ToString;
    LabelSize.StyledSettings := [];
    LabelSize.TextSettings.FontColor := TAlphaColorRec.White;
  end;
  Result.RecalcAbsoluteNow;
end;

procedure TFormMain.LoadAudios;
begin
  if not ListBoxAudios.Visible then
    Exit;
  LabelAudiosLoad.Visible := False;
  LabelHeadAudiosCnt.Text := 'Музыка';
  ListBoxAudios.Visible := False;
  ListBoxAudios.BeginUpdate;
  ListBoxAudios.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Audio: TVkAudio;
          Audios: TVkAudios;
          Params: TVkParamsAudioGet;
        begin
          Result := 0;
          if OwnerId <> 0 then
            Params.OwnerId(OwnerId);
          Params.Count(100);
          Params.Offset(Offset);
          if VKAPI.Audio.Get(Audios, Params) then
          begin
            Cnt := Audios.Count;
            Result := Length(Audios.Items);
            try
              for Audio in Audios.Items do
                ListBoxAudios.AddObject(CreateAudioListItem(ListBoxAudios, Audio));
            finally
              Audios.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelAudiosLoad.Visible := True;
          LabelAudiosLoad.Repaint;
          LabelHeadAudiosCnt.Text := 'Музыка (' + Cnt.ToString + ')';
          LabelHeadAudiosCnt.Repaint;
          ListBoxAudios.EndUpdate;
          ListBoxAudios.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadBoard;
begin
  if not ListBoxBoard.Visible then
    Exit;
  LabelHeadBoardCnt.Text := 'Обсуждения';
  ListBoxBoard.Visible := False;
  ListBoxBoard.BeginUpdate;
  ListBoxBoard.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkBoardTopic;
          Items: TVkBoardTopics;
          Params: TVkParamsBoardGet;
        begin
          Result := 0;
          Params.GroupId(FGroupId);
          Params.Count(100);
          Params.Offset(Offset);
          if VKAPI.Board.GetTopics(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxBoard.AddObject(CreateBoardListItem(ListBoxBoard, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadBoardCnt.Text := 'Обсуждения (' + Cnt.ToString + ')';
          LabelHeadBoardCnt.Repaint;
          ListBoxBoard.EndUpdate;
          ListBoxBoard.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadVideoAlbums;
begin
  if not ListBoxVideoAlbums.Visible then
    Exit;
  ListBoxVideoAlbums.Visible := False;
  ListBoxVideoAlbums.BeginUpdate;
  ListBoxVideoAlbums.Clear;
  LabelHeadVideoAlbumsCnt.Text := 'Видеоальбомы';
  TabControlVideos.ActiveTab := TabItemVideosAlbums;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Items: TVkVideoAlbums;
      Item: TVkVideoAlbum;
      Params: TVkParamsVideoGetAlbums;
      Cnt: Integer;
    begin
      Cnt := 0;
      try
        Params.NeedSystem(True);
        Params.Extended(True);
        if OwnerId <> 0 then
          Params.OwnerId(OwnerId);
        if VKAPI.Video.GetAlbums(Items, Params) then
        begin
          Cnt := Items.Count;
          try
            for Item in Items.Items do
              ListBoxVideoAlbums.AddObject(CreateVideoAlbumListItem(ListBoxVideoAlbums, Item));
          finally
            Items.Free;
          end;
        end;
      except
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadVideoAlbumsCnt.Text := 'Видеоальбомы (' + Cnt.ToString + ')';
          ListBoxVideoAlbums.EndUpdate;
          ListBoxVideoAlbums.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadMarket;
begin
  if not ListBoxMarket.Visible then
    Exit;
  ListBoxMarket.Visible := False;
  ListBoxMarket.BeginUpdate;
  ListBoxMarket.Clear;
  LabelHeadMarketCnt.Text := 'Товары';
  TabControlVideos.ActiveTab := TabItemVideosAlbums;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Items: TVkProducts;
      Item: TVkProduct;
      Params: TVkParamsMarketGet;
      Cnt: Integer;
    begin
      Cnt := 0;
      try
        if OwnerId <> 0 then
          Params.OwnerId(OwnerId)
        else
          Params.OwnerId(FUserId);
        Params.Extended(True);
        if VKAPI.Market.Get(Items, Params) then
        begin
          Cnt := Items.Count;
          try
            for Item in Items.Items do
              ListBoxMarket.AddObject(CreateProductListItem(ListBoxMarket, Item));
          finally
            Items.Free;
          end;
        end;
      except
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadMarketCnt.Text := 'Товары (' + Cnt.ToString + ')';
          ListBoxMarket.EndUpdate;
          ListBoxMarket.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadAudioPlaylists;
begin
  if ListBoxAudioPlaylists.Tag = 10 then
    Exit;
  ListBoxAudioPlaylists.Tag := 10;
  ListBoxAudioPlaylists.Visible := False;
  ListBoxAudioPlaylists.BeginUpdate;
  ListBoxAudioPlaylists.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkAudioPlaylist;
          Items: TVkPlaylists;
          Params: TVkParamsPlaylist;
        begin
          Result := 0;
          if OwnerId <> 0 then
            Params.OwnerId(OwnerId)
          else
            Params.OwnerId(FUserId);
          Params.Count(100);
          Params.Offset(Offset);
          if VKAPI.Audio.GetPlaylists(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxAudioPlaylists.AddObject(CreateAudioPlaylistListItem(ListBoxAudioPlaylists, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          ListBoxAudioPlaylists.EndUpdate;
          ListBoxAudioPlaylists.Tag := 0;
          ListBoxAudioPlaylists.Visible := Cnt > 0;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadNotes;
begin
  if not ListBoxNotes.Visible then
    Exit;
  ListBoxNotes.Visible := False;
  ListBoxNotes.BeginUpdate;
  ListBoxNotes.Clear;
  LabelHeadNotesCnt.Text := 'Заметки';
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkNote;
          Items: TVkNotes;
          Params: TVkParamsNotesGet;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          if VKAPI.Notes.Get(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxNotes.AddObject(CreateNoteListItem(ListBoxNotes, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadNotesCnt.Text := 'Заметки (' + Cnt.ToString + ')';
          LabelHeadNotesCnt.Repaint;
          ListBoxNotes.EndUpdate;
          ListBoxNotes.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadDocs;
begin
  if not ListBoxDocs.Visible then
    Exit;
  ListBoxDocs.Visible := False;
  ListBoxDocs.BeginUpdate;
  ListBoxDocs.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Doc: TVkDocument;
          Docs: TVkDocuments;
          Params: TVkParamsDocsGet;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          if OwnerId <> 0 then
            Params.OwnerId(OwnerId);
          if VKAPI.Docs.Get(Docs, Params) then
          begin
            Cnt := Docs.Count;
            Result := Length(Docs.Items);
            try
              for Doc in Docs.Items do
                ListBoxDocs.AddObject(CreateDocListItem(ListBoxDocs, Doc));
            finally
              Docs.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadDocsCnt.Text := 'Документы (' + Cnt.ToString + ')';
          LabelHeadDocsCnt.Repaint;
          ListBoxDocs.EndUpdate;
          ListBoxDocs.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadGroups;
begin
  if not ListBoxGroups.Visible then
    Exit;
  LabelHeadGroups.Text := 'Сообщества';
  ListBoxGroups.Visible := False;
  ListBoxGroups.BeginUpdate;
  ListBoxGroups.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkGroup;
          Items: TVkGroups;
          Params: TVkParamsGroupsGet;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          Params.Fields([gfDescription, gfStatus, gfMembersCount, gfStartDate, gfPhoto50]);
          if VKAPI.Groups.Get(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxGroups.AddObject(CreateGroupListItem(ListBoxGroups, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadGroups.Text := 'Сообщества (' + Cnt.ToString + ')';
          ListBoxGroups.EndUpdate;
          ListBoxGroups.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadFriends;
begin
  if not ListBoxUsers.Visible then
    Exit;
  LabelHeadFriends.Text := 'Друзья';
  ListBoxUsers.Visible := False;
  ListBoxUsers.BeginUpdate;
  ListBoxUsers.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkProfile;
          Items: TVkProfiles;
          Params: TVkParamsFriendsGet;
        begin
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          Params.Fields([ufNickName, ufUniversities, ufStatus, ufCity, ufPhoto50]);
          if VKAPI.Friends.Get(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxUsers.AddObject(CreateUserListItem(ListBoxUsers, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadFriends.Text := 'Друзья (' + Cnt.ToString + ')';
          ListBoxUsers.EndUpdate;
          ListBoxUsers.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.ButtonMenuDocsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMDocs);
  LoadDocs;
end;

procedure TFormMain.ButtonMenuFriendsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMFriends);
  LoadFriends;
end;

procedure TFormMain.ButtonMenuGroupAudioClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMAudio);
  LoadAudios(-FGroupId);
  LoadAudioPlaylists(-FGroupId);
end;

procedure TFormMain.ButtonMenuGroupBackClick(Sender: TObject);
begin
  TabControlMenu.SetActiveTabWithTransitionAsync(TabItemMenuMain, TTabTransition.Slide, TTabTransitionDirection.Reversed, nil)
end;

procedure TFormMain.ButtonMenuGroupBoardClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMBoard);
  LoadBoard;
end;

procedure TFormMain.ButtonMenuGroupsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMGroups);
  LoadGroups;
end;

procedure TFormMain.ButtonMenuGroupVideoClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMVideo);
  LoadVideoAlbums(-FGroupId);
end;

procedure TFormMain.ButtonMenuGroupWallClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMWall);
  LoadWall(-FGroupId);
end;

procedure TFormMain.OpenPage(Tab: TTabItem);
begin
  TabControlMain.ActiveTab := Tab;
  MultiViewMain.Presenter.Close;
end;

procedure TFormMain.ButtonMenuWallClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMWall);
  LoadWall;
end;

procedure TFormMain.LoadWall;
begin
  if not ListBoxWall.Visible then
    Exit;
  ListBoxWall.Visible := False;
  CheckBoxWallSelect.IsChecked := False;
  ListBoxWall.BeginUpdate;
  ListBoxWall.Clear;
  LabelHeadWallCnt.Text := 'Записи на стене';
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkPost;
          Items: TVkPosts;
          Params: TVkParamsWallGet;
        begin
          Cancel := Offset > 100;
          Result := 0;
          Params.Count(100);
          Params.Offset(Offset);
          Params.Extended(True);
          if OwnerId <> 0 then
            Params.OwnerId(OwnerId);
          if VKAPI.Wall.Get(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxWall.AddObject(CreateWallListItem(ListBoxWall, Item, Items));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadWallCnt.Text := 'Записи на стене (' + Cnt.ToString + ')';
          LabelHeadWallCnt.Repaint;
          ListBoxWall.EndUpdate;
          ListBoxWall.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.ButtonPhotosBackClick(Sender: TObject);
begin
  TabControlPhotos.ActiveTab := TabItemPhotosAlbums;
end;

function ExtractUrlFileName(const Url: string): string;
var
  I: Integer;
begin
  I := Url.LastDelimiter('/' + DriveDelim);
  Result := Url.SubString(I + 1);
end;

procedure TFormMain.ButtonSavePhotoClick(Sender: TObject);
var
  i: Integer;
  Saved: Integer;
begin
  if not SelectDirectory('Выберите каталог для фотографий', '', FPathPhotos) then
    Exit;
  Saved := 0;
  for i := 0 to ListBoxPhotos.Count - 1 do
    if ListBoxPhotos.ListItems[i].IsChecked then
    begin
      Inc(Saved);
      DownloadManager.Add(ListBoxPhotos.ListItems[i].TagString, TPath.Combine(FPathPhotos, ExtractUrlFileName(ListBoxPhotos.ListItems
        [i].TagString)));
    end;
  if Saved <= 0 then
  begin
    if Assigned(ListBoxPhotos.Selected) then
    begin
      DownloadManager.Add(ListBoxPhotos.Selected.TagString, TPath.Combine(FPathPhotos, ExtractUrlFileName(ListBoxPhotos.Selected.TagString)));
    end;
  end;
end;

procedure TFormMain.ButtonMenuNotesClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMNotes);
  LoadNotes;
end;

procedure TFormMain.ButtonMenuPhotosClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMPhotos);
  LoadAlbums;
end;

procedure TFormMain.LoadingPage;
begin
  Inc(FLoadingPageCount);
  if FLoadingPageCount = 1 then
  begin
    AniIndicatorLoadPage.Enabled := True;
    AniIndicatorLoadPage.Visible := True;
    AniIndicatorLoadPage.BringToFront;
  end;
end;

procedure TFormMain.LoadingPageEnd;
begin
  Dec(FLoadingPageCount);
  if FLoadingPageCount <= 0 then
  begin
    FLoadingPageCount := 0;
    AniIndicatorLoadPage.Enabled := False;
    AniIndicatorLoadPage.Visible := False;
  end;
end;

procedure TFormMain.LoadVideos;
begin
  if not ListBoxVideos.Visible then
    Exit;
  ListBoxVideos.Visible := False;
  ListBoxVideos.BeginUpdate;
  ListBoxVideos.Clear;
  LabelVideoAlbumName.Text := AlbumName;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      try
        VKAPI.Walk(
          function(Offset: Integer; var Cancel: Boolean): Integer
          var
            Items: TVkVideos;
            Item: TVkVideo;
            Params: TVkParamsVideoGet;
          begin
            Result := 0;
            Params.Offset(Offset);
            Params.Count(100);
            Params.AlbumId(AlbumId);
            if OwnerId <> 0 then
              Params.OwnerId(OwnerId);
            if VKAPI.Video.Get(Items, Params) then
            begin
              Cnt := Items.Count;
              Result := Length(Items.Items);
              try
                for Item in Items.Items do
                  ListBoxVideos.AddObject(CreateVideoListItem(ListBoxVideos, Item));
              finally
                Items.Free;
              end;
            end
            else
              Cancel := True;
          end, 100);
      except
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelVideoAlbumName.Text := AlbumName + ' (' + Cnt.ToString + ')';
          ListBoxVideos.EndUpdate;
          ListBoxVideos.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadPhotos;
begin
  if not ListBoxPhotos.Visible then
    Exit;
  CheckBoxPhotoSelect.IsChecked := False;
  ListBoxPhotos.Visible := False;
  ListBoxPhotos.BeginUpdate;
  ListBoxPhotos.Clear;
  LabelAlbumName.Text := AlbumName;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      try
        VKAPI.Walk(
          function(Offset: Integer; var Cancel: Boolean): Integer
          var
            Items: TVkPhotos;
            Item: TVkPhoto;
            Params: TVkParamsPhotosGet;
          begin
            Result := 0;
            Params.Offset(Offset);
            Params.Count(100);
            Params.AlbumId(AlbumId);
            if OwnerId <> 0 then
              Params.OwnerId(OwnerId);
            if VKAPI.Photos.Get(Items, Params) then
            begin
              Cnt := Items.Count;
              Result := Length(Items.Items);
              try
                for Item in Items.Items do
                  ListBoxPhotos.AddObject(CreatePhotoListItem(ListBoxPhotos, Item));
              finally
                Items.Free;
              end;
            end;
          end, 100);
      except
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelAlbumName.Text := AlbumName + ' (' + Cnt.ToString + ')';
          ListBoxPhotos.EndUpdate;
          ListBoxPhotos.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadMembers(const GroupID: Integer);
begin
  if not ListBoxUsers.Visible then
    Exit;
  LabelHeadFriends.Text := 'Подписчики';
  ListBoxUsers.Visible := False;
  ListBoxUsers.BeginUpdate;
  ListBoxUsers.Clear;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Cnt: Integer;
    begin
      Cnt := 0;
      VKAPI.Walk(
        function(Offset: Integer; var Cancel: Boolean): Integer
        var
          Item: TVkProfile;
          Items: TVkProfiles;
          Params: TVkParamsGroupsGetMembers;
        begin
          Result := 0;
          Params.GroupId(GroupID);
          Params.Count(100);
          Params.Offset(Offset);
          Params.Fields([mfDomain, mfUniversities, mfStatus, mfCity, mfPhoto50]);
          if VKAPI.Groups.GetMembers(Items, Params) then
          begin
            Cnt := Items.Count;
            Result := Length(Items.Items);
            try
              for Item in Items.Items do
                ListBoxUsers.AddObject(CreateUserListItem(ListBoxUsers, Item));
            finally
              Items.Free;
            end;
          end
          else
            Cancel := True;
        end, 100);

      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadFriends.Text := 'Подписчики (' + Cnt.ToString + ')';
          ListBoxUsers.EndUpdate;
          ListBoxUsers.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.LoadAlbums;
begin
  if not ListBoxAlbums.Visible then
    Exit;
  ListBoxAlbums.Visible := False;
  ListBoxAlbums.BeginUpdate;
  ListBoxAlbums.Clear;
  if (OwnerId <> 0) and (OwnerId < 0) then
    ListBoxAlbums.Tag := 1
  else
    ListBoxAlbums.Tag := 0;
  TabControlPhotos.ActiveTab := TabItemPhotosAlbums;
  LoadingPage;
  TTask.Run(
    procedure
    var
      Albums: TVkPhotoAlbums;
      Album: TVkPhotoAlbum;
      Params: TVkParamsAlbumsGet;
      Cnt: Integer;
    begin
      Cnt := 0;
      try
        Params.NeedCovers(True);
        Params.PhotoSizes(True);
        if OwnerId <> 0 then
          Params.OwnerId(OwnerId);
        Params.AlbumIds([saSaved.ToVkId, saProfile.ToVkId, saWall.ToVkId]);
        if VKAPI.Photos.GetAlbums(Albums, Params) then
        begin
          try
            Cnt := Albums.Count;
            for Album in Albums.Items do
              ListBoxAlbums.AddObject(CreateAlbumListItem(ListBoxAlbums, Album));
          finally
            Albums.Free;
          end;
        end;
      except
        //Log..
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelHeadAlbumsCnt.Text := 'Мои альбомы (' + Cnt.ToString + ')';
          ListBoxAlbums.EndUpdate;
          ListBoxAlbums.Visible := True;
          LoadingPageEnd;
        end);
    end);
end;

procedure TFormMain.ButtonMenuSettingsClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMSets);
end;

procedure TFormMain.ButtonMenuMarketClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMMarket);
  LoadMarket;
end;

procedure TFormMain.ButtonMenuVideoClick(Sender: TObject);
begin
  SelectMenuItem(Sender as TButton);
  OpenPage(TabItemMVideo);
  LoadVideoAlbums;
end;

procedure TFormMain.FloatAnimationAuthPosFinish(Sender: TObject);
begin
  LayoutAuth.Visible := False;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  {$IFDEF MSWINDOWS}
  FixIE;
  {$ELSE}
  ButtonAuthReset.Visible := False;
  {$ENDIF}
  FCanManuAction := True;
  FToken := '';
  //
  FPreviewImage := TImagePreview.Create(Self);
  FDownloadManager := TSaveManager.Create(Self);
  FDownloadManager.OnProgress := DownloadProgress;
  FDownloadManager.OnFinish := DownloadFinish;
  LayoutGroups.Height := 1;
  MultiViewMain.Visible := False;
  LayoutAuth.Visible := True;
  LayoutAuth.BringToFront;
  TabControlMain.TabPosition := TTabPosition.None;
  TabControlMain.ActiveTab := TabItemMWelcome;

  TabControlMenu.TabPosition := TTabPosition.None;
  TabControlMenu.ActiveTab := TabItemMenuMain;
  TabControlPhotos.TabPosition := TTabPosition.None;
  TabControlVideos.TabPosition := TTabPosition.None;
  //
  //LayoutAuth.Visible := False;
  //MultiViewMain.Visible := True;
end;

procedure TFormMain.ListBoxAlbumsItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  if ListBoxAlbums.Tag = 1 then
    LoadPhotos(Item.Tag, Item.TagString, -FGroupId)
  else
    LoadPhotos(Item.Tag, Item.TagString);
  TabControlPhotos.ActiveTab := TabItemPhotosItems;
end;

procedure TFormMain.ListBoxAlbumsResize(Sender: TObject);
begin
  ListBoxAlbums.ItemWidth := (ListBoxAlbums.Width - IScroll) / (Trunc((ListBoxAlbums.Width - IScroll) / IWidth) + 1);
  ListBoxAlbums.ItemHeight := ListBoxAlbums.ItemWidth * (IHeight / IWidth);
end;

type
  TListBoxPriv = class(TListBox)
    function FirstVisibleObjectIndex: Integer;
    function LastVisibleObjectIndex: Integer;
  end;

procedure TFormMain.ListBoxAlbumsViewportPositionChange(Sender: TObject; const OldViewportPosition, NewViewportPosition:
  TPointF; const ContentSizeChanged: Boolean);
var
  i: Integer;
begin
  for i := TListBoxPriv(ListBoxAlbums).FirstVisibleObjectIndex to TListBoxPriv(ListBoxAlbums).LastVisibleObjectIndex do
  begin
    //ListBoxAlbums.ListItems[i].
  end;
end;

procedure TFormMain.ListBoxPhotosClick(Sender: TObject);
begin
  FPreviewImage.Image.Bitmap := nil;
  FPreviewImage.IsLoading := True;
  if Assigned(ListBoxPhotos.Selected) then
    FPreviewImage.Image.LoadFromUrlAsync(ListBoxPhotos.Selected.TagString,
      procedure(Image: TImage)
      begin
        FPreviewImage.IsLoading := False;
      end);
  FPreviewImage.Show(Self);
end;

procedure TFormMain.ListBoxPhotosResize(Sender: TObject);
begin
  ListBoxPhotos.ItemWidth := (ListBoxPhotos.Width - IScroll) / (Trunc((ListBoxPhotos.Width - IScroll) / IWidth) + 1);
  ListBoxPhotos.ItemHeight := ListBoxPhotos.ItemWidth * (IHeight / IWidth);
end;

procedure TFormMain.ListBoxPhotosViewportPositionChange(Sender: TObject; const OldViewportPosition, NewViewportPosition:
  TPointF; const ContentSizeChanged: Boolean);
begin
  if NewViewportPosition.Y > 0 then
  begin
    if (Trunc(LayoutPhotosCaption.Height) <> FloatAnimationPCSize.StartValue) and not FloatAnimationPCSize.Running then
    begin
      FloatAnimationPCSize.Inverse := True;
      FloatAnimationPCSize.Start;
      FloatAnimationPCFSX.Inverse := True;
      FloatAnimationPCFSX.Start;
      FloatAnimationPCFSY.Inverse := True;
      FloatAnimationPCFSY.Start;
      FloatAnimationPCFSS.Inverse := True;
      FloatAnimationPCFSS.Start;
    end;
  end
  else
  begin
    if (Trunc(LayoutPhotosCaption.Height) <> FloatAnimationPCSize.StopValue) and not FloatAnimationPCSize.Running then
    begin
      FloatAnimationPCSize.Inverse := False;
      FloatAnimationPCSize.Start;
      FloatAnimationPCFSX.Inverse := False;
      FloatAnimationPCFSX.Start;
      FloatAnimationPCFSY.Inverse := False;
      FloatAnimationPCFSY.Start;
      FloatAnimationPCFSS.Inverse := False;
      FloatAnimationPCFSS.Start;
    end;
  end;
end;

procedure TFormMain.ListBoxVideoAlbumsItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  if ListBoxVideoAlbums.Tag = 1 then
    LoadVideos(Item.Tag, Item.TagString, -FGroupId)
  else
    LoadVideos(Item.Tag, Item.TagString);
  TabControlVideos.ActiveTab := TabItemVideosItems;
end;

procedure TFormMain.ListBoxVideoAlbumsResize(Sender: TObject);
begin
  ListBoxVideoAlbums.ItemWidth := (ListBoxVideoAlbums.Width - IScroll) / (Trunc((ListBoxVideoAlbums.Width - IScroll) /
    IWidth) + 1);
  ListBoxVideoAlbums.ItemHeight := ListBoxVideoAlbums.ItemWidth * (IHeight / IWidth);
end;

procedure TFormMain.ListBoxVideosResize(Sender: TObject);
begin
  ListBoxVideos.ItemWidth := (ListBoxVideos.Width - IScroll) / (Trunc((ListBoxVideos.Width - IScroll) / IWidth) + 1);
  ListBoxVideos.ItemHeight := ListBoxVideos.ItemWidth * (IHeight / IWidth);
end;

procedure TFormMain.LoadInfo;
begin
  LoadingStart;
  TTask.Run(
    procedure
    var
      i: Integer;
      Photo: TBitmap;
      User: TVkProfile;
      Faves: TVkFaves;
      Notes: TVkNotes;
      Posts: TVkPosts;
      Friends: TVkProfiles;
      Photos: TVkPhotos;
      Videos: TVkVideos;
      Audios: TVkAudios;
      Groups: TVkGroups;
      Docs: TVkDocuments;
      Products: TVkProducts;
      Conves: TVkConversationItems;
      DParams: TVkParamsDocsGet;
      WParams: TVkParamsWallGet;
      AParams: TVkParamsAudioGet;
      FvParams: TVkParamsFaveGet;
      NParams: TVkParamsNotesGet;
      GParams: TVkParamsGroupsGet;
      PParams: TVkParamsPhotosGet;
      VParams: TVkParamsVideoGet;
      FParams: TVkParamsFriendsGet;
      MtParams: TVkParamsMarketGet;
      PaParams: TVkParamsPhotosGetAll;
      MParams: TVkParamsConversationsGet;
    begin
      FUserId := 0;
      if VKAPI.Users.Get(User, [ufPhoto50]) then
      begin
        FUserId := User.Id;
        Photo := TBitmap.CreateFromUrl(User.Photo50);
        TThread.Synchronize(nil,
          procedure
          begin
            ButtonMenu.Text := User.GetFullName;
            if User.Photo50.IsEmpty then
            begin
              CircleAvatar.Visible := False;
            end
            else
            begin
              CircleAvatar.Fill.Kind := TBrushKind.Bitmap;
              CircleAvatar.Fill.Bitmap.Bitmap.Assign(Photo);
              CircleAvatar.Fill.Bitmap.WrapMode := TWrapMode.TileStretch;
              CircleAvatar.Visible := True;
            end;
          end);
        User.Free;
        Photo.Free;
      end;

      GParams.Count(1);
      if VKAPI.Groups.Get(Groups, GParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuGroupsCnt.Text := Groups.Count.ToString;
            Groups.Free;
          end);
      end;

      FParams.Count(1);
      if VKAPI.Friends.Get(Friends, FParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuFriendsCnt.Text := Friends.Count.ToString;
            Friends.Free;
          end);
      end;

      PaParams.Count(1);
      PaParams.NoServiceAlbums(False);
      i := 0;
      if VKAPI.Photos.GetAll(Photos, PaParams) then
      begin
        i := i + Photos.Count;
        Photos.Free;
      end;
      PParams.Count(1);
      PParams.AlbumId(TVkPhotoSystemAlbum.saSaved);
      if VKAPI.Photos.Get(Photos, PParams) then
      begin
        i := i + Photos.Count;
        Photos.Free;
      end;
      TThread.ForceQueue(nil,
        procedure
        begin
          LabelMenuPhotosCnt.Text := i.ToString;
        end);

      VParams.Count(1);
      if VKAPI.Video.Get(Videos, VParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuVideosCnt.Text := Videos.Count.ToString;
            Videos.Free;
          end);
      end;

      AParams.Count(1);
      if VKAPI.Audio.Get(Audios, AParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuAudiosCnt.Text := Audios.Count.ToString;
            Audios.Free;
          end);
      end;

      MParams.Count(1);
      if VKAPI.Messages.GetConversations(Conves, MParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuDialogsCnt.Text := Conves.Count.ToString;
            Conves.Free;
          end);
      end;

      DParams.Count(1);
      if VKAPI.Docs.Get(Docs, DParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuDocsCnt.Text := Docs.Count.ToString;
            Docs.Free;
          end);
      end;

      FvParams.Count(1);
      if VKAPI.Fave.Get(Faves, FvParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuFavesCnt.Text := Faves.Count.ToString;
            Faves.Free;
          end);
      end;

      NParams.Count(1);
      if VKAPI.Notes.Get(Notes, NParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuNotesCnt.Text := Notes.Count.ToString;
            Notes.Free;
          end);
      end;

      WParams.Count(1);
      if VKAPI.Wall.Get(Posts, WParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuWallCnt.Text := Posts.Count.ToString;
            Posts.Free;
          end);
      end;

      MtParams.Count(1);
      MtParams.OwnerId(FUserId);
      if VKAPI.Market.Get(Products, MtParams) then
      begin
        TThread.ForceQueue(nil,
          procedure
          begin
            LabelMenuMarketCnt.Text := Products.Count.ToString;
            Products.Free;
          end);
      end;

      GParams.Count(1000);
      GParams.Filter([gftAdmin]);
      GParams.Fields([gfMembersCount, gfPhoto50]);
      if VKAPI.Groups.Get(Groups, GParams) then
      begin
        for i := Low(Groups.Items) to High(Groups.Items) do
        begin
          Photo := TBitmap.CreateFromUrl(Groups.Items[i].Photo50);
          TThread.Synchronize(nil,
            procedure
            begin
              AddButtonGroup(Groups.Items[i].Name, Groups.Items[i].Id, Photo);
            end);
          Photo.Free;
        end;
        Groups.Free;
      end;

      TThread.ForceQueue(nil,
        procedure
        begin
          LoadingStop;
        end);
    end);
end;

procedure TFormMain.MultiViewMainHidden(Sender: TObject);
begin
  FCanManuAction := True;
end;

procedure TFormMain.MultiViewMainShown(Sender: TObject);
begin
  FCanManuAction := True;
  VertScrollBoxMenu.ShowScrollBars := True;
end;

procedure TFormMain.MultiViewMainStartHiding(Sender: TObject);
begin
  VertScrollBoxMenu.ShowScrollBars := False;
end;

procedure TFormMain.LoginError(Url: string);
begin
  TThread.ForceQueue(nil,
    procedure
    begin
      ButtonLogin.Enabled := True;
      AniIndicatorLogin.Enabled := False;
      AniIndicatorLogin.Visible := False;
      ShowMessage(Url);
    end);
end;

procedure TFormMain.VKAPIAuth(Sender: TObject; Url: string; var Token: string; var TokenExpiry: Int64; var
  ChangePasswordHash: string);
begin
  if FToken.IsEmpty then
  begin
    TFormFMXOAuth2.Execute(Url,
      procedure(Form: TFormFMXOAuth2)
      begin
        FToken := Form.Token;
        FTokenExpiry := Form.TokenExpiry;
        FChangePasswordHash := Form.ChangePasswordHash;
        if not FToken.IsEmpty then
          VKAPI.Login
        else
        begin
          LoginError(Form.LastUrl);
        end;
      end, nil);
  end
  else
  begin
    Token := FToken;
    TokenExpiry := FTokenExpiry;
  end;
end;

procedure TFormMain.VKAPIError(Sender: TObject; E: Exception; Code: Integer; Text: string);
begin
  MemoLog.Lines.Add('Error: ' + FormatDateTime('c Z', Now) + ' ' + Code.ToString + ' - ' + Text);
end;

procedure TFormMain.VKAPIErrorLogin(Sender: TObject; E: Exception; Code: Integer; Text: string);
begin
  ButtonLogin.Enabled := True;
  AniIndicatorLogin.Enabled := False;
  AniIndicatorLogin.Visible := False;
  ShowMessage(Text);
end;

procedure TFormMain.VKAPILog(Sender: TObject; const Value: string);
begin
  MemoLog.Lines.Add('Log: ' + FormatDateTime('c Z', Now) + ' ' + Value);
end;

procedure TFormMain.VKAPILogin(Sender: TObject);
begin
  ButtonLogin.Enabled := True;
  AniIndicatorLogin.Enabled := False;
  AniIndicatorLogin.Visible := False;
  //
  MultiViewMain.Visible := True;
  MultiViewMain.SendToBack;
  FloatAnimationAuthPos.StopValue := ClientHeight;
  FloatAnimationAuthPos.Start;
  FloatAnimationAuthOpc.Start;
  //
  LoadInfo;
end;

{ TListBoxPriv }

function TListBoxPriv.FirstVisibleObjectIndex: Integer;
begin
  Result := GetFirstVisibleObjectIndex;
end;

function TListBoxPriv.LastVisibleObjectIndex: Integer;
begin
  Result := GetLastVisibleObjectIndex;
end;

end.

