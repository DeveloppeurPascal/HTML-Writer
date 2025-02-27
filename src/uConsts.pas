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
/// File last update : 2025-02-27T19:55:02.000+01:00
/// Signature : 198deba0f4edeac0abfaa2a169841acc3d942303
/// ***************************************************************************
/// </summary>

unit uConsts;

interface

uses
  System.Types;

{$SCOPEDENUMS ON}
{ ******************************************************************************
  Projects and version settings
  **************************************************************************** }

const
  /// <summary>
  /// Version number of your project.
  /// </summary>
  /// <remarks>
  /// To update when you publish a new release of this project.
  /// Don't forget to update the Version Infos in the Project/Options dialog.
  /// </remarks>
  CAboutVersionNumber = '1.1';

  /// <summary>
  /// Version date of your project.
  /// </summary>
  /// <remarks>
  /// To update when you publish a new release of this project.
  /// </remarks>
  CAboutVersionDate = '20250227';

  /// <summary>
  /// Title of your project used in the About box and as the main form caption
  /// </summary>
  CAboutTitle = 'HTML Writer';

  /// <summary>
  /// The copyright to show in the About box
  /// </summary>
  CAboutCopyright = '(c) 2024-2025 Patrick PREMARTIN';

  /// <summary>
  /// The website URL of your project (used in the About box)
  /// </summary>
  CAboutURL = 'https://htmlwriter.olfsoftware.fr/';

  /// <summary>
  /// The URL where you can buy the software.
  /// (if not empty, a "Buy" button is added in the About Box)
  /// </summary>
  CSoftwareBuyURL = CAboutURL;

  /// <summary>
  /// Website open by Tools / Support menu option
  /// </summary>
  CSupportURL = CAboutURL;

  /// <summary>
  /// Used as a folder name to store your projects settings
  /// </summary>
  /// <remarks>
  /// Don't use a path, only a name to use as a folder name.
  /// The real paths are calculated automatically depending on the platform.
  /// for example your name, label or company name (avoid spaces, accents and special characters)
  /// </remarks>
  CEditorFolderName = 'OlfSoftware';

  /// <summary>
  /// Used as a subfolder name to store your projects settings
  /// </summary>
  /// <remarks>
  /// Don't use a path, only a name to use a a folder name.
  /// The real paths are calculated automatically depending on the platform.
  /// for exemple your project title (avoid spaces, accents and special characters)
  /// </remarks>
  CProjectFolderName = 'HTMLWriter';

  { ****************************************************************************
    Managed languages settings
    ************************************************************************** }

const
  /// <summary>
  /// Available languages in this project as an array of 2 letters language ISO
  /// code strings.
  /// </summary>
  /// <remarks>
  /// To define the languages list by code, fill the global variable
  /// "GLanguages". By default it will contain the same values than
  /// "CLanguages".
  /// If you don't use default language selection, translation or options
  /// dialog, ignore this constant.
  /// </remarks>
  CLanguages: array [0 .. 1] of string = ('en', 'fr');

var
  /// <summary>
  /// Contains the list of languages available in the program.
  /// </summary>
  /// <remarks>
  /// By default it's filled by CLanguages but you can give an other value by
  /// code in your program. It's used in the SelectLanguage screen called by
  /// Tools/Languages default action.
  /// If you don't use default language selection, you can ignore this variable.
  /// </remarks>
  GLanguages: TStringDynArray;

const
  /// <summary>
  /// Default language used if the system language is not supported
  /// (of course you have to translate all textes of the program in this
  /// language, so use yours or English by default)
  /// </summary>
  /// <remarks>
  /// Use 2 letters ISO code
  /// </remarks>
  CDefaultLanguage = 'en';

  { ****************************************************************************
    User interface theme settings
    ************************************************************************** }
