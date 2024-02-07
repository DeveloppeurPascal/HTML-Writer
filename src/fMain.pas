unit fMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  Olf.FMX.AboutDialog,
  FMX.Menus,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Layouts,
  FMX.fhtmlcomp,
  FMX.fhtmledit,
  FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.TabControl;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OlfAboutDialog1: TOlfAboutDialog;
    mnuFichier: TMenuItem;
    mnuAide: TMenuItem;
    mnuQuitter: TMenuItem;
    mnuAPropos: TMenuItem;
    TabControl1: TTabControl;
    tiWYSIWYG: TTabItem;
    tiHTMLSource: TTabItem;
    edtWYSIWYG: THtmlEditor;
    edtSource: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure mnuQuitterClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnuAProposClick(Sender: TObject);
    procedure OlfAboutDialog1URLClick(const AURL: string);
    procedure TabControl1Change(Sender: TObject);
  private
    { Déclarations privées }
  protected
    FApplyChange: Boolean;
    procedure InitMainFormCaption;
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  u_urlOpen;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // TODO : demander confirmation si l'un des champs de saisie a été modifié
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  InitMainFormCaption;
  TabControl1.ActiveTab := tiWYSIWYG;
end;

procedure TForm1.InitMainFormCaption;
begin
{$IFDEF DEBUG}
  caption := '[DEBUG] ';
{$ELSE}
  caption := '';
{$ENDIF}
  caption := caption + OlfAboutDialog1.titre + ' v' +
    OlfAboutDialog1.VersionNumero;

  FApplyChange := true;
end;

procedure TForm1.mnuAProposClick(Sender: TObject);
begin
  OlfAboutDialog1.Execute;
end;

procedure TForm1.mnuQuitterClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.OlfAboutDialog1URLClick(const AURL: string);
begin
  url_Open_In_Browser(AURL);
end;

procedure TForm1.TabControl1Change(Sender: TObject);
begin
  if TabControl1.ActiveTab = tiWYSIWYG then
  begin
    edtWYSIWYG.HTML.Text := edtSource.Text;
    tthread.ForceQueue(nil,
      procedure
      begin
        edtWYSIWYG.setfocus;
      end);
  end;
  if TabControl1.ActiveTab = tiHTMLSource then
  begin
    edtSource.text := edtWYSIWYG.Doc.InnerHTML;
    tthread.ForceQueue(nil,
      procedure
      begin
        edtSource.setfocus;
      end);
  end;
end;

end.
