//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include <filesystem>

#include <Jpeg.hpp>
#include "FileCtrl.hpp"

#include "main.h"

#include "Constants.h"
#include "Formatting.h"

#include "BuildLocalWizard.h"
#include "Checklist.h"
#include "CFSettings.h"
#include "NewSection.h"
#include "PictureViewer.h"
#include "ProjectInformation.h"
#include "RelocateFolder.h"
#include "ThemeEditor.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMain *frmMain;
//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
	: TForm(Owner)
{

}


void __fastcall TfrmMain::FormCreate(TObject *Sender)
{
	Caption = CFCaption.c_str();
	Application->Title = CFApplicationTitle.c_str();

	RunFrom = ExtractFilePath(Application->ExeName);
    LastImagesFolder = RunFrom;

	CFSettings = new Settings(RunFrom + L"settings.ini");

	CFAlbum = new Album();

	CFThemeHandler = new CyberThemeHandler(RunFrom + L"Themes\\");
	CFImageHandler = new ImageHandler();
	CFPageGenerator = new PageGenerator(RunFrom);

	//  LoadHistory;

	//LoadNoImage();

	for (int t = 0; t < CFThemeHandler->Themes.size(); t++)
	{
		cbThemeList->Items->Add(CFThemeHandler->Themes[t]->Name.c_str());
		cbAIPTheme->Items->Add(CFThemeHandler->Themes[t]->Name.c_str());
	}

	cbThemeList->ItemIndex = 0;
	cbThemeListChange(NULL);

    cbAIPTheme->ItemIndex = 0;

    pcMain->TabIndex = 0;

    BuildTreeDisplay();
}


void __fastcall TfrmMain::FormConstrainedResize(TObject *Sender, int &MinWidth, int &MinHeight,
		  int &MaxWidth, int &MaxHeight)
{
	MinWidth = 787;
	MinHeight = 598;
}


void __fastcall TfrmMain::FormClose(TObject *Sender, TCloseAction &Action)
{
//	 SaveHistory;
//	SaveSettings;

    delete CFSettings;
	delete CFAlbum;

	delete CFPageGenerator;
	delete CFImageHandler;
	delete CFThemeHandler;
}


void __fastcall TfrmMain::sbMainResize(TObject *Sender)
{
	sbMain->Panels->Items[0]->Width = sbMain->Width - 88;
}


#pragma region Init
void TfrmMain::LoadNoImage()
{
	std::wstring ni1 = RunFrom + L"data\noimage.bmp";
	std::wstring ni2 = RunFrom + L"data\noimageindex.bmp";

	TBitmap *bm = new TBitmap();

	bm->LoadFromFile(ni1.c_str());

	ilBig->Add(bm, NULL);

	bm->LoadFromFile(ni2.c_str());

	ilBig->Add(bm, NULL);
}
#pragma end_region


#pragma region MainMenu
void __fastcall TfrmMain::miNewAlbumClick(TObject *Sender)
{
	if (MessageDlg(L"Create a new album?  Your changes will not be saved!", mtWarning, mbYesNo, 0) == mrYes)
	{
		CFAlbum->Clear();

		CFAlbum->AddEmptyAlbum();

		BuildTreeDisplay();

		UpdateForNewAlbum();

		ToggleDisplay(true);

	// -- now set defaults from Settings ---------------------------------------
	//if CFSettings.UseDefaultFTP then begin
//	  eWebsiteURL.Text :=CFSettings.WebsiteURL;
//	  eFTPHost.Text    :=CFSettings.FTPHost;
//	  eUsername.Text   :=CFSettings.Username;
//	  ePassword.Text   :=CFSettings.Password;
//	  eASHomeLink.Text :=CFSettings.HomeURL;
//	end;
	}
}


void __fastcall TfrmMain::miNewAlbumWizardClick(TObject *Sender)
{
	//DoAlbumWizard();
}


void __fastcall TfrmMain::miNewAlbumFromFoldersClick(TObject *Sender)
{
	System::UnicodeString initial = RunFrom.c_str();

	if (SelectDirectory(initial, TSelectDirOpts() << sdAllowCreate << sdPerformCreate << sdPrompt, 1000))
	{
		std::wstring folder = initial.c_str();

		CFAlbum->CreateFromFolder(folder + L"\\");

		BuildTreeDisplay();

		UpdateForNewAlbum();

		ToggleDisplay(true);
	}
}


void __fastcall TfrmMain::miOpenClick(TObject *Sender)
{
	std::wstring initialfolder = RunFrom + L"saves";

	odMain->Title = L"Select album to load";
	odMain->InitialDir = initialfolder.c_str();
	odMain->Filter = L"CyberFresco Albums (*.cfa)|*.cfa";

	if (odMain->Execute())
	{
		if (ExtractFileExt(odMain->FileName) == L".cfa")
		{
			ClearAll();

			SelectedSection = -1;

			if (CFAlbum->Load(odMain->FileName.c_str()))
			{
				BuildTreeDisplay();

				UpdateForNewAlbum();

				ToggleDisplay(true);

				//AddToHistory(cbAIPTitle.Text, Filename, IntToStr(x), IntToStr(y));

				ToggleTabs(tab_Album);

				//  if errorstuff.Count>0 then
				//	DoError('Error while loading album...', 'The following images are part of this album but could not be located. They will not be included in any upload or preview.', errorstuff);
			}
		}
		else
		{
			// to do error
		}
	}
}


void __fastcall TfrmMain::miCloseClick(TObject *Sender)
{
	if (CFAlbum->ChangesPending)
	{
		//if savewarning then
//			if MessageDlg('Are you sure?'+#13+#13+'Your changes will not be saved!', mtWarning, mbYesNo, 0) == mrNo then
//			  doclose:=False;

//		if doclose)
//		{
//			tvAlbum.Items.Clear;
//			ToggleDisplay(False);
//			ToggleTabs(tm_Welcome);
//			currentsection:=Nil;
//			wbWelcome.Navigate(RunFrom+'data\intro\index.htm');
//			AlbumDoesntNeedSaving;
//		}
	}
}


void __fastcall TfrmMain::miSaveAsClick(TObject *Sender)
{
	if (sdMain->Execute())
	{
		CFAlbum->Save(sdMain->FileName.c_str());

		//    tvAlbum.Items.GetFirstNode.Text:=ExtractFileNameNoExt(ExtractFileName(sdMain.FileName));
	}
}


void __fastcall TfrmMain::miSaveClick(TObject *Sender)
{
	if (CFAlbum->ProjectFileName == L"")
	{
		miSaveAsClick(NULL);
	}
	else
	{
		CFAlbum->Save(CFAlbum->ProjectFileName);
	}
}


void __fastcall TfrmMain::miExitClick(TObject *Sender)
{
	if (CFAlbum->ChangesPending)
	{
		if (MessageDlg(L"Really Exit?  Your changes will not be saved!", mtWarning, mbYesNo, 0) == mrNo)
		{
			//			Close;
		}
	}
}


void __fastcall TfrmMain::miSettingsClick(TObject *Sender)
{
	frmSettings->ShowTips = CFSettings->ShowTips;

	frmSettings->UseDefaultFTP = CFSettings->UseDefaultFTP;
	frmSettings->WebsiteURL = CFSettings->WebsiteURL;
	frmSettings->FTPHost = CFSettings->FTPHost;
	frmSettings->Username = CFSettings->Username;
	frmSettings->Password = CFSettings->Password;
	frmSettings->HomeURL = CFSettings->HomeURL;
	frmSettings->FTPPassive = CFSettings->FTPPassive;
	frmSettings->FTPPort = CFSettings->FTPPort;

	if (frmSettings->ShowModal() == mrOk)
	{
		CFSettings->ShowTips = frmSettings->ShowTips;

		CFSettings->UseDefaultFTP = frmSettings->UseDefaultFTP;
		CFSettings->WebsiteURL = frmSettings->WebsiteURL;
		CFSettings->FTPHost = frmSettings->FTPHost;
		CFSettings->Username = frmSettings->Username;
		CFSettings->Password = frmSettings->Password;
		CFSettings->HomeURL = frmSettings->HomeURL;
		CFSettings->FTPPassive = frmSettings->FTPPassive;
		CFSettings->FTPPort = frmSettings->FTPPort;
    }
}


void __fastcall TfrmMain::miRelocateFolderClick(TObject *Sender)
{
	if (frmRelocateFolder->ShowModal() == mrOk)
	{
		CFAlbum->Relocate(frmRelocateFolder->OldPattern, frmRelocateFolder->NewPattern);

	    BuildTreeDisplay();
	}
}


