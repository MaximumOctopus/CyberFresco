//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ThemeEditor.h"

#include "Formatting.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmThemeEditor *frmThemeEditor;
//---------------------------------------------------------------------------
__fastcall TfrmThemeEditor::TfrmThemeEditor(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmThemeEditor::FormCreate(TObject *Sender)
{
	RunFrom = ExtractFilePath(Application->ExeName);

/*  Caption:='CyFredit '+CFitVersion+' / '+CFitDate;
  Application.Title:='CyFredit '+CFitVersion;

  opdMain.InitialDir:=RunFrom+'textures';

  if ParamStr(1)<>'' then begin
	LoadTheme(StrToInt(ParamStr(1)));
  end
  else
	New1Click(Nil);

  LoadSettings;
end; */
}


void __fastcall TfrmThemeEditor::FormConstrainedResize(TObject *Sender, int &MinWidth,
		  int &MinHeight, int &MaxWidth, int &MaxHeight)
{
	MinHeight = 535;
	MinWidth = 600;
}


#pragma region Main_Menu
void __fastcall TfrmThemeEditor::New1Click(TObject *Sender)
{
/*	if InternalThemeData.Location<>'$julie' then begin
	if FileExists(RunFrom+'themes\'+InternalThemeData.Location+'\preview.html') then
	  DeleteFile(RunFrom+'themes\'+InternalThemeData.Location+'\preview.html');

	if FileExists(RunFrom+'themes\'+InternalThemeData.Location+'\indexpreview.html') then
	  DeleteFile(RunFrom+'themes\'+InternalThemeData.Location+'\indexpreview.html');
	end;

	InternalThemeData.Name     :='default';
	InternalThemeData.Author   :='me';
	InternalThemeData.Location :='$julie';
	InternalThemeData.Factory  :=0;

	InternalThemeData.ThemeParts[1].fontsize    :='30';
	InternalThemeData.ThemeParts[1].fontcolour  :='000066';
	InternalThemeData.ThemeParts[1].colour      :='AAAAAA';
	InternalThemeData.ThemeParts[1].hovercolour :='FFFFFF';
	InternalThemeData.ThemeParts[1].graphic     :='';

	InternalThemeData.ThemeParts[2].fontsize    :='12';
	InternalThemeData.ThemeParts[2].fontcolour  :='000066';
	InternalThemeData.ThemeParts[2].colour      :='AAAAFF';
	InternalThemeData.ThemeParts[2].hovercolour :='FFFFFF';
	InternalThemeData.ThemeParts[2].graphic     :='';

	InternalThemeData.ThemeParts[3].fontsize    :='12';
	InternalThemeData.ThemeParts[3].fontcolour  :='000066';
	InternalThemeData.ThemeParts[3].colour      :='FFFFFF';
	InternalThemeData.ThemeParts[3].hovercolour :='000000';
	InternalThemeData.ThemeParts[3].graphic     :='';

	BuildThemeMenu;
	GeneratePreview; */
}


void __fastcall TfrmThemeEditor::Load1Click(TObject *Sender)
{
/*  s:=XLoadTheme;
  if s<>-1 then begin
	LoadTheme(s);
  end;*/
}


void __fastcall TfrmThemeEditor::miSaveClick(TObject *Sender)
{                                       /*
  overwritefactory : word;

 begin
  overwritefactory:=mrOK;

  GenerateThemeFromMenuData;

  if InternalThemeData.Factory=1 then
	overwritefactory:=MessageDlg('Are you sure you want to overwrite a factory installed theme?', mtWarning, [mbYes, mbNo], 0);

	if overwritefactory=mrOK then begin
		if InternalThemeData.Location<>'$julie')
		{
			utility.SaveTheme(InternalThemeData);
		}
	else
	  SaveAs1Click(Nil);
  end;                                    */
}


void __fastcall TfrmThemeEditor::SaveAs1Click(TObject *Sender)
{
/* var
  ret : TSaveReturn;


  ret:=DoSaveTheme;

	if ret.Simple<>'')
	{
		GenerateThemeFromMenuData;

		InternalThemeData.Name     :=ret.Description;
		InternalThemeData.Author   :=ret.Author;
		InternalThemeData.Location :=ret.Simple;

		utility.SaveTheme(InternalThemeData);

		Caption:='CyFredit '+CFitVersion+' / '+CFitDate+'    ['+InternalThemeData.Name+']';
	}                */
}
#pragma end_region


void __fastcall TfrmThemeEditor::SpeedButton3Click(TObject *Sender)
{
	if (opdMain->Execute())
	{
		iTopGraphic->Picture->LoadFromFile(opdMain->FileName);
		iTopGraphic->Hint = opdMain->FileName;

		lTopBkgdImage->Caption = ExtractFileName(opdMain->FileName);
	}
}


void __fastcall TfrmThemeEditor::SpeedButton4Click(TObject *Sender)
{
	iTopGraphic->Picture = NULL;
	lTopBkgdImage->Caption = L"no image";
	iTopGraphic->Hint = L"";
}


void __fastcall TfrmThemeEditor::SpeedButton5Click(TObject *Sender)
{
	if (opdMain->Execute())
	{
		iMainGraphic->Picture->LoadFromFile(opdMain->FileName);
		iMainGraphic->Hint = opdMain->FileName;

		lMainBkgdImage->Caption = ExtractFileName(opdMain->FileName);
	}
}


void __fastcall TfrmThemeEditor::SpeedButton6Click(TObject *Sender)
{
	iMainGraphic->Picture = NULL;
	lMainBkgdImage->Caption = L"no image";
	iMainGraphic->Hint = L"";
}


void __fastcall TfrmThemeEditor::tbPreviewClick(TObject *Sender)
{
	GeneratePreview();
}


void __fastcall TfrmThemeEditor::tbModeClick(TObject *Sender)
{
	if (tbMode->ImageIndex == 3)
	{
		tbMode->ImageIndex = 4;
	}
	else
	{
		tbMode->ImageIndex = 3;
	}

	tbPreviewClick(NULL);
}


void __fastcall TfrmThemeEditor::SpeedButton2Click(TObject *Sender)
{
	iMenuGraphic->Picture = NULL;
	lMenuBkgdImage->Caption = L"no image";
	iMenuGraphic->Hint = L"";
}


void __fastcall TfrmThemeEditor::seTopFontColourMouseDown(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
	if (Shift.Contains(ssLeft))
	{
		if (cdMain->Execute())
		{
			TShape *shape = (TShape*)Sender;

			shape->Brush->Color = cdMain->Color;
		}
	}
}


void __fastcall TfrmThemeEditor::Help2Click(TObject *Sender)
{                                             /*
	OpenHelpWindow;*/
}


void __fastcall TfrmThemeEditor::sbMenuBkgdImageClick(TObject *Sender)
{
	if (opdMain->Execute())
	{
		iMenuGraphic->Picture->LoadFromFile(opdMain->FileName);
		iMenuGraphic->Hint = opdMain->FileName;

		//lMenuBkgdImage->Caption = ExtractFileName(opdMain->Filename);
	}
}


void TfrmThemeEditor::LoadTheme(int index)
{
	SelectedTheme = index;

//	Caption = 'CyFredit '+CFitVersion+' / '+CFitDate+'    ['+InternalThemeData.Name+']';

	BuildUIFromTheme();

//	GeneratePreview();
}


void TfrmThemeEditor::GeneratePreview()
{
	std::wstring filename = L"";

	GenerateThemeFromMenuData();

	if (tbMode->ImageIndex == 3)
	{
		if (CFThemeHandler->Themes[SelectedTheme]->Location == L"$julie")
		{
			filename = RunFrom + L"cftheme\\preview.html";
		}
		else
		{
			filename = RunFrom + L"themes\\" + CFThemeHandler->Themes[SelectedTheme]->Location + L"\\preview.html";
		}

		CFThemeHandler->BuildThemePreview(CFThemeHandler->Themes[SelectedTheme], filename);
	}
	else if (tbMode->ImageIndex == 4)
	{
		if (CFThemeHandler->Themes[SelectedTheme]->Location == L"$julie")
		{
			filename = RunFrom + L"cftheme\\indexpreview.html";
		}
		else
		{
			filename = RunFrom + L"themes\\" + CFThemeHandler->Themes[SelectedTheme]->Location + L"\\indexpreview.html";
		}

		CFThemeHandler->BuildIndexThemePreview(CFThemeHandler->Themes[SelectedTheme], filename, RunFrom);
	}

	wbPreview->Navigate(filename.c_str());
}


void TfrmThemeEditor::BuildUIFromTheme()
{
	seTopFontSize->Value             = stoi(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].FontSize);
	seTopFontColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].FontColour));
	seTopFontHighlight->Brush->Color = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].HoverColour));
	seTopBkgdColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Colour));

	if (CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Graphic == L"")
	{
		iTopGraphic->Hint      = L"";
		lTopBkgdImage->Caption = L"no image";
		iTopGraphic->Picture->LoadFromFile(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Graphic.c_str());
	}
	else
	{
		iTopGraphic->Hint      = CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Graphic;
		lTopBkgdImage->Caption = ExtractFileName(CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Graphic.c_str());
		iTopGraphic->Picture   = NULL;
	}

	// ===========================================================================

	seMenuFontSize->Value             = stoi(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].FontSize);
	seMenuFontColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].FontColour));
	seMenuFontHighlight->Brush->Color = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].HoverColour));
	seMenuBkgdColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Colour));

	if (CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Graphic == L"")
	{
		iMenuGraphic->Hint      = L"";
		lMenuBkgdImage->Caption = L"no image";
		iMenuGraphic->Picture->LoadFromFile(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Graphic.c_str());
	}
	else
	{
		iMenuGraphic->Hint      = CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Graphic;
		lMenuBkgdImage->Caption = ExtractFileName(CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Graphic.c_str());
		iMenuGraphic->Picture   = NULL;
	}

	// ===========================================================================

	seMainFontSize->Value             = stoi(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].FontSize);
	seMainFontColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].FontColour));
	seMainFontHighlight->Brush->Color = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].HoverColour));
	seMainBkgdColour->Brush->Color    = TColor(Formatting::StringToHexColour(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Colour));

	if (CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Graphic == L"")
	{
		iMainGraphic->Hint      = L"";
		lMainBkgdImage->Caption = L"no image";
		iMainGraphic->Picture->LoadFromFile(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Graphic.c_str());
	}
	else
	{
		iMainGraphic->Hint      = CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Graphic.c_str();
		lMainBkgdImage->Caption = ExtractFileName(CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Graphic.c_str());
		iMainGraphic->Picture   = NULL;
	}
}