type
  /// <summary>
  /// Available modes for the user interface style.
  /// </summary>
  TStyleMode = (
    /// <summary>
    /// Use the light theme
    /// </summary>
    Light,
    /// <summary>
    /// Use the dark theme
    /// </summary>
    Dark,
    /// <summary>
    /// Use light or dark theme depending on the current system value
    /// </summary>
    System,
    /// <summary>
    /// Use the theme choiced by the user of this program
    /// </summary>
    Custom);

const
  /// <summary>
  /// Name of the default style used when the user choose the light mode.
  /// </summary>
  CDefaultStyleLight = 'impressive light';

  /// <summary>
  /// Name of the default style used when the user choose the dark mode.
  /// </summary>
  CDefaultStyleDark = 'impressive dark';

  /// <summary>
  /// Name of the default style used when the user choose the custom mode.
  /// </summary>
  CDefaultStyleCustom = 'dark';

  /// <summary>
  /// Default style mode to use in the program.
  /// </summary>
  CDefaultStyleMode = TStyleMode.System;

  { ****************************************************************************
    Documents settings
    ************************************************************************** }
type
  /// <summary>
  /// How to manage project documents ?
  /// None - no default options or features about documents editing.
  /// Solo - edit only one document at a time, if "New" or "Open" are used,
  /// current document is closed.
  /// Multi - allow opening/creating more than one document at the same time
  /// </summary>
  TDocumentsMode = (None, Mono, Multi);

const
  /// <summary>
  /// Define if the program manage documents with default classes and their
  /// descendants
  /// </summary>
  CDocumentsMode = TDocumentsMode.None;

  /// <summary>
  /// Maximum number of documents listed in the "File/Open recent" menu item
  /// </summary>
  /// <remarks>
  /// Used as a default config value.
  /// If "0" then the "open recents documents" menu is disabled by default.
  /// </remarks>
  COpenPreviousDocumentsMaxCount = 10;

  { ****************************************************************************
    API and external SaaS settings
    ************************************************************************** }

  // Import CilTseg API settings.
  //
  // If you want to use CilTseg API in this project :
  // - copy the CilTseg.inc template file to a private folder
  // (outside your code repository for security reasons)
  // - update the path in the $I comment
  // - fill its content with your API settings

{$I '..\_PRIVATE\src\CilTseg.inc'}
  { ****************************************************************************
    License management settings
    ************************************************************************** }

type
  /// <summary>
  /// List of available license systems managed by this Starter Kit.
  /// </summary>
  TLicenseManagers = (
    /// <summary>
    /// Don't use default behaviour to manage license keys
    /// </summary>
    None,
    /// <summary>
    /// Allow options to manage license keys, but you have to code it !
    /// </summary>
    Manual,
    /// <summary>
    /// Use CilTseg API to manage licenses keys
    /// </summary>
    CilTseg);

const
  /// <summary>
  /// What license manager is used by the starter kit in this project ?
  /// </summary>
  CUsedLicenseManager = TLicenseManagers.CilTseg;

  { ****************************************************************************
    Program updates management settings
    ************************************************************************** }

type
  /// <summary>
  /// List of available programs updates systems managed by this Starter Kit.
  /// </summary>
  TProgramUpdatesManagers = (
    /// <summary>
    /// Don't use default behaviour to check if new releases are available
    /// </summary>
    None,
    /// <summary>
    /// Allow options to check and download new versions of this program,
    /// but you have to code it !
    /// </summary>
    Manual,
    /// <summary>
    /// Use CilTseg API to check and download new releases of this program
    /// </summary>
    CilTseg);

const
  /// <summary>
  /// What system is used by the starter kit to detect and download new
  /// releases of this program ?
  /// </summary>
  CUsedProgramUpdatesManager = TProgramUpdatesManagers.CilTseg;

  { ****************************************************************************
    Main menu options settings
    ************************************************************************** }