void __fastcall TfrmMain::miCheckListClick(TObject *Sender)
{
	bool CheckList[7] = { true, true, true, true, true, true, true };

	if (CFAlbum->Sections.size() == 0)
	{
		CheckList[0] = false;
		CheckList[1] = false;
		CheckList[2] = false;
		CheckList[3] = false;
	}
	else
	{
		for (int t = 0; t < CFAlbum->Sections.size(); t++)
		{
			if (CFAlbum->Sections[t]->ImageForIndex == L"")
			{
				CheckList[0] = false;
			}

			if (CFAlbum->Sections[t]->Caption == L"")
			{
				CheckList[1] = false;
			}

			if (CFAlbum->Sections[t]->Description == L"")
			{
				CheckList[2] = false;
			}

			if (CFAlbum->Sections[t]->ThemeName == L"")
			{
				CheckList[3] = false;
			}
		}
	}

	if (CFAlbum->ThemeName == L"") CheckList[4] = false;
	if (CFAlbum->Title == L"" || CFAlbum->Title == L"untitled") CheckList[5] = false;

	if (!CheckFTPDetails()) CheckList[6] = false;

	for (int t = 0; t < 7; t++)
	{
		frmCheckList->CheckList[t] = CheckList[t];
	}

	frmCheckList->ShowModal();
}


void __fastcall TfrmMain::miPictureBrowserClick(TObject *Sender)
{
	if (SelectedSection >= 0)
	{
		frmPictureViewer->Clear();

		for (int t = 0; t < CFAlbum->Sections[SelectedSection]->Images.size(); t++)
		{
			frmPictureViewer->Add(CFAlbum->Sections[SelectedSection]->Images[t]);
		}

		frmPictureViewer->ShowModal();
	}
}


void __fastcall TfrmMain::miUploadSectionIndexPagesClick(TObject *Sender)
{                                         /*
procedure TfrmMain.SectionIndexpages1Click(Sender: TObject);
 var
  searchrec : TSearchRec;
  totaluploadcount, fromx,tox,t,numpages : integer;
  filelist : TStringList;
  cancreatedirectory : boolean;
  newobjectdata : PSectionInfo;

 begin
  if MessageDlg(L"Are you sure?", mtConfirmation, mbYesNo, 0) == mrYes then begin
	New(newobjectdata);
	newobjectdata:=currentsection.Data;

	filelist:=TStringList.Create;

	InitialisePreview('Uploading Section Indexes', '', '', 1);

	if Not(DirectoryExists(RunFrom+'preview\'+currentsection.Text+'\')) then
	  MkDir(RunFrom+'preview\'+currentsection.Text+'\');

	// generate pages ----------------------------------------------------------
	lPreviewText.Caption:='Generating pages...';
	pbPreview.Max:=lbPictureList.Items.Count-1;
	pbPreview.Position:=0;
	// -------------------------------------------------------------------------

	if lbPictureList.Items.Count>seMaxPerPage.Value then begin
	  int page_count = Ceil(lbPictureList.Items.Count/seMaxPerPage.Value);

	  for (int p = 0; p < page_count; p++)
      {
		fromx:=((t-1)*seMaxPerPage.Value);
		tox:=fromx+seMaxPerPage.Value-1;
		if tox>lbPictureList.Items.Count-1 then
		  tox:=lbPictureList.Items.Count-1;

		if t=1 then
		  GeneratePage(numpages, t, fromx, tox, newobjectdata^.PageHeaderColour, newobjectdata^.PageFooterColour, RunFrom+'preview\'+currentsection.Text+'\'+eAIPFilename.Text, True, newobjectdata^.ThumbnailsOnly)
		else
		  GeneratePage(numpages, t, fromx, tox, newobjectdata^.PageHeaderColour, newobjectdata^.PageFooterColour, RunFrom+'preview\'+currentsection.Text+'\p'+IntToStr(t)+'.html', True, newobjectdata^.ThumbnailsOnly);
	  end;
	end
	else
	  GeneratePage(1, 1, 0, lbPictureList.Items.Count-1, newobjectdata^.PageHeaderColour, newobjectdata^.PageFooterColour, RunFrom+'preview\'+currentsection.Text+'\'+eAIPFilename.Text, True, newobjectdata^.ThumbnailsOnly);

	// ---------------------------------------------------------------------------

	// pages have been generated, now upload them!
	ChangeStatusText('Connecting to '+eFTPHost.Text+'...', '', '');

	// connect to FTP Server -------------------------------------------------
	ftpMain.Host     :=eFTPHost.Text;
	ftpMain.Password :=ePassword.Text;
	ftpMain.Username :=eUsername.Text;

	ftpMain.Connect(True);

	if eAlbumRoot.Text<>'' then
	  ftpMain.ChangeDir(eAlbumRoot.Text);

	ftpMain.List(filelist);

	cancreatedirectory:=True;
	for t:=0 to filelist.count-1 do
	  if DirExistFromFTPList(currentsection.Text, filelist.strings[t]) then cancreatedirectory:=False;

	if cancreatedirectory then
	  ftpMain.MakeDir(currentsection.Text);

	ftpMain.ChangeDir(currentsection.Text);
	// -----------------------------------------------------------------------

	if ftpMain.Connected then begin
	  totaluploadcount:=GenerateUploadCount(RunFrom+'preview\'+currentsection.Text+'\*.*')+lbPictureList.Items.Count;
	  pbPreview.Max:=totaluploadcount;

	  if FindFirst(RunFrom+'preview\'+currentsection.Text+'\*.html', 0, searchrec)=0 then begin
		repeat
		  ChangeStatusText('Uploading Files', searchrec.Name, eFTPHost.Text+'/'+eAlbumRoot.Text+'/'+currentsection.text+'/'+searchrec.Name);
		  ftpMain.Put(RunFrom+'preview\'+currentsection.Text+'\'+searchrec.name, searchrec.Name);
		  pbPreview.Position:=pbPreview.Position+1;
		until FindNext(searchrec)<>0;

		FindClose(searchrec);
	  end;

	  ftpMain.Disconnect;
	end;
	DeInitialisePreview;

	ExecuteFile(0, eWebsiteURL.Text+'/'+currentsection.Text+'/'+eAIPFilename.Text, '', '', sw_show);
  end;
end;               */
}


void __fastcall TfrmMain::miUploadAlbumIndexClick(TObject *Sender)
{
/*	if (MessageDlg(L"Are you sure?", mtConfirmation, mbYesNo, 0) == mrYes)
	{
		UploadAlbumIndex;

		ExecuteFile(0, eWebsiteURL.Text+'/'+eAIPFilename.Text, '', '', sw_show);
	}*/
}


void __fastcall TfrmMain::miBuildLocalAutomaticClick(TObject *Sender)
{
	System::UnicodeString initial = CFAlbum->LastExportFolder.c_str();

	if (initial == L"")
	{
		initial = RunFrom.c_str();
	}

	if (SelectDirectory(initial, TSelectDirOpts() << sdAllowCreate << sdPerformCreate << sdPrompt, 1000))
	{
		CFAlbum->LastExportFolder = initial.c_str();

		lbLog->Items->Clear();

		GenerateLocalFiles(initial.c_str(), true, true, true);
	}
}


void __fastcall TfrmMain::miBuildLocalWizardClick(TObject *Sender)
{
	frmBuildLocalWizard->SectionNames.clear();
	frmBuildLocalWizard->SectionBuild.clear();

	for (int t = 0; t < CFAlbum->Sections.size(); t++)
	{
		frmBuildLocalWizard->SectionNames.push_back(CFAlbum->Sections[t]->Caption);
		frmBuildLocalWizard->SectionBuild.push_back(true);
	}

	frmBuildLocalWizard->Location = CFAlbum->LastExportFolder;

	if (frmBuildLocalWizard->ShowModal() == mrOk)
	{
        lbLog->Items->Clear();

		GenerateLocalFiles(frmBuildLocalWizard->Location,
						   frmBuildLocalWizard->Options[2],
						   frmBuildLocalWizard->Options[1],
						   frmBuildLocalWizard->Options[0]);
	}
}


