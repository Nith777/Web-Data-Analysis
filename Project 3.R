data_web<-read.csv(file.choose())
install.packages("dplyr")
library("dplyr")
summary(data_web)
str(data_web)
cor(data_web$Uniquepageviews, data_web$Visits)

summary(data_web)

ano<-aov(Uniquepageviews~Visits, data=data_web)
summary(ano)  

anoo<-aov(Exits~.,data = data_web)
summary(anoo)

anooo<-aov(Timeinpage~.,data = data_web)
summary(anooo)

data_web$Bounces=data_web$Bounces*0.01
rmm<-glm(Bounces~Timeinpage+Continent+Exits+Sourcegroup+Uniquepageviews+Visits,data = data_web,family = "binomial")
summary(rmm)

