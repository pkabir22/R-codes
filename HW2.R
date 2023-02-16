suv_df <- read.csv("CompactSUV.csv")
View(suv_df)
str(suv_df)

suv_df$Owner.Satisfaction
suv_df$Owner.Satisfaction <- ordered(suv_df$Owner.Satisfaction, levels = c("-", "0","+","++"))
suv_df$Owner.Satisfaction
class(suv_df$Owner.Satisfaction)

entry73 <- suv_df[7,3]
entry73
class(entry73)
row7 <- suv_df[7,]
row7
class(row7)
col3 <- suv_df[,3]
col3
class(col3)

sub_df <- suv_df [c(1:5), c(1:3, 6)]
sub_df

rec_df <- subset(suv_df, Recommended == "Yes" & (Overall.Miles.Per.Gallon > 25 | Owner.Satisfaction == "++"))

suv_df$NewRec <- suv_df$Recommended
slow_rows <- which(suv_df$Acceleration..0.60..Sec > 9)
slow_rows
suv_df$NewRec[slow_rows] <- "No"
suv_df$Recommended <- NULL
suv_df

summary(suv_df)

hist(suv_df$Overall.Miles.Per.Gallon, main = "NULL", xlab = "Overall Miles Per Gallon")
write.csv(suv_df, "subDataFrame.csv", row.names = FALSE)




