sales=rnorm(100, mean=40, sd=15)
sales
sales=trunc(sales)
sales
boxplot(sales)
hist(sales)
plot(density(sales))
range(sales)
m1=matrix(100:123,ncol=2)
m1
colSums(m1)
colMeans(m1)
head(m1)
colnames(m1)=c('A','B')
head(m1)
#dataframe = every column can have a diff. datatype
?runif
(sname=paste('Student',1:30, sep='_'))
(marks=trunc(runif(30,50,90)))
(gender=sample(c('M','F'),replace=T, size=30, prob=c(.7,.3)))
df1=data.frame(sname,marks, gender)
head(df1)
library(dplyr)
df1%>%group_by(gender)%>% summarise(mean(marks),n(), min(marks), max(marks))
?select
?arrange
arrange(sname, .by_marks=T,.by_gender=F)
df1%>% select(sname, marks)%>% arrange(desc(marks))
df1%>% sample_n(3)
df1%>%sample_frac(.3)
?frac
