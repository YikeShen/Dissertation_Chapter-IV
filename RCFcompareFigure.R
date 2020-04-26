rm(list=ls())
meanaccuracy <- c(2.25,11.83,0.98,10.68,17.74,3.96,10.46,30.86,7.02,10.46,2.13,114.55,7.29,3.09,125.94,300.43)
meanstd <- c(1.04,2.91,0.48,6.91,10.29,1.39,2.56,46.05,2.46,2.44,1.05,42.73,3.21,0.67,85.11,257.6)
group <- c("Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Rhizosphere Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF","Bulk Soil RCF")
xaxisall <- c("Sulfamethoxazole","Trimethoprim","Lincomycin","Oxytetracycline","Monensin Sodium","Tylosin","Ciprofloxacin","Tetracycline","Sulfamethoxazole","Trimethoprim","Lincomycin","Oxytetracycline","Monensin Sodium","Tylosin","Ciprofloxacin","Tetracycline")
yall <- cbind(meanaccuracy,meanstd)
mydataframeall <- data.frame(A = xaxisall,B=group, yall, stringsAsFactors = FALSE)
colnames(mydataframeall) <- c("Antibiotics", "Compartment", "ave", "std")
#mydataframeall$labels <- factor(x = mydataframeall$labels,levels = c("USDA","NoAnti","NoMedAnti","NoHormone","Local","FreeRange","Brand","NoBrand"))

pd <- position_dodge(0.5) # move them .05 to the left and right
ggplot(mydataframeall,aes(x=Antibiotics,y=ave,group=Compartment,color=Compartment))+
  geom_errorbar(aes(ymin=ave-std,ymax=ave+std),colour="black", width=0.5, position=pd)+
  geom_point(position=pd,size=5)+ xlab("Antibiotics") +
  ylab("Root Concentration Factor (RCF)") +
  ggtitle("Rhizosphere Soil and Bulk Soil RCF Comparision") +                    # Expand y range
  theme_bw() +
  theme(legend.position="top",axis.text=element_text(size=16),axis.title=element_text(size=16),
        plot.title = element_text(size=22, hjust=0.5),text = element_text(size = 16),
        axis.text.x = element_text(angle = 0))+
  facet_wrap(~Antibiotics,2,scales= "free")



#scale_y_continuous(breaks=0:20*5)+