void __fastcall TfrmMain::miRenameClick(TObject *Sender)
{
/*
  newfilename, stem, s : string;
  t,idx,numzero : integer;
  newpiclist : TStringList;

 begin
  s:=RenameWizard(currentsection.Text, lbPictureList.Count);
  if s<>'' then begin
	idx:=Pos('_', s);
	stem:='';
	for t:=1 to idx-1 do
	  stem:=stem+s[t];

	numzero:=StrToInt(s[idx+1]);

	newpiclist:=TStringList.Create;

	pbPreview.Position:=0;
	pbPreview.Max:=lbPictureList.Items.Count-1;
	InitialisePreview('Renaming Files', 'Current Process', '', 1);

	for t:=0 to lbPictureList.Items.Count-1 do begin
	  newfilename:=ExtractFilePath(lbPictureList.Items[t])+stem+'_'+LeadingCharacters(numzero, '0', IntToStr(t))+'.jpg';

	  ChangeStatusText('Renaming Files', lbPictureList.Items[t], newfilename);

	  if RenameFile(lbPictureList.Items[t], newfilename) then begin
		newpiclist.Add(newfilename);

		if eSIndexImage.Text=lbPictureList.Items[t] then
		  eSIndexImage.Text:=newfilename;
	  end
	  else
		newpiclist.Add(lbPictureList.Items[t]);

	  pbPreview.Position:=pbPreview.Position+1;
	end;

	lbPictureList.Items:=newpiclist;

	DeInitialisePreview;
  end;
*/
}


void __fastcall TfrmMain::miHelpClick(TObject *Sender)
{
//  OpenHelpWindow('');
}


void __fastcall TfrmMain::miContextHelpClick(TObject *Sender)
{
/*	switch (pcMain->ActivePageIndex)
	{
	case 1:
		frmHelp->ShowPage(L"piclisttab.htm");
		break;
	case 3:
		frmHelp->ShowPage(L"themetab.htm");
		break;
	case 2:
		frmHelp->ShowPage(L"settings1.htm");
		break;
	case 3:
		frmHelp->ShowPage(L"settings2.htm");
		break;
	}   */
}


void __fastcall TfrmMain::miWebsiteClick(TObject *Sender)
{
//  ExecuteFile(0, 'http://freshney.org/cyberfresco/', '', '', sw_show);
}


void __fastcall TfrmMain::miCheckForNewVersionClick(TObject *Sender)
{
//
}


void __fastcall TfrmMain::miAboutClick(TObject *Sender)
{
	//frmAbout->ShowModal();
}
#pragma end_region


#pragma region UI
void TfrmMain::ToggleDisplay(bool newstatus)
{
	tbSave->Enabled           = newstatus;
	tbAdd->Enabled            = newstatus;
	tbDelete->Enabled         = newstatus;
	tbUploadSection->Enabled  = newstatus;
	tbUploadAlbum->Enabled    = newstatus;
	tbPreviewIndex->Enabled   = newstatus;
	tbPreviewSection->Enabled = newstatus;
	tbPreviewAlbum->Enabled   = newstatus;
	tbInfo->Enabled           = newstatus;

	// menu items
	miClose->Enabled          = newstatus;
	miSave->Enabled           = newstatus;
	miSaveAs->Enabled         = newstatus;
	miCheckList->Enabled      = newstatus;
	miGUpload->Enabled        = newstatus;
	miGBuildLocal->Enabled    = newstatus;
	miRename->Enabled         = newstatus;
}


void TfrmMain::UpdateStuff()
{ /*
  newobjectdata : PSectionInfo;
  fsize : longint;

 begin
  lInfoNum.Caption:=IntToStr(lbPictureList.Items.Count);

  if currentsection<>NIL then begin
	New(newobjectdata);
	newobjectdata:=currentsection.Data;
	fsize:=newobjectdata^.SizeOfImages;

	if fsize=0 then begin
	  GetSizeOfFiles;

	  New(newobjectdata);
	  newobjectdata:=currentsection.Data;
	  fsize:=newobjectdata^.SizeOfImages;
	end;
  end;

  lInfoSize.Caption:=ConvertToUsefulUnit(fsize);

  if seMaxPerPage.Value>=1 then
	lSPageCount.Caption:=IntToStr(Ceil(lbPictureList.Items.Count/seMaxPerPage.Value));

  lSThumbnailWidth.Caption:=IntToStr((seMaxAcross.Value*seMaxDimension.Value)+((seMaxAcross.Value-1)*2));

  AlbumNeedsSaving(Nil);*/
}


void TfrmMain::InitialisePreview(const std::wstring cm, const std::wstring c1, const std::wstring c2, int sizemode)
{
	AddToLog(cm);

	Label1->Caption = c1.c_str();
	Label2->Caption = c2.c_str();

	for (int t = 0; t < 4; t++)
	{
		pcMain->Pages[t]->TabVisible = false;
	}

	pcMain->TabIndex = tab_Log;

}


void TfrmMain::DeInitialisePreview()
{
/*  for t:=0 to 3 do
	pcMain.Pages[t].TabVisible :=True;

  pcMain.Pages[4].TabVisible:=False;

  Caption:='CyberFresco '+CFVersion+' / '+CFDate+'   (c) Paul Alan Freshney'; */
}


void TfrmMain::ClearAll()
{
	lbPictureList->Clear();
	ilBig->GetBitmap(1, iSetForIndex->Picture->Bitmap);
	ilBig->GetBitmap(0, iPreview->Picture->Bitmap);

	cbThemeList->ItemIndex = 0;
	cbThemeListChange(NULL);

	seMaxPerPage->Value = 30;
	seMaxAcross->Value = 3;
	seMaxDimension->Value = 275;
	eSCaption->Text = L"";
	eSDescription->Text = L"";
	eSIndexImage->Text = L"";
	cbSThumbnailsOnly->Checked = false;

	eWebsiteURL->Text = L"";
	eFTPHost->Text = L"";
	eAlbumRoot->Text = L"";
	eUsername->Text = L"";
	ePassword->Text = L"";

	cbAIPTitle->Text = L"untitled";
	eAIPFilename->Text = L"index.htm";
	seAIPThumbnailWidth->Text = L"150";
	cbAIPTheme->ItemIndex = 0;
	cbAIPThemeChange(NULL);

	cbSDPageHeader->Checked = false;
	eSDPageHeaderText->Text = L"click to see larger image";
	sPageHeader->Brush->Color = TColor(0x000000);

	cbSDPageFooter->Checked = false;
	eSDPageFooterText->Text = L"click to see larger image";
	sPageFooter->Brush->Color = TColor(0x000000);

	cbSPResize->Checked = false;
	eSPWidth->Text = L"800";
	eSPHeight->Text = L"600";
}


void TfrmMain::UpdateForNewAlbum()
{
   //	cbAIPTheme->ItemIndex = CFThemeHandler->(config.ReadString('Album', 'themename', ''));

	cbAIPTheme->OnChange(NULL);
}


void TfrmMain::UpdateAlbumChangesPendingStatus()
{
	if (CFAlbum->ChangesPending)
	{
		sbMain->Panels->Items[1]->Text = L"Modified";
	}
	else
	{
		sbMain->Panels->Items[1]->Text = L"";
	}
}
#pragma end_region


#pragma region Toolbar
void __fastcall TfrmMain::tbSaveClick(TObject *Sender)
{
	Cursor = crHourGlass;

	if (CFAlbum->ProjectFileName.empty())
	{
		std::wstring initialfolder = RunFrom + L"saves";

		sdMain->InitialDir = initialfolder.c_str();

		if (sdMain->Execute())
		{
			CFAlbum->Save(sdMain->FileName.c_str());

			//tvAlbum.Items.GetFirstNode.Text:=ExtractFileNameNoExt(ExtractFileName(sdMain.FileName));

			//AddToHistory(cbAIPTitle.Text, Filename, IntToStr(x), IntToStr(y));

            CFAlbum->SetNoChangesPending();
		}
	}
	else
	{
		CFAlbum->Save(CFAlbum->ProjectFileName);
	}

//	forcerebuild:=0;

 	Cursor = crDefault;
}


void __fastcall TfrmMain::tbAddClick(TObject *Sender)
{
	if (frmNewSection->ShowModal() == mrOk)
	{
		if (frmNewSection->SelectedName == L"") return;

		CFAlbum->AddSection(frmNewSection->SelectedName);

		TTreeNode *first = tvAlbum->Items->GetFirstNode();

		TTreeNode *section = tvAlbum->Items->AddChild(first, frmNewSection->SelectedName.c_str());
		section->SelectedIndex = ImageSection;
		section->ImageIndex = ImageSectionDisabled;
		section->Selected = true;

        PreserveCurrentData();

		SelectedSection = section->Index;

		ClearAll();

		tvAlbumClick(NULL);

		//if (CFSettings->ShowTips)
		//{
		  //	OpenTip('tip_add.htm', Tip_AddSection);
//		}

		CFAlbum->ChangesPending = true;
	}
}


void __fastcall TfrmMain::tbDeleteClick(TObject *Sender)
{
	std::wstring message = L"Delete section \"" + CFAlbum->Sections[SelectedSection]->Caption + L"\"?";

	if (MessageDlg(message.c_str(), mtWarning, mbYesNo, 0) == mrYes)
	{
		//tvAlbum.Selected.Delete;

		//currentsection:=Nil;

		//AlbumNeedsSaving(Nil);
	}
}


