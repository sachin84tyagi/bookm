<?php
class create_image
{
    function create_thumb($path,$size,$save_path)
    {
        if (file_exists($path))
        {
                    //exec("convert -resize 492X352 sample_image.jpg sample_8.jpg");
                    
                    
                    $thumb=new my_thumbnail($path);	// generate image_file, set filename to resize
                    $thumb->size_width(500);		// set width for thumbnail, or
                    $thumb->size_height(500);		// set height for thumbnail, or
    
                    $width=$thumb->img["lebar"];
                    $height=$thumb->img["tinggi"];
                    if($width>$size || $height>$size)
                    {
                        $size=$size;
                    }
                    else
                    {
                        $size=$width;
                    }
    
                    $thumb->size_auto($size);		// set the biggest width or height for thumbnail
                    $thumb->jpeg_quality(100);		// [OPTIONAL] set quality for jpeg only (0 - 100) (worst - best), default = 75
                
            //		$thumb->show();					// show your thumbnail
                    $thumb->save($save_path);		// save your thumbnail to file
                    
                
        }
        else
        {
                    return false;
        }
    }
    
    function create_thumb_imagemagic($path,$width,$height,$save_path)
    {  
       
	   if (file_exists($path))
	  {
		exec('convert -resize'.$width."X".$height.' '.$path.' '.$save_path);
		
		if(!file_exists($save_path) || filesize($save_path)<=0)
		{
		$thumb=new my_thumbnail($path);	// generate image_file, set filename to resize
		$thumb->size_width(500);		// set width for thumbnail, or
		$thumb->size_height(500);		// set height for thumbnail, or

		$img_width=$thumb->img["lebar"];
		$img_height=$thumb->img["tinggi"];
		if($width>$img_width)
		 { 
			$size=$img_width;
			$thumb->size_auto($size); 
		 }
		else if($height>$img_height)
		 {
			$size=$img_height;
			$thumb->size_auto($size); 
		 }

		$thumb->jpeg_quality(100);// [OPTIONAL] set quality for jpeg only (0 - 100) (worst - best), default = 75
	
//		$thumb->show();					// show your thumbnail
		$thumb->save($save_path);		// save your thumbnail to file
		}
		
	
	}
	else
	{
				return false;
	}
		
    }

function resizeImage($originalImage,$toWidth,$toHeight,  $save_path){
    
    
	 
		$format=ereg_replace(".*\.(.*)$","\\1",$originalImage);
		$format=strtoupper($format);
		
		
	
	// Get the original geometry and calculate scales
    list($width, $height) = getimagesize($originalImage);
    $xscale=$width/$toWidth;
    $yscale=$height/$toHeight;
    
    // Recalculate new size with default ratio
   /* if ($yscale>$xscale){
        $new_width = round($width * (1/$yscale));
        $new_height = round($height * (1/$yscale));
    }
    else {*/
        $new_width = round($width * (1/$xscale));
        $new_height = round($toHeight);
    //}

    // Resize the original image
    $imageResized = imagecreatetruecolor($new_width, $new_height);
   if($format=='JPG' || $format=='JPEG')
   {
      $imageTmp     = imagecreatefromjpeg($originalImage);
   }
   
   if($format=='PNG')
   {
      $imageTmp     = imagecreatefrompng($originalImage);
   }
   
   if($format=='GIF')
   {
      $imageTmp     = ImageCreateFromGif($originalImage);
   }
   
   
    imagecopyresampled($imageResized, $imageTmp, 0, 0, 0, 0, $new_width, $new_height, $width, $height);
	
    
   if($format=='GIF')
   {
	   imagegif($imageResized,"$save_path");
   }
   if($format=='JPG' || $format=='JPEG')
   {
		imageJPEG($imageResized,"$save_path",100);
   }
   if($format=='PNG')
   {
	   imagepng($imageResized,"$save_path");
   }
  
   
   // return $imageResized;
	
}


function create_thumb2($path, $width, $height,$save_path)
    {
        if (file_exists($path))
        {
                    //exec("convert -resize 492X352 sample_image.jpg sample_8.jpg");
                    
                    
                    $thumb=new my_thumbnail($path);	// generate image_file, set filename to resize
                    $thumb->size_width2($width);		// set width for thumbnail, or
                    $thumb->size_height2($height);		// set height for thumbnail, or
    
                    $width=$thumb->img["lebar"];
                    $height=$thumb->img["tinggi"];
                    if($width>$size || $height>$size)
                    {
                        $size=$size;
                    }
                    else
                    {
                        $size=$width;
                    }
					
    
                    $thumb->size_auto($size);		// set the biggest width or height for thumbnail
                    $thumb->jpeg_quality(100);		// [OPTIONAL] set quality for jpeg only (0 - 100) (worst - best), default = 75
                
            //		$thumb->show();					// show your thumbnail
                    $thumb->save($save_path);		// save your thumbnail to file
                    
                
        }
        else
        {
                    return false;
        }
    }
}
?>