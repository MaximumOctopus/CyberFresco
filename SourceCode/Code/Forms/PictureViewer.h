//---------------------------------------------------------------------------

#ifndef PictureViewerH
#define PictureViewerH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmPictureViewer : public TForm
{
__published:	// IDE-managed Components
	TImage *iView;
	TPanel *Panel1;
	TSpeedButton *sbPrevious;
	TSpeedButton *sbNext;
	TLabel *fileDate;
	TLabel *Label3;
	TLabel *fileSize;
	TLabel *Label1;
	TComboBox *cbPictures;
	void __fastcall sbPreviousClick(TObject *Sender);
	void __fastcall sbNextClick(TObject *Sender);
	void __fastcall cbPicturesChange(TObject *Sender);
private:

	void ShowImage();

public:
	__fastcall TfrmPictureViewer(TComponent* Owner);

	void Clear();
	void Add(const std::wstring);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmPictureViewer *frmPictureViewer;
//---------------------------------------------------------------------------
#endif