const
  /// <summary>
  /// Show (if true) / hide (if false) the Help/Support menu item
  /// </summary>
  /// <remarks>
  /// By default its conditionned by the existence of CSupportURL constant but
  /// you can replace it by a boolean and override the DoHelpSupport method in
  /// your main form.
  /// </remarks>
  CShowHelpSupportMenuItem = (CSupportURL <> '');

  /// <summary>
  /// Show (if true) / hide (if false) the Tools/Languages menu item
  /// </summary>
  CShowToolsLanguagesMenuItem = length(CLanguages) > 1;

  /// <summary>
  /// Show (if true) / hide (if false) the Tool/Styles menu item
  /// </summary>
  CShowToolsStylesMenuItem = true;

  /// <summary>
  /// Show (if true) / hide (if false) the Tool/Options menu item
  /// </summary>
  CShowToolsOptionsMenuItem = false;
  // TODO -oDeveloppeurPascal : add a system to manage a Tools/Options dialog box

  /// <summary>
  /// If the program has to manage documents (mode solo or multi), define if
  /// the default menus are visible or not.
  /// </summary>
  CShowDocumentsMenuItems = (CDocumentsMode <> TDocumentsMode.None);

  /// <summary>
  /// Show (if true) / hide (if false) the Project/Options menu item
  /// </summary>
  CShowDocumentOptionsMenuItem = false;

  /// <summary>
  /// Show the "File/Open recent" menu item
  /// </summary>
  CShowOpenPreviousDocumentMenuItem = (COpenPreviousDocumentsMaxCount > 0) and
    (CDocumentsMode <> TDocumentsMode.None);

  /// <summary>
  /// Show the "File/Open recent/Properties" menu item
  /// </summary>
  CShowOpenPreviousDocumentOptions = false;

  { ****************************************************************************
    Other settings
    ************************************************************************** }
const
  /// <summary>
  /// Show the About box dialog when F1 key is used
  /// </summary>
  CShowAboutBoxWithF1 = true;

  /// <summary>
  /// Close active form with ESCape key
  /// (and close the program if you are on the main form)
  /// </summary>
  CExitWithEscapeKey = true;

  /// <summary>
  /// Enable or disable the memory leaks report on shutdown for Windows platform.
  /// </summary>
  CReportMemoryLeaksOnShutdown = {$IFDEF DEBUG}true{$ELSE}false{$ENDIF};

var
  /// <summary>
  /// This variable must contains the XOR key to crypt/uncrypt the program
  /// settings file in RELEASE mode.
  /// </summary>
  /// <remarks>
  /// By default it's filled by an include in this unit implementation.
  /// </remarks>
  GConfigXORKey: TByteDynArray;

implementation

uses
  System.Classes,
  System.SysUtils;

procedure InitLanguages;
var
  i: integer;
begin
  setlength(GLanguages, length(CLanguages));
  for i := 0 to length(GLanguages) - 1 do
    GLanguages[i] := CLanguages[i];
end;

initialization

try
  InitLanguages;

  if CAboutTitle.Trim.IsEmpty then
    raise Exception.Create
      ('Please give a title to your project in CAboutTitle !');

  if CEditorFolderName.Trim.IsEmpty then
    raise Exception.Create
      ('Please give an editor folder name in CEditorFolderName !');

  if CProjectFolderName.Trim.IsEmpty then
    raise Exception.Create
      ('Please give a project folder name in CProjectFolderName !');

  if CDefaultLanguage.Trim.IsEmpty then
    raise Exception.Create
      ('Please specify a default language ISO code in CDefaultLanguage !');

  if (CDefaultLanguage <> CDefaultLanguage.Trim.ToLower) then
    raise Exception.Create('Please use "' + CDefaultLanguage.Trim.ToLower +
      '" as CDefaultLanguage value.');

  ReportMemoryLeaksOnShutdown := CReportMemoryLeaksOnShutdown;

{$IF Defined(RELEASE)}
{$I '..\_PRIVATE\src\ConfigFileXORKey.inc'}
{$ENDIF}
except
  on e: Exception do
  begin
    var
    s := e.message;
    tthread.forcequeue(nil,
      procedure
      begin
        raise Exception.Create(s);
      end);
  end;
end;

end.