void __fastcall TfrmMain::tbUploadSectionClick(TObject *Sender)
{
	if (!CFAlbum->Sections[SelectedSection]->HasValidImages)
	{
		//OpenTip('tip_noimages.htm', Tip_Important);
		return;
	}

	if (!CheckFTPDetails())
	{
	 //	OpenTip('tip_needftp.htm', Tip_Important);
		return;
	}

	std::wstring message = L"Upload section \"" + CFAlbum->Sections[SelectedSection]->Caption + L"\"?";

	if (MessageDlg(message.c_str(), mtConfirmation, mbYesNo, 0) == mrYes)
	{
		// ensure all altered data is saved
		//		tvAlbumClick(Nil);
		// --------------------------------

		/*
		ChangeStatusText('Uploading Section ['+currentsection.Text+']', '', '');
		InitialisePreview('Uploading Album', 'Current Process', '', 1);

		UploadCurrentSection(RunFrom+'preview\'+currentsection.Text, True, True, True);

		DeInitialisePreview;

		CFPlaySound(CFSoundUploaded);

		ExecuteFile(0, eWebsiteURL.Text+'/'+currentsection.Text+'/'+eAIPFilename.Text, '', '', sw_show);*/
	}
}


void __fastcall TfrmMain::tbUploadAlbumClick(TObject *Sender)
{
	if (MessageDlg(L"Upload entire album?", mtWarning, mbYesNo, 0) == mrYes)
	{                         /*
		InitialisePreview('Uploading Album', 'Current Process', 'Current File', 2);

		for (int s = 0; s < CFAlbum->Sections->size(); s++)
		{
			if tvAlbum.Items[t].Parent=tvAlbum.Items.GetFirstNode then begin
				tvAlbum.Items[t].Selected:=True;

				tvAlbumClick(tvAlbum.Items[t]);

				ChangeStatusText('Uploading Section... ['+currentsection.Text+']', '', '');
				UploadCurrentSection(RunFrom+'preview\'+currentsection.Text, true, true, true);
			}
		}

		UploadAlbumIndex();

		DeInitialisePreview;*/
	}
}


void __fastcall TfrmMain::tbPreviewIndexClick(TObject *Sender)
{
/*	if (CFSettings->ShowTips)
	{
		OpenTip('tip_checklist.htm', Tip_CheckList);
	}

	// ensure all altered data is saved
	tvAlbumClick(Nil);
	// --------------------------------

	GenerateAlbumIndex(RunFrom+'preview', False);

	ExecuteFile(0, RunFrom+'preview\'+eAIPFilename.Text, '', '', sw_show);*/
}


void __fastcall TfrmMain::tbPreviewSectionClick(TObject *Sender)
{
/*  numpages, t : integer;
  fromx, tox : integer;
  newobjectdata : PSectionInfo;


  if NumberOfValidImages_Section>0 then begin
	// ensure all altered data is saved
	tvAlbumClick(Nil);
	// --------------------------------

	if CFSettings.showtips then OpenTip('tip_checklist.htm', Tip_CheckList);

	InitialisePreview('Previewing Section', 'Current Process', '', 1);

	BuildSectionPreview;

	DeInitialisePreview;

	ExecuteFile(0, RunFrom+'preview\'+currentsection.Text+'\'+eAIPFilename.Text, '', '', sw_show);
  end
  else begin
	OpenTip('tip_noimages.htm', Tip_Important);
  end; */
}


void __fastcall TfrmMain::tbPreviewAlbumClick(TObject *Sender)
{
/*

  if NumberOfValidImages_Album>0 then begin
	// ensure all altered data is saved
	tvAlbumClick(Nil);
	// --------------------------------

	if CFSettings.showtips then OpenTip('tip_checklist.htm', Tip_CheckList);

	pbThisFile.Max:=tvAlbum.Items.GetFirstNode.Count;
	pbThisFile.Position:=0;
	InitialisePreview('Previewing Album', 'Current Section', 'Album Preview', 2);

	for t:=0 to tvAlbum.Items.GetFirstNode.Count-1 do begin
	  tvAlbum.Items.GetFirstNode.Item[t].Selected:=True;

	  tvAlbumClick(tvAlbum.Items.GetFirstNode.Item[t]);

	  ChangeStatusText('Building Section... ['+currentsection.Text+']', '', '');
	  BuildSectionPreview;

	  pbThisFile.Position:=t+1;
	  pbThisFile.Refresh;
	end;

	DeInitialisePreview;

	GenerateAlbumIndex(RunFrom+'preview', False);

	ExecuteFile(0, RunFrom+'preview\'+eAIPFilename.Text, '', '', sw_show);
  end
  else begin
	OpenTip('tip_noimages.htm', Tip_Important);
  end;       */
}


void __fastcall TfrmMain::tbInfoClick(TObject *Sender)
{
	ShowInformation();
}


void TfrmMain::ShowInformation()
{
	int imagecount = 0;
//    long int projectsize = 0;

	std::wstring a = CFAlbum->Title;
	std::wstring b = L"not yet saved";
	std::wstring c = L"0";

	if (CFAlbum->ProjectFileName != L"")
	{
		b = CFAlbum->ProjectFileName;
	}

	for (int t = 0; t < CFAlbum->Sections.size(); t++)
	{
		std::wstring s1 = CFAlbum->Sections[t]->Name;
		std::wstring s2 = std::to_wstring(CFAlbum->Sections[t]->Images.size());
		std::wstring s3 = L"0";
		std::wstring s4 = CFAlbum->Sections[t]->Created;
		std::wstring s5 = CFAlbum->Sections[t]->LastUploaded;

		frmProjectInformation->AddTableRow(s1, s2, s3, s4, s5);

		imagecount += CFAlbum->Sections[t]->Images.size();
	}

	c = std::to_wstring(imagecount);        // 	lAlbumSize.Caption:=ConvertToUsefulUnit(projectsize)+' ['+IntToStr(numimages)+' images]';

	frmProjectInformation->SetCaptions(a, b, c);

	frmProjectInformation->ShowModal();
 }
#pragma end_region


#pragma region Toolbar_Preview
void TfrmMain::BuildSectionPreview()
{
//	  if Not(DirectoryExists(RunFrom+'preview\'+currentsection.Text+'\')) then
//		MkDir(RunFrom+'preview\'+currentsection.Text+'\');

	// generate thumbnails -------------------------------------------------------
	InitialisePreview(L"Generating Thumbnail images...", L"Current Process", L"Current File", 2);
	// ---------------------------------------------------------------------------

	std::wstring section_root = RunFrom + L"preview\\" + CFAlbum->Sections[SelectedSection]->Name + L"\\";

	if (CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails)
	{
		std::wstring section_thumbnail = CFAlbum->Sections[SelectedSection]->GetThumbnailFileName();

		CFImageHandler->GenerateThumbnail(CFAlbum->ThumbnailSize,
										  section_thumbnail,
										  section_root + std::to_wstring(SelectedSection) + L"-t.jpg");

		CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails = false;
	}

	// put theme images in correct location
	for (int t = 0; t < 3; t++)
	{
//		if ( ThemeList[cbThemeList.ItemIndex].ThemeParts[t].graphic<>'')
//		{
//		  CopyFile(PChar(ThemeList[cbThemeList.ItemIndex].ThemeParts[t].graphic), PChar(RunFrom+'preview\'+currentsection.Text+'\i'+IntToStr(t)+'.jpg'), FALSE);
//		}
	}

	// generate thumbnails -------------------------------------------------------
	AddToLog(L"Generating pages...");
	// ---------------------------------------------------------------------------

	if (CFAlbum->Sections[SelectedSection]->Images.size() > CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage)
	{
		int page_count = std::ceil(CFAlbum->Sections[SelectedSection]->Images.size() / CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage);

		for (int t = 0; t < page_count; t++)
		{
			int image_start = t * CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage;
			int image_end = image_start + CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage - 1;

			if (image_end > CFAlbum->Sections[SelectedSection]->Images.size() - 1)
			{
				image_end = CFAlbum->Sections[SelectedSection]->Images.size() - 1;
			}

			CFPageGenerator->Page(CFAlbum, CFThemeHandler->Themes[0], SelectedSection,
								  page_count, t + 1, image_start, image_end,
								  CFAlbum->Sections[SelectedSection]->PageHeaderColour, CFAlbum->Sections[SelectedSection]->PageFooterColour,
								  section_root + L"p" + std::to_wstring(t + 1) + L".html",
								  false, CFAlbum->Sections[SelectedSection]->ThumbnailsOnly);
		}
	}
	else
	{
		CFPageGenerator->Page(CFAlbum, CFThemeHandler->Themes[0], SelectedSection,
							  1, 1, 0, CFAlbum->Sections[SelectedSection]->Images.size() - 1,
							  CFAlbum->Sections[SelectedSection]->PageHeaderColour, CFAlbum->Sections[SelectedSection]->PageFooterColour,
							  section_root + L"p1.html",
							  false, CFAlbum->Sections[SelectedSection]->ThumbnailsOnly);
	}
}
#pragma end_region


