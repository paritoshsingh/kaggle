library(dplyr)

#load files

user_list_master<-read.csv(file = "input/user_list.csv")
coupon_area_train<-read.csv(file = "input/coupon_area_train.csv")
coupon_master<-read.csv(file = "input/coupon_list_train.csv")
coupon_purchase_log_train<-read.csv(file="input/coupon_detail_train.csv")
coupon_visit_log_train<-read.csv(file="input/coupon_visit_train.csv")
prefecture_locations<-read.csv(file = "input/prefecture_locations.csv")

translate_map<-read.csv(file = "documentation/translation_map.csv")

#sample
coupon_visit_log_train_sample=sample_n(coupon_visit_log_train,size = 100)
coupon_master_sample=sample_n(coupon_master,20)

for (i in 1:dim(coupon_master_sample)[1])
   coupon_master_sample$CAPSULE_TEXT[i]<-filter(translate_map,Text==toString(coupon_master_sample$CAPSULE_TEXT[i]))$English.Translation

       
