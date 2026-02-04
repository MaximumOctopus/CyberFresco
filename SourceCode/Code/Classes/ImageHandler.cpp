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

#include <Jpeg.hpp>

#include "ImageHandler.h"


ImageHandler::ImageHandler()
{
}


void ImageHandler::GenerateThumbnail(int new_width, const std::wstring input_file, const std::wstring output_file)
{
	TBitmap* temp = new TBitmap();
	temp->PixelFormat = pf24bit;

	TJPEGImage* output = new TJPEGImage();

	TJPEGImage* input = new TJPEGImage();
	input->LoadFromFile(input_file.c_str());

	double coeff = (double)input->Height / (double)input->Width;

	temp->Width = new_width;
	temp->Height = (int)(new_width * coeff);
	temp->Canvas->StretchDraw(Rect(0, 0, temp->Width, temp->Height), input);

	output->Assign(temp);
	output->SaveToFile(output_file.c_str());

	delete input;
	delete output;
	delete temp;
}


void ImageHandler::ResizeImage(int new_width, int new_height, const std::wstring input_file, const std::wstring output_file)
{
	TBitmap* temp = new TBitmap();
	temp->PixelFormat = pf24bit;

	TJPEGImage* output = new TJPEGImage();

	TJPEGImage* input = new TJPEGImage();
	input->LoadFromFile(input_file.c_str());

	double coeff = input->Height / input->Width;

	temp->Width = new_width;
	temp->Height = (int)(new_width * coeff);
	temp->Canvas->StretchDraw(Rect(0, 0, temp->Width, temp->Height), input);

	output->Assign(temp);
	output->SaveToFile(output_file.c_str());

	delete input;
	delete output;
	delete temp;
}