#pragma region TreeView
void TfrmMain::BuildTreeDisplay()
{
	tvAlbum->Items->Clear();

	TTreeNode *albumnode = tvAlbum->Items->AddFirst(NULL, L"Album");
	albumnode->ImageIndex = ImageAlbum;

	if (CFAlbum->Sections.size() != 0)
	{
		for (int t = 0; t < CFAlbum->Sections.size(); t++)
		{
			TTreeNode *child = tvAlbum->Items->AddChild(albumnode, CFAlbum->Sections[t]->Name.c_str());
			child->SelectedIndex = ImageSection;
			child->ImageIndex = ImageSectionDisabled;

			for (int p = 0; p < CFAlbum->Sections[t]->Images.size(); p++)
			{
				TTreeNode *pic = tvAlbum->Items->AddChild(child, CFAlbum->Sections[t]->Images[p].c_str());

				pic->SelectedIndex = ImagePicture;
				pic->ImageIndex = ImagePicture;
			}
		}

		albumnode->Expand(false);

		albumnode->Selected = true;
	}
}


void __fastcall TfrmMain::tvAlbumClick(TObject *Sender)
{
	PreserveCurrentData();

    SelectedSection = -1;

	if (tvAlbum->Items->Count == 0) return;

    if (tvAlbum->Selected == NULL) return;

	if (tvAlbum->Selected == tvAlbum->Items->GetFirstNode())                // album
	{
		tbDelete->Enabled = false;
		tbUploadSection->Enabled = false;
		tbPreviewSection->Enabled = false;

		ToggleTabs(tab_Album);
	}
	else if (tvAlbum->Selected->Parent == tvAlbum->Items->GetFirstNode())   // section
	{
		tbDelete->Enabled = true;
		tbUploadSection->Enabled = true;
		tbPreviewSection->Enabled = true;

		ToggleTabs(tab_Section);

		RebuildViews(tvAlbum->Selected->Index);
	}
	else
	{
		TTreeNode* node = tvAlbum->Selected;

		if (node->Parent->Parent == tvAlbum->Items->GetFirstNode())         // image (belonging to a section)
		{
			tbDelete->Enabled = true;
			tbUploadSection->Enabled = true;
			tbPreviewSection->Enabled = true;

			ToggleTabs(tab_PictureList);

			RebuildViews(tvAlbum->Selected->Index);
		}
	}
}


void TfrmMain::PreserveCurrentData()
{
	CFAlbum->Title = cbAIPTitle->Text.c_str();
	CFAlbum->IndexFileName = eAIPFilename->Text.c_str();
	CFAlbum->HomeLink = eASHomeLink->Text.c_str();
	CFAlbum->ThumbnailSize = seAIPThumbnailWidth->Value;
    CFAlbum->ThemeName = cbAIPTheme->Text.c_str();

	if (SelectedSection != -1)
	{
		CFAlbum->Sections[SelectedSection]->Caption = eSCaption->Text;
		CFAlbum->Sections[SelectedSection]->Description          = eSDescription->Text;
		CFAlbum->Sections[SelectedSection]->ImageForIndex        = eSIndexImage->Text;
		CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage    = seMaxPerPage->Value;
		CFAlbum->Sections[SelectedSection]->ThumbnailsAcrossPage = seMaxAcross->Value;
		CFAlbum->Sections[SelectedSection]->ThumbnailsWidth      = seMaxDimension->Value;
		CFAlbum->Sections[SelectedSection]->ThumbnailsOnly       = cbSThumbnailsOnly->Checked;
		CFAlbum->Sections[SelectedSection]->ThemeName            = cbThemeList->Text;

		CFAlbum->Sections[SelectedSection]->ResizeImages         = cbSPResize->Checked;
		CFAlbum->Sections[SelectedSection]->ResizeWidth          = eSPWidth->Text.ToIntDef(275);
		CFAlbum->Sections[SelectedSection]->ResizeHeight         = eSPHeight->Text.ToIntDef(100);

		CFAlbum->Sections[SelectedSection]->ShowPageHeader       = cbSDPageHeader->Checked;
		CFAlbum->Sections[SelectedSection]->PageHeaderText       = eSDPageHeaderText->Text;
		CFAlbum->Sections[SelectedSection]->ShowPageFooter       = cbSDPageFooter->Checked;
		CFAlbum->Sections[SelectedSection]->PageFooterText       = eSDPageFooterText->Text;

		CFAlbum->Sections[SelectedSection]->PageHeaderColour     = sPageHeader->Brush->Color;
		CFAlbum->Sections[SelectedSection]->PageFooterColour     = sPageFooter->Brush->Color;

		CFAlbum->Sections[SelectedSection]->LastPage             = pcMain->ActivePageIndex;

		if (ImagesChanged)
		{
			CFAlbum->Sections[SelectedSection]->Images.clear();

			for (int t = 0; t < lbPictureList->Items->Count; t++)
			{
				CFAlbum->Sections[SelectedSection]->Images.push_back(lbPictureList->Items->Strings[t].c_str());
			}
		}
	}
}
#pragma end_region


#pragma region Tab_Handler
void TfrmMain::ToggleTabs(int tabmode)
{
	bool newstatus = false;

	if (tabmode == tab_Section)
	{
		newstatus = true;

		tsAlbum->TabVisible = false;

		miPictureBrowser->Enabled = true;
	}
	else if (tabmode == tab_Album)
	{
		tsAlbum->TabVisible = true;

		miPictureBrowser->Enabled = false;

		pcMain->TabIndex = tab_Album;
	}
	else if (tabmode == tab_PictureList)
	{
		newstatus = true;
		tsAlbum->TabVisible = false;

		miPictureBrowser->Enabled = true;

		pcMain->TabIndex = tab_PictureList;
	}

	tsPictureList->TabVisible = newstatus;
	tsTheme->TabVisible = newstatus;
	tsSection->TabVisible = newstatus;
}
#pragma end_region


#pragma region Tab_Album
void __fastcall TfrmMain::bAutoConfigureClick(TObject *Sender)
{
/*  iac : TInterAppComms;

 begin
  iac:=DoAutoConfigure;

  if iac.sectionlist.Count>0 then begin
	eWebsiteURL.Text   :=iac.sectionlist.Strings[0];
	eFTPHost.Text      :=iac.sectionlist.Strings[1];
	eAlbumRoot.Text    :=iac.sectionlist.Strings[2];
	eAbsolutePath.Text :=iac.sectionlist.Strings[3];
	eUsername.Text     :=iac.sectionlist.Strings[4];
	ePassword.Text     :=iac.sectionlist.Strings[5];
  end; */
}


void __fastcall TfrmMain::cbAIPThemeChange(TObject *Sender)
{
	if (cbAIPTheme->ItemIndex != -1)
	{
		RebuildIndexThemePreview();
	}
}


void __fastcall TfrmMain::eWebsiteURLExit(TObject *Sender)
{
	TEdit* edit = (TEdit*)Sender;

	edit->Text = Formatting::RemoveTrailingSlash(edit->Text.c_str()).c_str();
}


void __fastcall TfrmMain::sbASTestSettingsClick(TObject *Sender)
{
	// DoFTPTest(eFTPHost.Text, eUsername.Text, ePassword.Text, '');
}


// this generates an album index and album index thumbnails
void TfrmMain::GenerateAlbumIndex(const std::wstring folder, bool preview)
{
	int theme_index = CFThemeHandler->GetIndexFromName(CFAlbum->ThemeName);

	CFThemeHandler->CopyFilesTo(CFAlbum->ThemeName, folder);

	for (int t = 0; t < CFAlbum->Sections.size(); t++)
	{
		if (CFAlbum->Sections[t]->HasValidImages())
		{
			std::wstring section_thumbnail = CFAlbum->Sections[t]->GetThumbnailFileName();

			CFImageHandler->GenerateThumbnail(CFAlbum->ThumbnailSize,
											  section_thumbnail,
											  folder + L"idx" + std::to_wstring(t + 1) + L".jpg");
		}
	}

	std::wstring index_name = folder + L"\\" + CFAlbum->IndexFileName;

	AddToLog(L"Building album index...");

	CFPageGenerator->IndexTheme(index_name,
								CFAlbum, CFThemeHandler->Themes[theme_index],
								preview);
}


