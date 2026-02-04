//---------------------------------------------------------------------------

#ifndef ChecklistH
#define ChecklistH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <System.ImageList.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.ImgList.hpp>
//---------------------------------------------------------------------------
class TfrmCheckList : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TSpeedButton *SpeedButton1;
	TImage *Image1;
	TImage *Image2;
	TImage *Image3;
	TImage *Image4;
	TImage *Image5;
	TImage *Image6;
	TLabel *Label6;
	TImage *Image7;
	TLabel *Label7;
	TShape *Shape1;
	TLabel *lSettings;
	TImageList *ilCheckList;
	void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:
	__fastcall TfrmCheckList(TComponent* Owner);

    bool CheckList[7] = { false, false, false, false, false, false, false };
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmCheckList *frmCheckList;
//---------------------------------------------------------------------------
#endif
