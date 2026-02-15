//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Code\Forms\NewSection.cpp", frmNewSection);
USEFORM("Code\Forms\PictureViewer.cpp", frmPictureViewer);
USEFORM("Code\Forms\ProjectInformation.cpp", frmProjectInformation);
USEFORM("Code\Forms\RelocateFolder.cpp", frmRelocateFolder);
USEFORM("Code\Forms\Rename.cpp", Form3);
USEFORM("Code\Forms\LoadTheme.cpp", Form5);
USEFORM("Code\Forms\BuildLocalWizard.cpp", frmBuildLocalWizard);
USEFORM("Code\Forms\CFSettings.cpp", frmSettings);
USEFORM("Code\Forms\Checklist.cpp", frmCheckList);
USEFORM("Code\Forms\FTPTest.cpp", frmFTPTest);
USEFORM("Code\Forms\Help.cpp", frmHelp);
USEFORM("main.cpp", frmMain);
USEFORM("Code\Forms\SaveTheme.cpp", Form1);
USEFORM("Code\Forms\ThemeEditor.cpp", frmThemeEditor);
USEFORM("Code\Forms\WarningDialog.cpp", Form9);
USEFORM("Code\Forms\Wizard.cpp", frmWizard);
USEFORM("Code\Forms\About.cpp", frmAbout);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TfrmMain), &frmMain);
		Application->CreateForm(__classid(TfrmWizard), &frmWizard);
		Application->CreateForm(__classid(TForm3), &Form3);
		Application->CreateForm(__classid(TfrmPictureViewer), &frmPictureViewer);
		Application->CreateForm(__classid(TfrmNewSection), &frmNewSection);
		Application->CreateForm(__classid(TfrmBuildLocalWizard), &frmBuildLocalWizard);
		Application->CreateForm(__classid(TfrmCheckList), &frmCheckList);
		Application->CreateForm(__classid(TForm9), &Form9);
		Application->CreateForm(__classid(TfrmProjectInformation), &frmProjectInformation);
		Application->CreateForm(__classid(TfrmFTPTest), &frmFTPTest);
		Application->CreateForm(__classid(TfrmHelp), &frmHelp);
		Application->CreateForm(__classid(TfrmRelocateFolder), &frmRelocateFolder);
		Application->CreateForm(__classid(TForm1), &Form1);
		Application->CreateForm(__classid(TForm5), &Form5);
		Application->CreateForm(__classid(TfrmSettings), &frmSettings);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