void __fastcall TfrmMain::sbEditThemeClick(TObject *Sender)
{
	frmThemeEditor->CFThemeHandler = CFThemeHandler;
	frmThemeEditor->SelectedTheme = cbAIPTheme->ItemIndex;

    frmThemeEditor->ShowModal();
}
#pragma end_region


#pragma region Tab_PictureList
void __fastcall TfrmMain::iPreviewClick(TObject *Sender)
{
	if (SelectedSection >= 0)
	{
		frmPictureViewer->Clear();

		for (int t = 0; t < CFAlbum->Sections[SelectedSection]->Images.size(); t++)
		{
			frmPictureViewer->Add(CFAlbum->Sections[SelectedSection]->Images[t]);
		}

		frmPictureViewer->ShowModal();
	}
}


void __fastcall TfrmMain::sbPLAddPicturesClick(TObject *Sender)
{
	odMain->Title = L"Select images for this section";
	odMain->Filter = L"JPEG Image (*.jpg, *.jpeg)|*.jpg; *.jpeg)";
    odMain->InitialDir = LastImagesFolder.c_str();

	if (odMain->Execute())
	{
		for (int t = 0; t < odMain->Files->Count; t++)
		{
			lbPictureList->Items->Add(odMain->Files->Strings[t]);
		}

		//GetSizeOfFiles;

		//UpdateStuff(Nil);

		//if (CFSettings->ShowTips)
		//{
		//	OpenTip('tip_addedimages.htm', Tip_AddedImages);
		//}

		CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails = true;

		CFAlbum->ChangesPending = true;

		ImagesChanged = true;
	}
}


void __fastcall TfrmMain::spPLAddDirClick(TObject *Sender)
{
	System::UnicodeString initial = LastImagesFolder.c_str();

	if (SelectDirectory(initial, TSelectDirOpts() << sdAllowCreate << sdPerformCreate << sdPrompt, 1000))
	{
        LastImagesFolder = initial.c_str();

		AddToPictureList(initial.c_str());

		//if CFSettings.showtips then OpenTip('tip_addedimages.htm', Tip_AddedImages);

		CFAlbum->ChangesPending = true;

		ImagesChanged = true;
	}
}


void __fastcall TfrmMain::sbPLRemovePicturesClick(TObject *Sender)
{
	lbPictureList->DeleteSelected();

	CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails = true;

  	//UpdateStuff(Nil);

	CFAlbum->ChangesPending = true;
}


void __fastcall TfrmMain::sbPLDeleteAllClick(TObject *Sender)
{
	if (MessageDlg(L"Are you sure you want to remove all of the images from this section?", mtWarning, mbYesNo, 0) == mrYes)
	{
		lbPictureList->Clear();

		CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails = true;

		CFAlbum->ChangesPending = true;

		ImagesChanged = true;
    }
}


void __fastcall TfrmMain::sbIndexImageClick(TObject *Sender)
{
	eSIndexImage->Text = lbPictureList->Items->Strings[lbPictureList->ItemIndex];

	iSetForIndex->Picture->LoadFromFile(lbPictureList->Items->Strings[lbPictureList->ItemIndex]);
	lbPictureList->Repaint();

	CFAlbum->SetChangesPending();
}


void __fastcall TfrmMain::lbPictureListClick(TObject *Sender)
{
	if (FileExists(lbPictureList->Items->Strings[lbPictureList->ItemIndex]))
	{
		iPreview->Picture->LoadFromFile(lbPictureList->Items->Strings[lbPictureList->ItemIndex]);
	}
	else
	{
		std::wstring file_name = RunFrom + L"Data\\noimagefound.bmp";
		iPreview->Picture->LoadFromFile(file_name.c_str());
	}

	if (lbPictureList->ItemIndex == -1)
	{
		sbIndexImage->Enabled = false;
	}
	else
	{
		sbIndexImage->Enabled = true;
	}
}


void __fastcall TfrmMain::pmPictureListPopup(TObject *Sender)
{
	if (lbPictureList->ItemIndex == -1)
	{
		SetasIndeximage1->Enabled = false;
	}
	else
	{
		SetasIndeximage1->Enabled = true;
	}
}


void __fastcall TfrmMain::lbPictureListKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)
{ /*
	if (key == VK_DELETE)
	{
		sbPLRemovePicturesClick(NULL);
	} */
}


void __fastcall TfrmMain::lbPictureListDrawItem(TWinControl *Control, int Index, TRect &Rect,
		  TOwnerDrawState State)
{
	lbPictureList->Canvas->TextRect(Rect, Rect.Left + 22, Rect.Top, lbPictureList->Items->Strings[Index]);
	ImageList1->Draw(lbPictureList->Canvas, Rect.Left + 2, Rect.Top, 0);

/*
  if lbPictureList.Items[Index]=eSIndexImage.Text then begin
	lbPictureList.Canvas.Font.Color:=$00000099;
	lbPictureList.Canvas.TextRect(Rect, Rect.Left+22, Rect.Top, lbPictureList.Items[Index]);
	ImageList1.Draw(lbPictureList.Canvas, Rect.Left+2, Rect.Top, 8);
  end
  else begin
{    case StrToInt(PictureListStatus.Strings[Index]) of
	  0 : begin
			lbPictureList.Canvas.Font.Color:=$00000000;
		  end;
	  7 : begin
			lbPictureList.Canvas.Font.Color:=$00666666;
		  end;
	end;}

	lbPictureList.Canvas.TextRect(Rect, Rect.Left+22, Rect.Top, lbPictureList.Items[Index]);
{    ImageList1.Draw(lbPictureList.Canvas, Rect.Left+2, Rect.Top, StrToInt(PictureListStatus.Strings[Index]));}
  end;
end;*/
}


