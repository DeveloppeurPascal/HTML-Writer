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
/// File last update : 2025-02-27T20:12:14.000+01:00
/// Signature : d832f5c6ffb8b730910b9b2b398db7671e4ee82c
/// ***************************************************************************
/// </summary>

unit uTxtAboutLicense;

interface

function GetTxtAboutLicense(const Language: string;
  const Recursif: boolean = false): string;

implementation

// For the languages codes, please use 2 letters ISO codes
// https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes

uses
  System.SysUtils,
  uConsts;

const
  CTxtEN = '''
This program is distributed as shareware. If you use it (especially for commercial or income-generating purposes), please remember the author and contribute to its development by purchasing a license.

This software is supplied as is, with or without bugs. No warranty is offered as to its operation or the data processed. Make backups!

''';
  CTxtFR = '''
Ce programme est distribué en tant que shareware. Si vous l'utilisez (en particulier à des fins commerciales ou rémunératrices), merci de vous souvenir de l'auteur et de contribuer à son développement en achetant une licence.

Ce logiciel est fourni tel quel, avec ou sans bogues. Aucune garantie n'est offerte quant à son fonctionnement ou aux données traitées. Faites des sauvegardes !

''';

function GetTxtAboutLicense(const Language: string;
  const Recursif: boolean): string;
var
  lng: string;
begin
  lng := Language.tolower;
  if (lng = 'en') then
    result := CTxtEN
  else if (lng = 'fr') then // France
    result := CTxtFR
  else if not Recursif then
    result := GetTxtAboutLicense(CDefaultLanguage, true)
  else
    raise Exception.Create('Unknow license for language "' + Language + '".');
end;

end.
