## 21 May, 2013
## Sydney, Glenfield
## Joey Zunyi Xie
## Convert hdf to tif
## Data source: MOD13Q1 MODIS EVI 250m
## Time period: 200503-200512

library(rgdal)

LST_hdf2tif <- function() {

wd <- "/Volumes/Zunyixie/Doctor/New GDEs/Dampier Peninsula/MODIS LST/hdf"

##Set work Directory
setwd(wd)

##Get all the filesnames of the Folder
files.hdf <- list.files(wd,pattern='*.hdf')



##Start to work
for(i in 1:length(files.hdf)){
  
  #GDALinfo(files.hdf[i])
  hdfImage <- readGDAL(paste("HDF4_EOS:EOS_GRID:",files.hdf[i],":MODIS_Grid_8Day_1km_LST:LST_Day_1km",sep=""))
  outfile <- paste("/Volumes/Zunyixie/Doctor/New GDEs/Dampier Peninsula/MODIS LST/tif/","LST",substr(files.hdf[i],10,17),".tif",sep="")
  writeGDAL(hdfImage,outfile) 
  
  
}

             }


LST_hdf2tif()