void TfrmMain::AddToPictureList(const std::wstring folder)
{
	std::wstring tmp = folder + L"\\*.jpg";

	WIN32_FIND_DATAW file;

	HANDLE search_handle = FindFirstFileW(tmp.c_str(), &file);

	if (search_handle != INVALID_HANDLE_VALUE)
	{
		do
		{
			if (file.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			{
			}
			else
			{
				std::wstring s = folder + L"\\" + file.cFileName;

				lbPictureList->Items->Add(s.c_str());
			}

		} while (FindNextFileW(search_handle, &file));

		FindClose(search_handle);
	}
}
#pragma end_region


#pragma region Tab_Section
void TfrmMain::RebuildViews(int index)
{
	SelectedSection = index;

	lbPictureList->Clear();

	sbIndexImage->Enabled = false;

	for (int t = 0; t < CFAlbum->Sections[SelectedSection]->Images.size(); t++)
	{
		lbPictureList->Items->Add(CFAlbum->Sections[SelectedSection]->Images[t].c_str());
	}

	eSCaption->Text            = CFAlbum->Sections[SelectedSection]->Caption.c_str();
	eSDescription->Text        = CFAlbum->Sections[SelectedSection]->Description.c_str();
	eSIndexImage->Text         = CFAlbum->Sections[SelectedSection]->ImageForIndex.c_str();
	cbThemeList->ItemIndex     = CFThemeHandler->GetIndexFromName(CFAlbum->Sections[SelectedSection]->ThemeName);
	cbThemeList->OnChange(NULL);

	seMaxPerPage->Value        = CFAlbum->Sections[SelectedSection]->ThumbnailsPerPage;
	seMaxAcross->Value         = CFAlbum->Sections[SelectedSection]->ThumbnailsAcrossPage;
	seMaxDimension->Value      = CFAlbum->Sections[SelectedSection]->ThumbnailsWidth;
	cbSThumbnailsOnly->Checked = CFAlbum->Sections[SelectedSection]->ThumbnailsOnly;

	if (seMaxPerPage->Value >= 1)
	{
		lSPageCount->Caption = std::ceil((double) CFAlbum->Sections[SelectedSection]->Images.size() / (double) seMaxPerPage->Value);
	}

	lSThumbnailWidth->Caption = (seMaxAcross->Value * seMaxDimension->Value) + ((seMaxAcross->Value - 1) * 2);


	cbSPResize->Checked        = CFAlbum->Sections[SelectedSection]->ResizeImages;
	eSPWidth->Text             = CFAlbum->Sections[SelectedSection]->ResizeWidth;
	eSPHeight->Text            = CFAlbum->Sections[SelectedSection]->ResizeHeight;

	cbSDPageHeader->Checked    = CFAlbum->Sections[SelectedSection]->ShowPageHeader;
	eSDPageHeaderText->Text    = CFAlbum->Sections[SelectedSection]->PageHeaderText.c_str();
	cbSDPageFooter->Checked    = CFAlbum->Sections[SelectedSection]->ShowPageFooter;
	eSDPageFooterText->Text    = CFAlbum->Sections[SelectedSection]->PageFooterText.c_str();

	sPageHeader->Brush->Color  = TColor(CFAlbum->Sections[SelectedSection]->PageHeaderColour);
	sPageFooter->Brush->Color  = TColor(CFAlbum->Sections[SelectedSection]->PageFooterColour);

//  pcMain.ActivePageIndex :=newobjectdata^.LastPage;

	if (eSIndexImage->Text != L"" && FileExists(eSIndexImage->Text))
	{
		iSetForIndex->Picture->LoadFromFile(eSIndexImage->Text);
	}
	else
	{
		ilBig->GetBitmap(1, iSetForIndex->Picture->Bitmap);
	}

	ilBig->GetBitmap(0, iPreview->Picture->Bitmap);

//  UpdateStuff(Nil);

	ImagesChanged = false;
}


void __fastcall TfrmMain::sPageHeaderMouseDown(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
	if (Shift.Contains(ssLeft))
	{
		if (cdMain->Execute())
		{
			TShape* shape = (TShape*)Sender;

			shape->Brush->Color = cdMain->Color;
		}
	}
}


void __fastcall TfrmMain::cbSThumbnailsOnlyClick(TObject *Sender)
{
	if (cbSThumbnailsOnly->Checked)
	{
		//if CFSettings.showtips then OpenTip('tip_thumbnailsonly.htm', Tip_ThumbnailsOnly);
	}
}


void __fastcall TfrmMain::seMaxAcrossChange(TObject *Sender)
{
	//UpdateStuff(Nil);

	CFAlbum->ChangesPending = true;
}


void __fastcall TfrmMain::seMaxPerPageChange(TObject *Sender)
{
	UpdateStuff();
}


void __fastcall TfrmMain::seMaxDimensionChange(TObject *Sender)
{
	CFAlbum->Sections[SelectedSection]->NeedToGenerateThumbnails = true;

//	 UpdateStuff(Nil);

	CFAlbum->ChangesPending = true;
}


void __fastcall TfrmMain::sbGetIndexPictureClick(TObject *Sender)
{
	if (opdMain->Execute())
	{
		eSIndexImage->Text = opdMain->FileName.c_str();
	}
}
#pragma end_region


#pragma region Tab_Theme
void __fastcall TfrmMain::cbThemeListChange(TObject *Sender)
{
//	RebuildThemePreview;
}


void __fastcall TfrmMain::SpeedButton3Click(TObject *Sender)
{
//
}


void TfrmMain::RebuildThemePreview()
{
	std::wstring theme_file_name = RunFrom + L"themes\\" + CFThemeHandler->Themes[cbAIPTheme->ItemIndex]->Location + L"\\preview.html";

	if (FileExists(theme_file_name.c_str()))
	{
		wbTheme->Navigate(theme_file_name.c_str());
	}
	else
	{
		CFThemeHandler->BuildThemePreview(CFThemeHandler->Themes[cbAIPTheme->ItemIndex], theme_file_name);

		wbTheme->Navigate(theme_file_name.c_str());
	}
}


void TfrmMain::RebuildIndexThemePreview()
{
	std::wstring theme_file_name = RunFrom + L"themes\\" + CFThemeHandler->Themes[cbAIPTheme->ItemIndex]->Location + L"\\indexpreview.html";

	if (FileExists(theme_file_name.c_str()))
	{
		wbIndexTheme->Navigate(theme_file_name.c_str());
	}
	else
	{
//		BuildIndexThemePreview(ThemeList[cbAIPTheme.ItemIndex]);

  //		wbIndexTheme->Navigate(theme_file_name.c_str());
	}
}


// the content of the Themes draw has changed so we need to rebuild the theme
// lists and update the application accordingly
void TfrmMain::ThemesFolderChange()
{ /*
 var
  t : integer;
  a,b : string;

 begin
  // ---------------------------------------------------------------------------
  a:=cbThemeList.Text; // cache old value
  b:=cbAIPTheme.Text;  // cache old value

  cbThemeList.Clear;
  cbAIPTheme.Clear;

  GenerateThemeList;
  for t:=0 to maxthemes-1 do begin
	cbThemeList.Items.Add(ThemeList[t].Name);
	cbAIPTheme.Items.Add(ThemeList[t].Name);
  end;

  cbThemeList.ItemIndex:=cbThemeList.Items.IndexOf(a);
  cbThemeListChange(Nil);
  cbAIPTheme.ItemIndex:=cbAIPTheme.Items.IndexOf(b);
  cbAIPThemeChange(Nil); */
}
#pragma end_region


#pragma region Tab_Log
void TfrmMain::AddToLog(const std::wstring message)
{
    lbLog->Items->Add(message.c_str());
}
#pragma end_region


#pragma region SendLocal
void TfrmMain::GenerateLocalFiles(const std::wstring folder, bool generateimages, bool copyfiles, bool build_album_index)
{
	InitialisePreview(L"Generating Local Album", L"Current Process...", L"Complete build...", 2);

	// == first thing we need to do is create the destination directory path =====
	System::UnicodeString de = folder.c_str();

	if (!DirectoryExists(de))
	{
		std::filesystem::create_directory(folder);
	}
	// ===========================================================================

	for (int t = 0; t < CFAlbum->Sections.size(); t++)
	{
		if (CFAlbum->Sections[t]->Generate)
		{
			if (generateimages)
			{
				CFAlbum->Sections[t]->NeedToGenerateThumbnails = true;
			}

			UploadSection(t, folder + L"\\" + CFAlbum->Sections[t]->Name + L"\\", false, generateimages, copyfiles);

			// =======================================================================

			if (copyfiles)
			{
				std::wstring create = folder + L"\\" + CFAlbum->Sections[t]->Name;

				System::UnicodeString de = folder.c_str();

				if (!DirectoryExists(de))
				{
					std::filesystem::create_directory(create.c_str());
				}

				AddToLog(L"Copying image files for \"" + CFAlbum->Sections[t]->Name + L"\".");

				for (int z = 0; z < CFAlbum->Sections[t]->Images.size(); z++)
				{
					std::wstring desination = folder + L"\\" + CFAlbum->Sections[t]->Name + L"\\p" + std::to_wstring(z + 1) + L".jpg";

					CopyFile(CFAlbum->Sections[t]->Images[z].c_str(),
							 desination.c_str(), true);
				}

				AddToLog(L"Copied " + std::to_wstring(CFAlbum->Sections[t]->Images.size()) + L" images.");
			}
		}

		Application->ProcessMessages();
	}

	// ===========================================================================

	if (build_album_index)
	{
		GenerateAlbumIndex(folder, false);
	}

	// ===========================================================================

	AddToLog(L"Finished.");

	//DeInitialisePreview;

   //	  ExecuteFile(0, InterAppComms.location+eAIPFilename.Text, '', '', sw_show);
}
#pragma end_region


#pragma region FTPUpload
int TfrmMain::GenerateUploadCount(const std::wstring path)
{            /*
 var
  xcount : integer;
  searchrec : TSearchRec;

 begin
  xcount:=0;

  if FindFirst(s, 0, searchrec) = 0 then begin
	repeat
	  inc(xcount);
	until FindNext(searchrec) <> 0;

	FindClose(searchrec);
  end;

  Result:=xcount; */
	return 0;
}


bool TfrmMain::CheckFTPDetails()
{
	bool valid = true;

	if (eWebsiteURL->Text == L"") valid = false;
	if (eFTPHost->Text == L"") valid = false;
	if (eUsername->Text == L"") valid = false;
	if (ePassword->Text == L"") valid = false;

	return valid;
}


void __fastcall TfrmMain::eWebsiteURLChange(TObject *Sender)
{
	bool status = CheckFTPDetails();

	tbUploadSection->Enabled = status;
	tbUploadAlbum->Enabled   = status;
	miGUpload->Enabled       = status;

	eAbsolutePath->Text      = eWebsiteURL->Text + L" / " + eAlbumRoot->Text;

	CFAlbum->ChangesPending = true;
}


void __fastcall TfrmMain::ftpMainWork(TObject *ASender, TWorkMode AWorkMode, __int64 AWorkCount)
{
//
}


void __fastcall TfrmMain::ftpMainWorkBegin(TObject *ASender, TWorkMode AWorkMode,
		  __int64 AWorkCountMax)
{
//
}


void TfrmMain::UploadAlbumIndex()
{ /*
	var
	searchrec : TSearchRec;
	totaluploadcount, fromx,tox,t,numpages : integer;
	filelist : TStringList;
	cancreatedirectory : boolean;

	InitialisePreview('Uploading Album Index', '', '', 1);
	ChangeStatusText('Generating images and page...', '', '');

	GenerateAlbumIndex(RunFrom+'preview', False);

	// pages have been generated, now upload them!
	ChangeStatusText('Connecting to '+eFTPHost.Text+'...', '', '');

	// connect to FTP Server -------------------------------------------------
	ftpMain.Host     :=eFTPHost.Text;
	ftpMain.Password :=ePassword.Text;
	ftpMain.Username :=eUsername.Text;

	ftpMain.Connect(True);

	if eAlbumRoot.Text<>'' then
	{
		ftpMain.ChangeDir(eAlbumRoot.Text);
    }

	if ftpMain.Connected then begin
		totaluploadcount:=GenerateUploadCount(RunFrom+'preview\*.*');
		pbPreview.Max:=totaluploadcount;

		if FindFirst(RunFrom+'preview\*.*', 0, searchrec)=0 then begin
			repeat
				ChangeStatusText('Uploading ', searchrec.Name, eFTPHost.Text+'/'+eAlbumRoot.Text+'/'+searchrec.Name);
				ftpMain.Put(RunFrom+'preview\'+searchrec.name, searchrec.Name);
				pbPreview.Position:=pbPreview.Position+1;
			  until FindNext(searchrec)<>0;

			FindClose(searchrec);
		}

		ftpMain.Disconnect;
	}

	DeInitialisePreview;       */
}


void TfrmMain::UploadSection(int section, const std::wstring section_root, bool uploadviaftp, bool generatethumbs, bool copyfiles)
{
	AddToLog(L"Uploading \"" + CFAlbum->Sections[section]->Caption + L"\" to \"" + section_root + L"\".");

	CFPageGenerator->Files.clear();

	System::UnicodeString de = section_root.c_str();

	if (!DirectoryExists(de))
	{
		std::filesystem::create_directory(section_root);
	}

	// generate thumbnails -------------------------------------------------------
	InitialisePreview(L"Generating Thumbnail images...", L"Current Process", L"Current File", 2);
	// ---------------------------------------------------------------------------

	if (CFAlbum->Sections[section]->NeedToGenerateThumbnails && generatethumbs)
	{
//		Utility::DeleteInFolder();

		for (int i = 0; i < CFAlbum->Sections[section]->Images.size(); i++)
		{
			CFImageHandler->GenerateThumbnail(CFAlbum->Sections[section]->ThumbnailsWidth,
											  CFAlbum->Sections[section]->Images[i],
											  section_root + std::to_wstring(i + 1) + L"-t.jpg");

			Application->ProcessMessages();
		}

		CFAlbum->Sections[section]->NeedToGenerateThumbnails = false;
	}

	// ---------------------------------------------------------------------------

	if (copyfiles)
	{
		// put theme images in correct location

		int theme_index = CFThemeHandler->GetIndexFromName(CFAlbum->ThemeName);

		for (int t = 0; t < 3; t++)
		{
//			if (CFThemeHandler->Themes[theme_index]->Attributes[t]->Graphic L"")
//			{
//				CopyFile(CFThemeHandler->Themes[theme_index]->Attributes[t]->Graphic,
//						 PChar(path+'i'+IntToStr(t)+'.jpg'), false);
//			}
		}
	}

	// ---------------------------------------------------------------------------

	if (CFAlbum->Sections[section]->Images.size() > CFAlbum->Sections[section]->ThumbnailsPerPage)
	{
		int page_count = std::ceil(CFAlbum->Sections[section]->Images.size() / CFAlbum->Sections[section]->ThumbnailsPerPage);

		for (int t = 0; t < page_count; t++)
		{
			int image_start = t * CFAlbum->Sections[section]->ThumbnailsPerPage;
			int image_end = image_start + CFAlbum->Sections[section]->ThumbnailsPerPage - 1;

			if (image_end > CFAlbum->Sections[section]->Images.size() - 1)
			{
				image_end = CFAlbum->Sections[section]->Images.size() - 1;
			}

			CFPageGenerator->Page(CFAlbum, CFThemeHandler->Themes[0], section,
								  page_count, t + 1, image_start, image_end,
								  CFAlbum->Sections[section]->PageHeaderColour, CFAlbum->Sections[section]->PageFooterColour,
								  section_root + L"p" + std::to_wstring(t + 1) + L".html",
								  true, CFAlbum->Sections[section]->ThumbnailsOnly);
		}
	}
	else
	{
		CFPageGenerator->Page(CFAlbum, CFThemeHandler->Themes[0], section,
							  1, 1, 0, CFAlbum->Sections[section]->Images.size() - 1,
							  CFAlbum->Sections[section]->PageHeaderColour, CFAlbum->Sections[section]->PageFooterColour,
							  section_root + L"p1.html",
							  true, CFAlbum->Sections[section]->ThumbnailsOnly);
	}

	// ---------------------------------------------------------------------------

	if (uploadviaftp)
	{
		UploadFiles();
	}
}


void TfrmMain::UploadFiles()
{ /*
	newobjectdata^.LastUploaded:=DateToStr(Now)+' '+TimeToStr(Now);

// pages have been generated, now upload them!
	ChangeStatusText('Connecting to '+eFTPHost.Text+'...', '', '');

	// connect to FTP Server -------------------------------------------------
	ftpMain.Host     :=eFTPHost.Text;
	ftpMain.Password :=ePassword.Text;
	ftpMain.Username :=eUsername.Text;

	ftpMain.Connect(True);

	if eAlbumRoot.Text<>'' then
	  ftpMain.ChangeDir(eAlbumRoot.Text);

	ftpMain.List(filelist);

	cancreatedirectory:=True;
	for t:=0 to filelist.count-1 do
	  if DirExistFromFTPList(currentsection.Text, filelist.strings[t]) then cancreatedirectory:=False;

	if cancreatedirectory then
	  ftpMain.MakeDir(currentsection.Text);

	ftpMain.ChangeDir(currentsection.Text);
	// -----------------------------------------------------------------------

	if ftpMain.Connected then begin
	  totaluploadcount:=GenerateUploadCount(path+'*.*')+lbPictureList.Items.Count;
	  pbPreview.Max:=totaluploadcount;

	  if FindFirst(path+'*.*', 0, searchrec)=0 then begin
		repeat
		  ChangeStatusText('Uploading ....', searchrec.Name, eFTPHost.Text+'/'+eAlbumRoot.Text+'/'+currentsection.text+'/'+searchrec.Name);

		  repeat
			ftperror:=False;

			try
			  ftpMain.Put(path+searchrec.name, searchrec.Name);
			except
			  ftpMain.Disconnect;
			  ftperror:=True;
			  ftpMain.Connect(True);

			  if eAlbumRoot.Text<>'' then
				ftpMain.ChangeDir(eAlbumRoot.Text);

			  ftpMain.List(filelist);

			  cancreatedirectory:=True;
			  for t:=0 to filelist.count-1 do
				if DirExistFromFTPList(currentsection.Text, filelist.strings[t]) then cancreatedirectory:=False;

			  if cancreatedirectory then
				ftpMain.MakeDir(currentsection.Text);

			  ftpMain.ChangeDir(currentsection.Text);
			end;
		  until ftperror=False;

		  pbPreview.Position:=pbPreview.Position+1;
		until FindNext(searchrec)<>0;

		FindClose(searchrec);
	  end;

	  if Not(newobjectdata^.ThumbnailsOnly) then begin
		for t:=0 to lbPictureList.Items.Count-1 do begin
		  if newobjectdata^.ResizeImages then begin
			ChangeStatusText('Uploading and Resizing Images', lbPictureList.Items[t], eFTPHost.Text+'/'+eAlbumRoot.Text+'/'+currentsection.text+'/'+'p'+IntToStr(t)+'.jpg');
			ResizeImage(lbPictureList.Items[t], TempFolder+'cftemp.jpg', newobjectdata^.ResizeWidth, newobjectdata^.ResizeHeight);

			ftpMain.Put(TempFolder+'cftemp.jpg', 'p'+IntToStr(t)+'.jpg');
			pbPreview.Position:=pbPreview.Position+1;
		  end
		  else begin
			ChangeStatusText('Uploading Images', lbPictureList.Items[t], eFTPHost.Text+'/'+eAlbumRoot.Text+'/'+currentsection.text+'/'+'p'+IntToStr(t)+'.jpg');

			ftpMain.Put(lbPictureList.Items[t], 'p'+IntToStr(t)+'.jpg');
			pbPreview.Position:=pbPreview.Position+1;
		  end;
		end;
	  end;

	  ftpMain.Disconnect;
	end; */
}
#pragma end_region
