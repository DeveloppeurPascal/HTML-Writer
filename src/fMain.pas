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
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.TabControl,
  uDMLogo,
  FMX.fhtmlcomp,
  FMX.fhtmledit,
  FMX.fhteditactions,
  System.Actions,
  FMX.ActnList;

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
    mnuMacOS: TMenuItem;
    mnuEdition: TMenuItem;
    mnuCouper: TMenuItem;
    mnuCopier: TMenuItem;
    mnuColler: TMenuItem;
    mnuToutSelectionner: TMenuItem;
    ActionList1: TActionList;
    HtActionCopy1: THtActionCopy;
    HtActionCut1: THtActionCut;
    HtActionPaste1: THtActionPaste;
    procedure FormCreate(Sender: TObject);
    procedure mnuQuitterClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnuAProposClick(Sender: TObject);
    procedure OlfAboutDialog1URLClick(const AURL: string);
    procedure TabControl1Change(Sender: TObject);
    procedure mnuCollerClick(Sender: TObject);
    procedure mnuCopierClick(Sender: TObject);
    procedure mnuCouperClick(Sender: TObject);
    procedure mnuToutSelectionnerClick(Sender: TObject);
  private
    { D�clarations priv�es }
  protected
    FApplyChange: Boolean;
    procedure InitMainFormCaption;
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses
  u_urlOpen;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // TODO : demander confirmation si l'un des champs de saisie a �t� modifi�
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  InitMainFormCaption;
  TabControl1.ActiveTab := tiWYSIWYG;
  mnuAPropos.Text := mnuAPropos.Text.trim + ' ' + OlfAboutDialog1.titre;

  // Adaptation du menu pour macOS
{$IFDEF MACOS}
  mnuMacOS.Visible := true;
  mnuQuitter.Visible := false; // existe par d�faut dans "mnuMacOS"
  mnuFichier.Visible := false; // puisque plus d'option dessous
  mnuAPropos.parent := mnuMacOS; // "� propos" dans "mnuMacOS" par convention
  mnuAide.Visible := false; // puisque plus d'options dessous
{$ELSE}
  mnuMacOS.Visible := false;
{$ENDIF}
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

procedure TForm1.mnuCollerClick(Sender: TObject);
begin
  if TabControl1.ActiveTab = tiWYSIWYG then
    HtActionPaste1.Execute
  else
    edtSource.PasteFromClipboard;
end;

procedure TForm1.mnuCopierClick(Sender: TObject);
begin
  if TabControl1.ActiveTab = tiWYSIWYG then
    HtActionCopy1.Execute
  else
    edtSource.CopyToClipboard;
end;

procedure TForm1.mnuCouperClick(Sender: TObject);
begin
  if TabControl1.ActiveTab = tiWYSIWYG then
    HtActionCut1.Execute
  else
    edtSource.CutToClipboard;
end;

procedure TForm1.mnuQuitterClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.mnuToutSelectionnerClick(Sender: TObject);
begin
  if TabControl1.ActiveTab = tiWYSIWYG then
    edtWYSIWYG.SelectAll
  else
    edtSource.SelectAll;
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
    edtSource.Text := edtWYSIWYG.Doc.InnerHTML;
    tthread.ForceQueue(nil,
      procedure
      begin
        edtSource.setfocus;
      end);
  end;
end;

end.
