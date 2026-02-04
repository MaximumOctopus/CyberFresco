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
//---------------------------------------------------------------------------
class TForm11 : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel1;
	TLabel *lHost;
	TLabel *lremote;
	TLabel *lusername;
	TLabel *lpassword;
	TLabel *Host;
	TLabel *Username;
	TLabel *llPassword;
	TLabel *llRemote;
	TMemo *mOutput;
	TIdFTP *testFTP;
private:	// User declarations
public:		// User declarations
	__fastcall TForm11(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm11 *Form11;
//---------------------------------------------------------------------------
#endif
