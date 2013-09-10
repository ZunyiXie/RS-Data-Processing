## Monday 09 Sept, 2013
## UTS
## Joey Zunyi Xie
## Copy MODIS files using R,and give new names to them 
## Data source: MOD13Q1 EVI 250m 16days
## Time period: 2002-2013

Copy_MODEVI <- function() {
  
  ##Select all EVI the files into different folders 
  EVIfiles<- list.files(path="E:/Doctor/New GDEs/Dampier Peninsula-Time Series/Data/EVI/EVI_Ori",pattern="EVI.tif$",full.names=T)
  
  ##Make the new filenames
  date2000 <- seq(as.Date("2000/3/5"), as.Date("2000/12/18"), by = "16 days")
  date2001 <- seq(as.Date("2001/1/1"), as.Date("2001/12/19"), by = "16 days")
  date2002 <- seq(as.Date("2002/1/1"), as.Date("2002/12/19"), by = "16 days")
  date2003 <- seq(as.Date("2003/1/1"), as.Date("2003/12/19"), by = "16 days")
  date2004 <- seq(as.Date("2004/1/1"), as.Date("2004/12/18"), by = "16 days")
  date2005 <- seq(as.Date("2005/1/1"), as.Date("2005/12/19"), by = "16 days")
  date2006 <- seq(as.Date("2006/1/1"), as.Date("2006/12/19"), by = "16 days")
  date2007 <- seq(as.Date("2007/1/1"), as.Date("2007/12/19"), by = "16 days")
  date2008 <- seq(as.Date("2008/1/1"), as.Date("2008/12/18"), by = "16 days")
  date2009 <- seq(as.Date("2009/1/1"), as.Date("2009/12/19"), by = "16 days")
  date2010 <- seq(as.Date("2010/1/1"), as.Date("2010/12/19"), by = "16 days")
  date2011 <- seq(as.Date("2011/1/1"), as.Date("2011/12/19"), by = "16 days")
  date2012 <- seq(as.Date("2012/1/1"), as.Date("2012/12/18"), by = "16 days")
  date2013 <- seq(as.Date("2013/1/1"), as.Date("2013/6/26"), by = "16 days")
  
  date <- c(date2000,date2001,date2002,date2003,date2004,date2005,date2006,date2007,date2008,date2009,date2010,date2011,date2012,date2013)
  date <- format(date,format="%Y%m%d")
  
  for(i in 1:length(date)) {
    
    Newname <- paste("E:/Doctor/New GDEs/Dampier Peninsula-Time Series/Data/EVI/EVI/MOD13Q1.",date[i],"_250m_16days_EVI.tif",sep="")
    file.copy(EVIfiles[i],Newname)
  
  }
  
  
}

Copy_MODEVI()
