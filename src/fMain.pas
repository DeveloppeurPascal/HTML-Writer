/// <summary>
/// ***************************************************************************
///
/// HTML Writer
///
/// Copyright 2024-2025 Patrick PREMARTIN under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// A very simple HTML source and WYSIWYG editor for webmasters and content
/// creators.
///
/// ***************************************************************************
///
/// Author(s) :
/// Patrick PREMARTIN
///
/// Site :
/// https://htmlwriter.olfsoftware.fr/
///
/// Project site :
/// https://github.com/DeveloppeurPascal/HTML-Writer
///
/// ***************************************************************************
/// File last update : 2025-02-27T21:27:44.000+01:00
/// Signature : 89e9905a428741a3159c2a85c13e2ed21a97ac35
/// ***************************************************************************
/// </summary>

unit fMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  _MainFormAncestor,
  System.Actions,
  FMX.ActnList,
  FMX.Menus,
  uDocumentsAncestor,
  FMX.Memo.Types,
  FMX.fhteditactions,
  FMX.Controls.Presentation,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Layouts,
  FMX.fhtmlcomp,
  FMX.fhtmledit,
  FMX.TabControl;

type
  TMainForm = class(T__MainFormAncestor)
    TabControl1: TTabControl;
    tiWYSIWYG: TTabItem;
    edtWYSIWYG: THtmlEditor;
    tiHTMLSource: TTabItem;
    edtSource: TMemo;
    ActionList1: TActionList;
    HtActionCopy1: THtActionCopy;
    HtActionCut1: THtActionCut;
    HtActionPaste1: THtActionPaste;
    procedure FormCreate(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
  protected
  public
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab := tiWYSIWYG;
end;

procedure TMainForm.TabControl1Change(Sender: TObject);
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
