//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FTPTest.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmFTPTest *frmFTPTest;
//---------------------------------------------------------------------------
__fastcall TfrmFTPTest::TfrmFTPTest(TComponent* Owner)
	: TForm(Owner)
{
}


void __fastcall TfrmFTPTest::FormShow(TObject *Sender)
{
	lHostValue->Caption     = Host.c_str();
	lUserNameValue->Caption = UserName.c_str();
	lPasswordValue->Caption = Password.c_str();
	lRemoteValue->Caption   = Remote.c_str();

	testFTP->Passive = Passive;
	testFTP->Port = FTPPort;
}


void __fastcall TfrmFTPTest::bTestClick(TObject *Sender)
{
	mOutput->Lines->Clear();

	try
	{
		testFTP->Host = lHostValue->Caption;
		testFTP->Username = lUserNameValue->Caption;
		testFTP->Password = lPasswordValue->Caption;

		try
		{
			testFTP->Connect();
		}
		catch (const std::wstring& ex)
		{
			std::wstring o = L"!! " + ex;

			mOutput->Lines->Add(o.c_str());
		}

		if (testFTP->Connected())
		{
			std::wstring testfile = RunFrom + L"data\\FTPTest.png";

			mOutput->Lines->Add(L"Changed RemoteDir to " + lRemote->Caption);

			try
			{
				testFTP->ChangeDir(lRemote->Caption);
			}
			catch (const std::wstring& ex)
			{
				std::wstring o = L"!! " + ex;

				mOutput->Lines->Add(o.c_str());
			}

			if (FileExists(testfile.c_str()))
			{
				mOutput->Lines->Add(L"Uploading file \"ftptest.bmp\" ...");
				//testFTP->Put(RunFrom + L"data\\FTPTest.png", L"FTPTest.png");
			}
			else
			{
				mOutput->Lines->Add(L"Couldn't find test file \"data\\FTPTest.png\" ...");
			}

			testFTP->Disconnect();
		}
		else
		{
			mOutput->Lines->Add(L"Could not connect.");
		}
	}
	catch(...)
	{
	}

	if (testFTP->Connected())
	{
		testFTP->Disconnect();
	}
}


void __fastcall TfrmFTPTest::testFTPConnected(TObject *Sender)
{
	mOutput->Lines->Add(L"Connected.");
}


void __fastcall TfrmFTPTest::testFTPDisconnected(TObject *Sender)
{
	mOutput->Lines->Add(L"Disconnected.");
}
