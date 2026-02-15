// ===================================================================
//
//   (c) Paul Alan Freshney 2005-2026
//   www.freshney.org :: paul@freshney.org :: maximumoctopus.com
//
//   https://github.com/MaximumOctopus/CyberFresco
//
//   https://maximumoctopus.hashnode.dev/
//
//   C++ Rewrite January 17th 2026
//
// ===================================================================

static const std::wstring CFCaption = L"CyberFresco 2.0 / February 1st 2026  ::  (c) Paul Alan Freshney 2005-2026";
static const std::wstring CFApplicationTitle = L"CyberFresco 2.0";

static const std::wstring CheckListText[8] = { L"move your mouse over each checklist item for more information. A red circle indicates that this item hasn't been completed",
											   L"for each section you need to choose an image that can will be used on the index page to represent the section",
											   L"the theme for the index page decides how the page will appear to the viewer",
											   L"the title for the index page appears at the very top of the page",
											   L"the section title appears at the top of each page of images",
											   L"the section description appears next to the index image on the index page",
											   L"each section within the album can have a seperate appearance, decided by its theme",
											   L"the upload settings allow CyberFresco to transfer your album to your website" };

static const int tab_Album = 0;
static const int tab_PictureList = 1;
static const int tab_Section = 2;
static const int tab_Theme = 3;
static const int tab_Log = 4;

static const int ImagePicture = 0;
static const int ImageTheme = 1;
static const int ImageSection = 2;
static const int ImageAlbum = 3;
static const int ImageWelcome = 4;
static const int ImageSectionDisabled = 9;