void TfrmThemeEditor::GenerateThemeFromMenuData()
{
	CFThemeHandler->Themes[SelectedTheme]->Attributes[0].FontSize    = std::to_wstring(seTopFontSize->Value);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[0].FontColour  = Formatting::HexColourToString(seTopFontColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Colour      = Formatting::HexColourToString(seTopBkgdColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[0].HoverColour = Formatting::HexColourToString(seTopFontHighlight->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[0].Graphic     = iTopGraphic->Hint;

	CFThemeHandler->Themes[SelectedTheme]->Attributes[1].FontSize    = std::to_wstring(seMenuFontSize->Value);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[1].FontColour  = Formatting::HexColourToString(seMenuFontColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Colour      = Formatting::HexColourToString(seMenuBkgdColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[1].HoverColour = Formatting::HexColourToString(seMenuFontHighlight->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[1].Graphic     = iMenuGraphic->Hint;

	CFThemeHandler->Themes[SelectedTheme]->Attributes[2].FontSize    = std::to_wstring(seMainFontSize->Value);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[2].FontColour  = Formatting::HexColourToString(seMainFontColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Colour      = Formatting::HexColourToString(seMainBkgdColour->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[2].HoverColour = Formatting::HexColourToString(seMainFontHighlight->Brush->Color);
	CFThemeHandler->Themes[SelectedTheme]->Attributes[2].Graphic     = iMainGraphic->Hint;
}
