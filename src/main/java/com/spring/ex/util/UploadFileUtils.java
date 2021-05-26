package com.spring.ex.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import net.coobird.thumbnailator.Thumbnails;

public class UploadFileUtils {
  
 static final int THUMB_WIDTH = 320;
 static final int THUMB_HEIGHT = 320;
 
 public static String fileUpload(String uploadPath,
         String fileName,
         byte[] fileData) throws Exception {
 
	 
  UUID uid = UUID.randomUUID();
  
  String newFileName = uid + "_" + fileName;
  String imgPath = uploadPath;

  File target = new File(imgPath, newFileName);
  FileCopyUtils.copy(fileData, target);
  
  String thumbFileName = newFileName;
  File image = new File(imgPath + File.separator + newFileName);

  File thumbnail = new File(imgPath  + File.separator + thumbFileName);
  
  
   thumbnail.getParentFile().mkdirs();
   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);

  return newFileName;
 }

 private static void makeDir(String uploadPath, String... paths) {

  if (new File(paths[paths.length - 1]).exists()) { return; }

  for (String path : paths) {
   File dirPath = new File(uploadPath + path);

   if (!dirPath.exists()) {
    dirPath.mkdir();
   }
  }
 }
}