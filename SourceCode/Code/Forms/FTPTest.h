//---------------------------------------------------------------------------

#ifndef FTPTestH
#define FTPTestH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdExplicitTLSClientServerBase.hpp>
#include <IdFTP.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
//---------------------------------------------------------------------------
class TfrmFTPTest : public TForm
{
__published:	// IDE-managed Components
	TLabel *lHostValue;
	TLabel *lRemoteValue;
	TLabel *lUserNameValue;
	TLabel *lPasswordValue;
	TLabel *lHost;
	TLabel *lUserName;
	TLabel *lPassword;
	TLabel *lRemote;
	TMemo *mOutput;
	TIdFTP *testFTP;
	TBitBtn *BitBtn1;
	TBitBtn *bTest;
	void __fastcall bTestClick(TObject *Sender);
	void __fastcall testFTPConnected(TObject *Sender);
	void __fastcall testFTPDisconnected(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
private:
public:
	__fastcall TfrmFTPTest(TComponent* Owner);

	std::wstring RunFrom = L"";

	std::wstring Host = L"";
	std::wstring UserName = L"";
	std::wstring Password = L"";
	std::wstring Remote = L"";

	bool Passive = false;
	int FTPPort = 21;
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmFTPTest *frmFTPTest;
//---------------------------------------------------------------------------
#endif
