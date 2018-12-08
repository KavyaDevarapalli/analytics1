#Creating vectors 
#vector----
#Data Structures in R
c(2,4,6)
?seq
seq(1,10,1)
seq(by=0.5,from=2,to=3)
rep(1:3, times=5)
?rep
rep(c(3,6,7,2), times=4)
(x2=c(1,2,13,4,5))
(X3=c('a','abc'))
class(x3)
class(X3)
(X3=letters[1:10])
Letters[1:26]
LETTERS[1:26]
(X3=C('A','HENRY',4))
(x5=c(3L,5L))
(x6=0:100,3)
(x6=seq(0:100,3))
(x6=seq(0,100,3))
(x7=seq(1,35,2))  
plot(x7)  
(x8=seq(1,length(x7),1))
plot(length(x6))
x6
plot[length(x6)]
x6[c(3)]
x6[x6>30 &x6<45]
x6[c(4,6,7)]
x6[x6>20]
x6[c(length(x6)-1)]  #remove last sescond 
set.seed(1234)
(x8=sample(1:50))
(x9=sample(1:300))
sort(x9)
(x10=sort(x9,decreasing=T))
(x10=(c(1,2)))
x9
x9[x9>30&x9<200]=999
(x10=seq(1,5,length.out = 100000))
?rnorm
(y=rnorm(10000000))
plot(density(y))
(y=rnorm(100,mean=20,sd=2))
plot(density(y))
hist(y)
hist(y,breaks = 2)
stem(y)
#Creating matrix-5.49pm
#matrices----
(m1=matrix(0:13, ncol=2, byrow=F))
rowsum(m1)
#dataframe----
(rollno=1:30)
(sname=paste('student', 1:30,sep=''))
(gender=sample(c('M','F'), size=30, replace=T,prob=c(.7,.3)))
#table(gender)
(marks1=floor(rnorm(30,50,10)))
(marks2=ceiling(rnorm(30,45,5)))
(course=sample(c('MBA','BBA'), size=30, replace=T, prob=c(.5,.5)))
#create DF
df1= data.frame(rollno,sname,gender,marks1, marks2,course, stringsAsFactors = F)
str(df1)
head(df1, n=3)
tail(df1)
class(df1)
summary(df1)
#ordered factor is ordinal type of data 
#product name cant be a category, where as product type can be as category
boxplot(marks1~gender, data=df1)
df1[marks1>50 & gender=='F', c(1,2,6)]
aggregate(marks1~gender, data=df1, FUN=mean)
(df2=aggregate(cbind(marks1,marks2) ~gender+course, data=df1, FUN=mean))
(grades=sample(c('A','B','C','D'),size=30, replace=T, prob=c(.3,.2,.4,.1)))
(gradesFactor=factor(grades))
summary(gradesFactor)
(gradesFactorOrderedLevels=factor(grades, ordered=T,levels=c('D','C','B','A')))
pie(summary(gradesFactorOrderedLevels))
barplot(summary(gradesFactorOrderedLevels))
