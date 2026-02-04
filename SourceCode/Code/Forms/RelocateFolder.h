//---------------------------------------------------------------------------

#ifndef RelocateFolderH
#define RelocateFolderH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
//---------------------------------------------------------------------------
class TfrmRelocateFolder : public TForm
{
__published:	// IDE-managed Components
	TEdit *eOldPattern;
	TEdit *eNewPattern;
	TLabel *Label1;
	TLabel *Label2;
	TBitBtn *bOK;
	TBitBtn *bCancel;
	void __fastcall bOKClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TfrmRelocateFolder(TComponent* Owner);

	std::wstring OldPattern = L"";
    std::wstring NewPattern = L"";
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmRelocateFolder *frmRelocateFolder;
//---------------------------------------------------------------------------
#endif
