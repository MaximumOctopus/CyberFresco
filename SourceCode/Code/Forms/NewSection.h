//---------------------------------------------------------------------------

#ifndef NewSectionH
#define NewSectionH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmNewSection : public TForm
{
__published:	// IDE-managed Components
	TBevel *Bevel2;
	TLabel *Label1;
	TLabel *Label2;
	TBitBtn *bbOK;
	TBitBtn *BitBtn2;
	TEdit *eName;
	void __fastcall bbOKClick(TObject *Sender);
	void __fastcall eNameChange(TObject *Sender);
private:
public:
	__fastcall TfrmNewSection(TComponent* Owner);

	std::wstring SelectedName = L"";
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmNewSection *frmNewSection;
//---------------------------------------------------------------------------
#endif
