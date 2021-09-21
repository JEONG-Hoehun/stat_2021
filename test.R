#R실습 2강

speed <- c(4,7,8,9,10,11,12,13,13,14)
dist <- c(2,4,16,10,18,17,24,34,26,26)
summary(speed) 
summary(dist)
mean(speed) #speed의 평균
mean(dist)  #dist의 평균
sd(dist) #dist의 표준편차
sd(speed) #speed의 표준편차
plot(speed, dist) #speed를 x축, dist를 y축으로 하는 그래프

ls() #객체 확인

typeof() #벡터의 유형확인

#R실습 3강

x <-c() # 벡터의 생성
c(TRUE, FALSE, TRUE) #논리형 벡터
c(1L, 3L, 5L) #정수형 벡터 숫자 뒤에 L을 붙여줌
c(1.1, 3.5, 10.4) #실수형 벡터
c("one", "two", "three") #문자형 벡터 인용부호 ""사용

c(Seoul=9930, Busan=3497, Inchon=2944, Suwon=1194) #벡터구성요소에 이름 붙이기

dice<-1:6
attributes(dice) #객체 속성확인
names(dice)
names(dice)<-c("one","two","three","four","five","six") #dice에 names의 속성 부여
names(dice)<-NULL #dice의 names속성 지우기

c(x,y) #x,y가 합쳐짐 벡터간 결합 가능

append(x,15, after=2) #추가되는 위치를 지정 가능 x에 15를 2번째 뒤에 추가

1:5 #콜론 연산자 1씩 더하기

seq(from=, to=, by=, lengh=) #seq()함수에 의한 수열 생성
seq (from=0, to=5)
seq (from=0, to=5, by=2)
seq (from=0, to=5, length=3)
seq (from=0, by=2, length=3)

rep(time=, each=, length=) #반복된 패턴이 있는 데이터 생성
rep(1, times=3) #1을 세번 반복
rep(1:3, times=2) #1:3을 2번 반복
rep(c("M", "F"), times=c(2,3))
rep(1:3, each=2) #각각 2번씩 반복
rep(1:3, each=2, times=2) #각각 2번씩 2번 반복
rep(1:3, length=6) #6개까지 반복
rep(1:3, each=2, length=8) #각각 2번씩 6개까지 반복

nchar() #문자열을 구성하는 문자 개수 계산
x=c("Park", "Lee", "Kwon")
nchar(x)
nchar("응용통계학과")

paste() #문자열의 결합
paste("stat", 1:3, sep="")
paste(c("stat", "math"), 1:3, sep="-")
paste(letters, collapse=",")
paste(letters, sep=",")

subtr() #문자열에서 일부분 선택
x<-c("응용통계학과", "정보통계학과", "학생회장")
substr (x, start=3, stop=6) #3번째에서 6번째 부분만 추출

strsplit() #문자열의 분할
x<-c("New York, NY", "Ann Arbor, MI", "Chicago, IL")
(y<-strsplit (x, split=","))

toupper() #전부 대문자로
tolower() #전부 소문자로
x<-c("Park", "lee", "kwon")
(y<-toupper(x))
tolower(y)
substr(x,1,1)<-toupper(substr(x,1,1)) #첫글자만 대분자로 바꾸기

sub()
gsub()

#벡터의 연산
x<-c(7,8,9,10)
y<-c(1,2,3,4)
x+y
x-y
x*y
x/y
x^y #x를 y제곱

#수학계산과 관련된 함수
abs(x) #절댓값
sqrt(x) #제곱근
ceiling(x) #x보다 작지않은 가장 작은 정수
floor(x) #x보다 크지않은 가장 큰 정수
trunc(x) #소수점 이하 버림
roumd(x,n) #x를 소수 n자리로 반올림
signif(x,n) #x를 유효수 n자리로 반올림 
log(x) #x의 자연로그 값
log10(x) #x의 상용로그 값
exp(x) #x지수 함수 값

#통계 관련 함수
mean(x) #평균
medium(X) #중앙값
range(X) #최솟값과 최댓값
IQR(x) #사분범위
sum(x) #합
diff(x,n) #차분, 등차수열에서 간격
min(x) #최솟값
max(x) #최댓값

#비교/논리 연산자
< #작다
  <= #작거나 같다
  > #크다
  >= #크거나 같다
  == #같다
  != #같지 않다
  !x #x가 아니다
x|y #x또는 y
x&y #x 그리고 y
x<-c(3,8,2)
y<-c(5,4,2)
x>y
x>=y
x<y
x<=y
x==y
x!=y

NA #결측값을 기호 NA로 표시
is.na() #결측값 파악
x=c(1,0,3,5, NA)
is.na(x)
sum(is.na(x))

na.rm=TRUE #통계관련 계산 과정에서 NA제외
x=c(1,0,3,5,NA)
mean(x); max(x) #실행 안됨
mean(x, na.rm=TRUE); max(x, na.rm=TRUE)

#R 실습 4강

matrix() #행렬의 생성
nrow=, ncol= #행과 열의 개수 지정
  x<-matrix(1:12, nrow=3) #열단위로 채우기
x
y<-matrix(1:12, nrow=3,byrow=TRUE) #행단위로 채우기
y

cbind() #기존 벡터들을 열단위로 묶어서 행렬을 구성
rbind() #기존 벡터들을 행단위로 묶어서 행렬을 구성
#결합되는 벡터들의 길이가 서로 다르면 순환법칙이 적용됨
x1<-1:3
x2<-4:6
A<-cbind(x1,x2)
B<-rbind(x1,x2)

dim() #벡터를 행렬로 변환
x<-1:12
dim(x)<-c(3,4) #3행 4열의 행렬로 변환
x

rownames(), colnames() #행과 열에 이름 붙이기
rownames(x)<-c("one", "two", "three")
colnames(x)<-c("a", "b", "c", "d")
x

array() #배열의 생성
#배열은 다차원 구조로 각 차원에 대한 정의가 array()에 포함되어야 함
y<-array(1:24, c(4,3,2))
y

#행렬의 연산
A<-matrix(1:4, nrow=2, byrow=TRUE)
B<-matrix(5:8, nrow=2, byrow=TRUE)
#+-*/^ #행렬을 구성하는 숫자 각각에 적용
  A%*%B #행렬 A와 B의 곱하기
colMeans(A) #행렬 A 각 열의 평균값으로 구성된 벡터
colSums(A) #행렬 A 각 열의 합으로 구성된 벡터
rowMeans(), rosSums()
diag(A) #행렬 A의 대각선 원소로 구성된 벡터
diag(x) #벡터 x를 대각선 원소로 하는 대각행렬
diag(k) #k*k 단위행렬
eigen(A) #행렬A의 고유값과 고유벡터로 구성된 리스트
solve(A) #행렬A의 역행렬
solve(A, b) #연립방정식 Ax=b의 해
t(A) #행렬 A의 전치
A*B
A%*%B
colMeans(A)
rowSums(A)
diag(A)

#데이터프레임
#열은 변수, 행은 관측치로 구성된 자료
#벡터와 행렬과 달리 서로 다른 유형의 원소를 각열로 구성할 수 있음
data.frame() #데이터 프레임 객체 생성
ex1<-data.frame(
  name=c("KIM", "PARK", "LEE", "CHO", "JUNG"),
  age=c(23, 31, 52, 44, 61),
  height=c(170, 169, 182, 158, 191),
  gender=c("M", "M", "F", "F", "M"),
  stringsAsFactors = F
)
ex1

names = c("KIM", "PARK", "LEE", "CHO", "JUNG")
nai = c(23, 31, 52, 44, 61)
ki = c(170, 169, 182, 158, 191)
sex = c("M", "M", "F", "F", "M")
ex2 = data.frame (names, nai , ki , sex, stringsAsFactors = F) #변수에 따른 관측치 미리 생성해 놓고 데이터프레임 생성
ex2
ex3 = data.frame (NAME = names, AGE = nai , HEIGHT = ki , GENDER = sex,
                  stringsAsFactors = F) #변수 이름 지정
ex3
ex4 = data.frame (matrix(1:9, 3, 3, byrow = T))
ex4
ex5 = data.frame (name = numeric(10), age = numeric(10)) #숫차형 10자리 만들기
ex5
ex6 = data.frame (matrix(NA, 3, 3)) #결측치로 구성된 데이터프레임
ex6
ex7 = data.frame (matrix( , 3,3))
ex7

#데이터프레임의 속성
mode(x) #x의 자료형은 리스트형임
length(x) #객체 x에 포함된 변수의 수(열의 수)
names(x) #객체 x에 포함된 변수의 이름(열의 이름)
colnames(x)
rownames(x) #객체 x의 행의 이름
ncol(x) #객체 x에 포함된 열의 수
nrow(x) #객체 x에 포함된 행의 수
dim(x) #객체 x의 차원의 길이(행의 수, 열의 수)로 반환
is.data.frame(x) #x가 데이터프레임인지 확인하는 함수 T,F 반환
as.data.frame(x) #데이터프레임으로 강제 변환

#데이터프레임의 원소로 접근
#객체명$변수명의 형태로 변수에 접근할 수 있음
#각 변수는 벡터 형태이기 때문에 []기호를 활용해 변수의 원소로 접근
ex1$age #ex1의 변수 age
ex1$name[2] #객체 ex1의 변수 name의 2번째 원소에 접근
ex1$age[1:3] #변수 age의 1~3번째 원소
ex1[1,1] #ex1의 1행 1열 값
ex1[1,1:3] #ex1의 1행의 1~3열까지의 값
ex1$age[ex1$age < 50] #변수 age에서 50보다 작은 값 출력
ex1[ex1$name == 'PARK', ] #객체 ex1에서 name이 PARK인 자료
ex1[ex1$name == 'PARK', 2:3] #객체 ex1에서 name이 PARK인 자료에서 2~3번째 자료
ex1[ex1$gender == "M", ] #남성만 보고싶다
ex1[ex1$gender == "F", ] #여성만 보고싶다

#R실습 5강

#데이터 프레임
#각 열은 서로 다른 자료형을 가질 수 있으며 모든 열의 기리는 같아야 함
#변수, 관측치의 추가, 동일한 변수명과 관측치 개수 데이터프레임 객체 혹은 벡터 객체의 추가
rbind(x,y) #관측치의 추가, x 객체의 밑으로 y객체가 붙게 됨
cbind() #변수의 추가, x 객체의 오른쪽 옆으로 y객체가 붙게 됨

ex1 = data.frame(
  name=c("KIM", "PARK", "LEE", "CHO", "JUNG"),
  age=c(23, 31, 52, 44, 61),
  height=c(170, 169, 182, 158, 191),
  gender=c("M", "M", "F", "F", "M"),
  stringsAsFactors = F
) #데이터프레임 생성
r1.vec=c("SHIN",47,168,"F") #추가할 관측치 벡터 객체
r1.dfr=data.frame(name="SHIN", age=47, height=168,gender="F") #추가할 관측치 데이터프레임 객체
ex1.txt=rbind(ex1,r1.vec) #rbind() 명령어를 이용한 벡터 객체의 추가
ex1=rbind(ex1, r1.dfr) #rbind() 명령어를 이용한 데이터프레임 객체의 추가
ex1=ex1[-nrow(ex1),] #ex1객체의 마지막 행 삭제
ex1=rbind(r1.dfr,ex1) #추가할 객체를 맨 위로 추가할 수도 있음
weight = c(74,85,60,53,77,60) #추가할 변수 객체
ex1 = cbind(ex1,weight) #cbind() 명령어를 이용한 변수 weight의 추가
ex1 = ex1[,-ncol(ex1)] #마지막 열의 삭제
ex1$Weight=weight #객체$새로운 변수명 = 추가할 변수 객체

merge() #두 데이터 프레임 간 동일한 변수(변수명은 다를 수 있음)을 기준으로 행 또는 열을 병합하는 함수
merge(x,y, by=/by.x=, by.y=, all=T/all.x=T/all.y=T, sort=T/F) #대강 x객체와 y개체 병합 merge 명령어 형태

ex1 = data.frame(
  name=c("KIM", "PARK", "LEE", "CHO", "JUNG"),
  age=c(23, 31, 52, 44, 61),
  height=c(170, 169, 182, 158, 191),
  gender=c("M", "M", "F", "F", "M"),
  stringsAsFactors = F
) #데이터프레임 생성
ex2 = data.frame(
  name=c("KIM", "PARK", "LEE", "CHO", "JUNG", "CHOI"),
  married=c(F, F, T, T, T, F)
) #ex1에 추가로 "CHOI"가 추가되어 있음
m1 = merge(ex1, ex2, by="name", all.x=T, sort=F) #공통변수, ex1 기준
m2 = merge(ex1, ex2, by="name", all.y=T, sort=F) #공통변수, ex2 기준, ex1 값이 없는 ex2의 관측치는 NA로 처리됨
m3 = merge(ex1, ex2, by="name", all=T, sort=F) #공통변수, 모든 관측치

ex3 = data.frame(
  surname=c("KIM", "PARK", "LEE", "CHO", "JUNG", "CHOI"),
  married=c(F, F, T, T, T, F)
) #ex2와 동일한 형태이지만 변수명에서 차이
m4 = merge(ex1, ex3, by.x = "name", by.y = "surname", all.x = T, sort = F) #기준 변수명 각각 설정, ex1 기준
m5 = merge(ex1, ex3, by.x = "name", by.y = "surname", all.y = T, sort = F) #기준 변수명 각각 설정, ex2 기준
m6 = merge(ex1, ex3, by.x = "name", by.y = "surname", all = T, sort = F) #기준 변수명 각각 설정, 모든 관측치

#데이터프레임의 연산
#주로 데이터프레임 객체의 변수를 추출하여 각 변수에 포함된 원소의 자료형에 따라 연산 수행
#수치형 값을 갖는 변수는 별도로 추출할 경우 벡터 객체의 성질을 가지기 때문에 벡터 객체의 연산을 활용할 수 있음
ex4 = data.frame(matrix(1:9,3,3,byrow=T))
rownames(ex4) = c("r1", "r2", "r3")
colnames(ex4) = c("c1", "c2", "c3")
rowMeans(ex4)
colMeans(ex4)
mean(ex4$c1)
sd(ex4$c1)
min(ex4$c1)
max(ex4$c1)

#리스트
#리스트는 서로 다른 유형의 데이터들로 구성된 자료 객체로, 객체 중 제약에서 가장 자유로움
#리스트 객체의 성분으로 벡터, 행렬, 데이터프레임, 리스트 자료 객체까지 모두 포함 가능
list() #리스트 객체 생성, 각각의 성분에 다양한 객체를 할당하는 방식으로 객체를 생성
vector(mode="list",length=) #length의 길이를 가지는 list객체를 생성

ex1 = data.frame(
  name=c("KIM", "PARK", "LEE", "CHO", "JUNG"),
  age=c(23, 31, 52, 44, 61),
  height=c(170, 169, 182, 158, 191),
  gender=c("M", "M", "F", "F", "M"),
  stringsAsFactors = F
) #데이터프레임 생성
ex1.list = list(1:9,c("A","B","C"), matrix(1:9,3,3,byrow=T),ex1)
ex2.list = vector("list",4)
ex2.list[[1]] = 1:9
ex2.list[[2]] = c("A","B","C")
ex2.list[[3]] = matrix(1:9,3,3,byrow=T)
ex2.list[[4]] = ex1

#리스트의 속성
length(ex1.list) #ex1,list에 포함된 성분의 수
length(ex2.list) #ex2.list에 포함된 성분의 수
is.list(ex1.list)
is.list(ex1) #데이터프레임은 리스트임
is.data.frame(ex1)
is.data.frame(ex1.list) #리스트는 데이터프레임이 아님

#리스트의 성분
#리스트 객체는 성분으로 구성되어 있으며 각 성분에는 [[]] 기호를 통해 접근 가능
#리스트 객체의 각 성분은 또 하나의 자료객체로 볼수 있음
#각 성분에 포함된 자료 객체의 원소 접근 방법을 통해 각 성분의 자료 객체 원소에 접근할 수 있음
#리스트 객체에 [[]] 기호를 통해 성분을 추가할 수 있음
ex1.list[[1]] #첫번째 성분 확인
ex1.list[[1]][1] #벡터인 첫번째 성분의 첫번째 원소 값 확인
ex1.list[[1]][1:3] #원소의 위치
ex1.list[[1]][ex1.list[[1]]>3] #논리 연산 등을 통해 접근 가능
ex1.list[[3]][1,] #매트릭스 형태의 자료에서 원소의 접근 [행,렬]
ex1.list[[4]]$age #데이터 프레임인 4번째 성분의 age변수에 접근
ex1.list[[4]][ex1.list[[4]]$age > 40,]
ex1.list[[5]]=1:3 # 객체명[[성분의 수+1]]에 값을 할당하는 것으로 리스트에 성분 추가
ex1.lsit[[5]]=NULL #성분의 초기화
ex1.list[[5]]=ex2.list #성분에 리스트객체 추가
ex1.list[[5]][[1]]
ex1.list[[5]][[2]]
ex1.list[[5]][[4]]$height
mean(ex1.list[[5]][[4]]$height)

#**R실습에서 일반적으로 많이 사용되는 데이터 구조


#R실습 6강

#Tibble은 tidyverse에 속한 패키지들이 공통적으로 사용하는 개선된 형태의 데이트 프레임
#기존 데이터 프레임에 몇가지 기능을 추가함으로써 사용하기 편리한 형태를 취하고 있음
#Tibble과 관련된 작업을 하기 위해서는 tibble을 불러와야 함

library(tidyverse) #tidyverse 패키지 장착
as_tibble() #기존 데이터프레임을 tibble로 전환
as_tibble(cars)
tibble() #개별 벡터를 이용한 tibble의 생성 명령어
tibble(x=1:3,y=x+1,z=1)

as_tibble(MASS::Cars93)
#처음 10개의 케이스만 출력
#화면 크기에 따라 출력되는 변수의 개수 조절, 생략된 변수의 이름과 유형을 아래쪽에 표시
print(as_tibble(MASS::Cars93), n=20, width=Inf) #print명령어를 통해 출력할 자료의 양을 설정할 수 있음

#tibble에서는 rowname이 생략됨
head(mtcars) #처음 6개의 값을 출력
mtcars_t<-as_tibble(mtcars)
print(mtcars_t,n=6) #rowname이 출력되지 않음
rownames_to_column() #생략된 rowname을 변수로 전환하는 함수
mtcars_d<-rownames_to_column(mtcars,var="rowname") #rowname을 변수로 전환하여 첫번째 열에 붙임
mtcars_t<-as_tibble(mtcars_d)
mtcars_t

#tibble에서는 인덱싱 방식에서 $기호를 사용하는 경우 엄격한 기준이 적용되어 변수의 전체 이름을 다 사용해야 선택됨

#데이터의 입/출력과 처리
read.table()
read.csv()
read.fwf()
View() #읽어들인 데이터의 내용 확인
head() #처음부터 6개까지 데이터 확인
tail() #마지막 6개 데이터 확인

#데이터는 데이터프레임 객체도 저장 가능
read.table(file, header=FALSE, sep="",...) #의 형태
#header는 첫번째 행을 변수명으로 읽어들일지의 여부를 정하는 인수 T,F로 설정 가능
#sep은 파일에 작성된 데이터간 구분자가 무엇인지를 명시하는 함수

ex1.df=read.table(file="C:/Users/JHH/Documents/sampleData.txt", header=T, sep="\t")
is.data.frame(ex1.df)
nrow(ex1.df)
ncol(ex1.df)
names(ex1.df)
ex1.df[1,]
ex2.df=read.table(file="C:/Users/JHH/Documents/sampleData.csv", header=T, sep=",")
is.data.frame(ex2.df)
nrow(ex2.df)
ncol(ex2.df)
names(ex2.df)
ex2.df[1,]
View(ex2.df)
head(ex2.df)
tail(ex2.df)

ex3.df=read.csv(file="C:/Users/JHH/Documents/sampleData.csv") #sep="," 값이 초기 인수로 설정되어 있어서 생략 가능
is.data.frame(ex3.df)
nrow(ex3.df)
ncol(ex3.df)
names(ex3.df)
ex3.df[1,]
View(ex3.df)
head(ex3.df)
tail(ex3.df)

read.fwf() #고정된 넓이를 지정하여 하일의 내용을 읽어들이는 함수
read.fwf (file, widths=, header=FALSE, sep="\t", row.names) #widths는 각 변수별 데이터가 포함된 열의 넓이를 지정

ex4.df = read.fwf (file = "C:/Users/JHH/Documents/sampleData.dat",
                   widths = c(5, 5, 8, 12, 6, 6, 6, 8, 8, 8),
                   col.names = c("stuid", "schid", "지역규모", "시도", "설립유형", "학교유형", 
                                 "학교성별", "kss", "mss", "ess"))
is.data.frame(ex4.df)
nrow(ex4.df)
ncol(ex4.df)
names(ex4.df)
ex4.df[1,]
View(ex4.df)
head(ex4.df)
tail(ex4.df)

#SPSS파일 불러오기
read.spss(fole, use.value.labels=TRUE, to.data.frame=FALSE)
#use.value.labels는 SPSS의 value label을 활용할지 지정하는 인수, 입력하지 않을 시 초기 인수는 TRUE
#to.data.frame은 데이터프레임으로 지정할지 여부를 설정하는 인수, 초기 설정은 FALSE

library("foreign")
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
is.data.frame(ex5.df)
nrow(ex5.df)
ncol(ex5.df)
names(ex5.df)
ex5.df[1,]
View(ex5.df)
head(ex5.df)
tail(ex5.df)

ex6.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = T, to.data.frame = T)
is.data.frame(ex6.df)
nrow(ex6.df)
ncol(ex6.df)
names(ex6.df)
ex6.df[1,]
View(ex6.df)
head(ex6.df)
tail(ex6.df)

#dplyr패키지를 통한 데이터의 처리
#dplyr은 tidyverse의 핵심 패키지로 데이터 처리에 특화
#변수명의 변경, 데이터와 변수의 추출, 데이터의 정렬, 변수 추가, 데이터 통합 등을 처리
tbl_df() #해당 함수를 통해 데이터프래임 객체를 dplyr 패키지에서 사용하는 형식으로 전환하여 데이터를 효율적으로 처리, 데이터구조를 쉽게 파악할 수 있음

library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = tbl_df(ex5.df)
ex5 = as_tibble(ex5.df)
ex5
mode(ex5)
is.data.frame(ex5)
dim(ex5)
names(ex5)




filter() #데이터 추출을 지원하는 함수, SPSS에서 케이스 선택과 유사한 기능
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
filter(ex5, mss > 200)
filter(ex5, kss > 200, mss > 200, ess > 200)
filter(ex5, 지역규모 == 3, kss > 200, mss > 200, ess > 200)
filter(ex5, 지역규모 == 3 | 지역규모 == 2, kss > 200, mss > 200, ess > 200)
filter(ex5, 지역규모%in%c(2,3), kss > 200, mss > 200, ess > 200) #%in%c(2,3) 2또는 3
#%in% 여러개 선택하고 싶을 때 사용

arrange() #변수 조건에 따라 데이터를 정렬하는 함수 arrange(데이터, 정렬조건변수)의 형태
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
arrange(ex5, kss)
arrange(ex5, desc(kss)) #desc()내림차순
arrange(ex5, kss , ess , mss) #동순일 경우 입력한 변수 순서대로 정렬
arrange(ex5, 지역규모)
arrange(ex5, desc(지역규모))

#일부 변수를 선택
select() #데이터에서 변수를 선택, 변수를 선택할 때 새로운 변수명으로 지정 가능
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
select(ex5, kss)
select(ex5, kss, mss)
select(ex5, ss1 = kss, ss2 = mss) #ss1, ss2로 새로운 변수명 지정

mutate() #데이터에 포함되어 있는 변수를 이용하여 새로운 변수를 생성하는 함수로 recode 기능과 유사함
#mutate(데이터, 새로운 변수=계산식 or 조건)의 형태
#계산식에는 각종 연산자, 각종 함수를 적용할 수 있음
#조건에는 ifelse(), recode(), case_when() 등을 활용할 수 있음
ifelse() #ifelse(조건, 참일경우의 값, 거짓일 경우의 값)의 형식
recode() #recode(변수명, 변수명값=변경할 값)의 형식으로 적용
case_when() #여러 조건을 만족할 경우 값을 부여할 때 자주 활용 case_when(조건~값)의 형식
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
mutate(ex5, new = mean(kss))
mutate(ex5, new = n()) #표본 개수
mutate(ex5, new = 1:n()) #번호 붙이기~
mutate(ex5, new = kss-mean(kss)) #kss의 편차
mutate(ex5, new = ( kss + mss + ess ) / 3) #합의 평균
mutate(ex5, new = rowMeans(select(ex5, 'kss', 'mss', 'ess'))) #위와 같은 거
mutate(ex5, new = log(kss)) #kss의 자연로그값
mutate(ex5, new = cumsum(kss)) #kss의 누적합
mutate(ex5, new = cummean(kss)) #해당 행까지의 누적 관측치의 평균
mutate(ex5, new = min_rank(kss)) #작은것부터 순위 부여
mutate(ex5, new = ifelse(kss < 200, 1, 2)) #kss가 200보다 작으면 1 크거나 같으면 2
mutate(ex5, new = recode( 지역규모 , '1' = 10, '2' = 20, '3' = 30)) #recode(변수명, 변수값 = 변경할 값)
mutate(ex5, new = case_when(kss < 200 ~ "low", kss >= 200 & kss < 250 ~ "middle", kss >= 250 ~ "high"))
mutate(ex5, new = case_when(kss < 200 ~ 1, kss >= 200 & kss < 250 ~ 2, kss >= 250 ~ 3)) #조건이 여러개면 case_when 사용
mutate(ex5, new = kss-mean(kss),
       new2 = case_when(kss<200 ~ 1, TRUE ~ kss)
) # 여러 변수 한꺼번에 생성 가능

#R실습 7강

#dplyr패키지를 통한 데이터의 처리
group_by() #그룹별로 데이터를 처리할 수 있도록 지원하는 함수
#group_by(데이터, 변수)의 형태로 데이터에서 변수의 값별로 그룹화 수행

summarise() #변수의 통계 결과를 데이터로 생성
#계산 함수에는 n(), mean(), sd(), min(), max(), first() 첫번째 관측치, last() 마지막 관측치, nth(x,n) n번째 관측치 등이 있음

#group_by() 함수로 그룹화된 데이터는 이후 연산이 모두 그룹별로 수행됨
# summarise(), mutate() 등의 함수와의 연동을 통해 그룹별 데이터를 생성하는데 유용하게 활용됨

library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
summarise(ex5, N = n()) #summarise(데이터, 변수명, 계산함수)
summarise(ex5, KM = mean(kss), MM = mean(mss), EM = mean(ess))
summarise(ex5, 지역규모F = first(지역규모), KMX = max(kss))
summarise(group_by(ex5, 지역규모), KM = mean(kss), MM = mean(mss), EM = mean(ess)) #지역규모로 그룹화 하고 각각의 그룹에 대해 연산 수행
summarise(group_by(ex5, schid ), KM = mean(kss), MM = mean(mss), EM = mean(ess)) #학교별로 그룹화하고 연산 수행
summarise(group_by(ex5, schid ), sido=first(시도), KM = mean(kss), MM = mean(mss), EM = mean(ess)) #시도 추가

#Pipe의 기능은 한 명령문의 결과물을 바로 다음 명령문의 입력요소로 직접 사용할 수 있도록 명령문들을 서로 연결하는 기능을 의미함
#분석 중간단계로 생성되는 무수한 객체들을 따로 저장할 필요가 없기 때문에 깔끔하게 정리되며 분석의 흐름을 이해하기 쉬워짐
#Pipe 연산자 %>% 기본 형태는 lhs%>%rhs, lhs는 객체, rhs는 lhs를 입력요소로 하는 함수가 됨
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
ex5.df = read.spss(file = "C:/Users/JHH/Documents/sampleData.sav", use.value.labels = F, to.data.frame = T)
ex5 = as_tibble(ex5.df)
ex5 %>% filter(학교유형 == 1) %>% arrange(시도) #학교유형이 1인것만 걸러서 시도순으로 정렬

ex5 %>% filter( 학교유형 == 1) %>% #학교 유형이 1인 자료로 구성
  mutate(과목평균 = (kss + mss + ess ) / 3) %>% #과목평균이라는 새로운 변수 생성
  group_by(schid) %>% #학교ID별로 그룹화
  summarise(N = n(), 전체평균 = mean(과목평균)) %>% #N은 개체수 그리고 전체평균
  arrange(schid) #학교ID 별로 정렬

ex5 %>% group_by(시도) %>% #시도별로 그룹화
  summarise(응시학생수 = n(), 국어평균 = mean(kss), 수학평균 = mean(mss), 영어평균 = mean(ess)) %>%
  mutate(응시학생비율 = 100*응시학생수/sum(응시학생수)) %>%
  select(시도, 응시학생수, 응시학생비율, 국어평균, 수학평균, 영어평균) %>% #select()함수로 자료 순서 배열
  arrange(desc(시도))

#데이터 출력
write.table()
write.csv()
#행렬이나 데이터프레임 형태로 자료 객체를 저장

save.ex4 = matrix(1:9, 3, 3, byrow=T)
write.table(save.ex4, file="fileEx4.txt", col.names=F, row.names=F) #지정된 디렉토리에 저장 첫번째 행과 열이 names가 아님
write.csv(save.ex4, file="fileEX5.csv")

#제어구문: 조건문
#if,else 조건문
#if 조건문은 주어진 조건을 만족할 경우 명령어를 실행시키고 조건을 만족하지 않을 경우 명령문을 실행시키지 않음
#if 조건문은 if 뒤에 소괄호()를 통해 조건을 제시하고 중괄호{}로 조건이 참일 경우 실행되는 명령문들을 묶어서 제시하는 구조
#if 조건문은 중첩하여 사용할 수 있음
#if(조건){명령문}

a=3
b=1
if(T){
  a=a+1 #a=4
}
if(F){
  b=b+1 #b=1
}
if(3){
  a=a+1 #a=5
}
if(0){
  b=b+1 #b=1
}
if(a>b){
  a=a+1 #a=6
}
if(a == 6){
  b=b+1 #b=2
}
if(a == b){
  d=10
}
if(a > b && b > 1) {
  message("a > b and b > 1")
}
if(a > b||b > 1) {
  message("a > b or b > 2")
}
if(a > b) {
  message("a > b")
  if(b > 1) {
    message("a > b and b > 1")
  }
}
if(a > b) {
  message("a > b")
  if(b > 2) {
    message("a > b and b > 2")
  }
}

a=3
b=1
if( a > b ){
  a = a + 1
} else {
  b = b + 1
}

if(a > b) {
  message("a > b")
  if(b > 1) {
    message("a > b and b > 1")
  } else {
    message("a > b and b <= 1")
  }
} else {
  message("a <= b")
  if(b > 1) {
    message("a <= b and b > 1")
  } else {
    message("a <= b and b <= 1")
  }
}

#제어구문: 반복문
#for 문은 반복 변수에 반복변수의 값을 1개씩 반복하여 할당하면서 반복할 명령문을 실행함
#if 문과 마찬가지로 for 문은 중첩하여 사용 가능하며, 반복할 명령문은 여러개로 작성 가능함

#예시1
for(i in 1:10){
  message(i)
}
}
#예시2
for(i in c(11, 15, 19)){
  message(i)
}
#예시3
x = c(11, 12, 15, 19)
for( i in 1:length(x)) {
  message(x[i])
}
#예시4
cumsum = 0
for( i in 1:10) {
  cumsum = cumsum + i
}
cumsum

#예시5
cumsum = 0
for(i in 1:10) {
  if(i %% 2 == 1){ #%%나머지 연산자 -> 홀수만
    cumsum = cumsum + i
  }
}
#예시6 매트릭스 각 행과 열의 값 나열
x = matrix(1:12, 3, 4)
for(i in 1:nrow(x)) {
  for(j in 1:ncol(x)){
    message(paste0("x의",i,"행",j,"열의값은",x[i,j]))
  }
}
#예시7 매트릭스 각 열의 합
x = matrix(1:9, 3, 3)
y = rep(0,nrow(x))
for(i in 1:nrow(x)) {
  for(j in 1:ncol(x)) {
    y[i] = y[i] + x[i,j]
  }
}

#예시8
x=c(1,2,3,NA,4,5,NA,8)
for(i in 1:length(x)){
  if(is.na(x[i])){
    x[i]=0
  }
}
x

#통계분석: 기술통계
mean() #평균
merian() #중앙값
range() #범위
na.rm=T #결측치 제거

quantile() #사분위수 확인
#예시
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
SPSS = function(dataFile) {
  return(as_tibble(read.spss(dataFile, use.value.labels = F, to.data.frame = T)))
}
ROOT.DATA = "C:/Users/JHH/Documents/"
I.file = paste0(ROOT.DATA, "sampleData.sav")
df = SPSS(I.file)
quantile(1:10)
quantile(1:10, probs = c(0, 1, 0.25))
quantile(df$ess)
quantile(df$ess , probs = c(0.1, 0.2, 0.3))

#R실습 8강

library(ggplot2)
ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ, y=hwy))
#그래프 작성은 ggplot()으로 시작
#그래프 작성에 사용되는 데이터를 data=에 지정, 데이터프레임이어야 함
#ggplot()은 좌표계를 작성, geom_point는 실질적인 그래프를 그리는 역할, 
#mapping=aes()와 함께 사용됨, 데이터와 그래프의 시각적 요소를 연결시키는 것
ggplot(data=mpg, mapping=aes(x=displ, y=hwy))+geom_point() 
ggplot(mpg, aes(x=displ, y=hwy))+geom_point() 
#그래프의 세 요소 데이터, 매핑, geom_Function -> ggplot(<DATA>, aes(<Mappoings>))+geom_<Function>()

#변수 class에 대한 정보를 색깔로 추가해보기
ggplot(mpg)+geom_point(aes(x=displ, y=hwy, color=class))
ggplot(mpg, aes(x=displ, y=hwy, color=class))+geom_point() #매핑에 다른 시각적 요소를 추가할 수 있음

#점 모양을 변수 drv와 연결하여 표현하기
#점의 모양은 aes()의 입력요소 shape에 의해 변수와 연결됨
# shape과 매핑괴는 변수는 drv와 같이 이산형이어야 함
ggplot(mpg) + geom_point(aes(x=displ, y=hwy, shape=drv))

#점의 크기를 변수 cyl과 연결해보기 size에는 연속형 변수를 매핑하는 것이 좋음
ggplot(mpg) + geom_point(aes(x=displ, y=hwy, size=cyl))

#시각적 요소의 값을 사용자가 지정하기 위해서는 color shape size 등을 함수 aes()의 밖으로 빼내서 geom 함수 입력요소로 사용해야 함
#각 시작적 요소에 지정되는 값은 다음 규칙에 따름
#color: 색깔을 나타내는 문자열 지정
#size: 점의 크기를 mm 단위로 지정
#shape: 점의 형태를 나타내는 0~25 사이의 숫자

#점의 색깔 모양 형태를 사용자가 지정하여 사용해야 한느 경우도 있음 stroke은 점들의 테두리 선 두께를 조절하는 요소
ggplot(mpg, aes(x=displ, y=hwy))+geom_point(color="blue", size=3, shape=21, fill="red", stroke=2)

ggplot(mpg, aes(x=displ, y=hwy, color="blue"))+geom_point()
#aes안에서는 시각적 요소를 변수와 연결시킬 수 있고
#시각적 요소를 사용자가 직접 정의하고자 하면 aes()밖에서 해야함
#특정 값을 aes() 안에서 지정하면 매핑은 변수와 연결되는 것이므로 특정 하나의 값과는 매핑이 성립되지 않음
#따라서 "blue"라는 하나의 값만을 갖고있는 새로운 변수를 스스로 만들고 그 변수와 color를 매핑하게 됨

#R실습 9강

#범주형 변수가 다른 변수에 미치는 영향력을 확인하기 위해 범주형 변수에 의해 구분되는 그룹별로 그래프를 작성하여 비교
#그룹별로 데이터를 구분하여 그래프를 작성하는 것을 faceting이라고 함
library(ggplot2)
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기
facet_wrap() #데이터를 구분하려는 변수가 하나인 경우에 사용
#예시 데이터 mpg의 변수 displ과 hwy의 산점도를 변수 class의 범주별로 구분하여 작성
ggplot(mpg, aes(x=displ, y=hwy))+geom_point()+facet_wrap(~class)
ggplot(data=mpg)+geom_point(mapping=aes(x=displ, y=hwy))+facet_wrap(~class)

#변수 class가 '2seater'인 케이스를 제거한 후 작석
#패널의 행과 열의 개수는 입력요소 ncol 혹은 nrow로 조절할 수 있음

mpg_1<-mpg%>%filter(class != "2seater") #filter를 사용한 변수 class에서의 한 범주 제거
ggplot(mpg_1, aes(x=displ, y=hwy))+geom_point()+facet_wrap(~class, ncol=2) #행과 열의 개수는 입력요소 ncol 혹은 nrow로 조절 할 수 있음
ggplot(mpg_1, aes(x=displ, y=hwy))+geom_point()+facet_wrap(~class, ncol=2, dir="v") #dir="v" 배치를 열단위로 조절할 수 있게 함

#facet_grid()는 데이터를 구분하려는 범주가 두 개인 경우에 주로 사용
mpg_2<-mpg%>%filter(drv != "r", cyl != 5)
my_plot<-ggplot(mpg_2, aes(x=displ, y=hwy))+geom_point()
my_plot+facet_grid(drv~cyl)

#연속형 변수로 faceting하기 위해서는 연속형 변수를 범주형 변수로 변환해야함
cut_interval(x,n,length)
cut_width(x,width,boundary)
cut_number(x,n)

airquality$wind_d<-cut_number(airquality$Wind, n=4) #새로운 범주형 변수 추가

ggplot(data=airquality)+
  geom_point(mapping=aes(x=Solar.R, y=Ozone))+
  facet_wrap(~wind_d)

#facting은 기존 그래프에 다른 변수 정보를 추가하고자 할 때 유용하게 사용되는 기법
#색깔 점의 크기 등을 변수와 연결하는 매핑도 갖고있는 기능
#facting은 점들이 많이 겹치는 경우 더 명확하게 다른 변수의 정보를 확인 가능하지만 각 패널마다 작성된 그래프에 미세한 차이가 있을 경우는 확인이 어려움

ggplot(data=airquality)+
  geom_point(mapping=aes(x=Solar.R, y=Ozone, color=wind_d, size=wind_d)) #

#몇몇 유형의 그래프를 각각 따로 작성하고 그것을 겹쳐 놓음으로써 원하는 그래프를 작성하는 방식을 생각해 볼 수 있음
#같은 데이터를 쓰더라도 다른 geom함수를 쓰면 다른 형태의 그래프가 나옴
ggplot(mpg, aes(x=displ, y=hwy))+geom_point()
ggplot(mpg, aes(x=displ, y=hwy))+geom_smooth() #비모수 회귀곡선을 나타내는 geom함수
ggplot(mpg, aes(x=displ, y=hwy))+geom_point()+geom_smooth() #글로벌 맵핑의 활용, 로컬맵핑이 우선적으로 작동함

#Help>cheasheets>data visualization with ggplot2 #ggplot2에서 활용 가능한 geom함수 리스트 확인

#displ과 hwy 비모수 회귀곡선을 표시하고 그 위에 산점도도 추가되 drv 값에 따라 색깔을 다르게 표시
ggplot(mpg, aes(x=displ, y=hwy, color=drv))+geom_point()+geom_smooth(se=F)
ggplot(mpg, aes(x=displ, y=hwy))+geom_point(aes(color=drv))+geom_smooth(se=F)
#se=F 회귀곡선의 신뢰구간이 표시되지 않음

#displ과 hwy의 비모수 회귀곡선을 변수 drv에 의해 구분되는 그룹별로 각각 추정하여 선의 종류를 다르게 표시
#그 위에 drv값에 따라 점의 색을 다르게 하여 산점도를 추가
ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point(aes(color=drv))+
  geom_smooth(aes(linetype=drv), se=F)

#여러개의 레이어가 작성되는 경우 각 레이어는 다른 data를 사용할 수 있음
#displ과 hwy 산점도를 작성하되
#변수 drv 값에 따라 점의 색을 다르게 하고
#그 위에 두 변수의 비모수 회귀곡선을 추가하되
#변수 drc값이 4인 데이터만을 대상으로 회귀곡선 추가하기

ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point(aes(color=drv))+
  geom_smooth(data=filter(mpg, drv=="4"), se=F, color="red")

#R실습 10강

library(ggplot2) #ggplot2 패키지 장착
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기

#통계적 변환(stat)이란 ggplot()에 입력된 데이터 프레임 자료의 변환을 의미하는 것으로써 각 그래프 유형별로 대응되는 통계쩍 변환이 존재함
#그래프 작성 과정에서 통계적 변환 과정을 거쳐 생성된 자료가 사용되는 경우도 많음
#예를들어 산점도와 같이 자료가 그대로 사용되는 경우에 대한 stat은 "identity"
#비모수 회귀곡선의 작성에 필요한 stat은 "smooth"가 됨
#모든 geom 함수에는 미리 설정된 디폴트 stat이 존재 별도로 지정하지 않아도 그래프가 작성됨
#geom_point()는 geom_stat(stat="identity)와 동일
#geom_smooth()는 geom_smooth(stat="smooth")와 동일
#그래프 작성에 필요한 통계적 변환은 geom함수를 사용하지 않고 stat함수를 대신 사용해도 지정할 수 있음

#예를 들어 막대그래프를 작성하는 geom_bar()함수는 stat_count()로 동일한 막대 그래프를 작성할 수 있음
ggplot(data=mpg, aes(x=trans))+
  geom_bar()
ggplot(data=mpg, aes(x=trans))+
  stat_count()
#특별한 경우가 아니라면 geom함수를 더 많이 사용함

#막대도수를 상대도수 비율로 그리기
ggplot(mpg)+
  geom_bar(aes(x=trans, y=stat(prop))) #stat(prop)을 하면 항상 1이 나오는 문제
ggplot(mpg)+
  geom_bar(aes(x=trans, y=stat(prop),group=1)) #개별 그룹으로 나워져 있던 각 범주들을 하나의 그룹으로 묶어줘서 전체 그룹에서 각 그룹에 해당하는 상대도수를 도출

#몇몇 상황에서 stat을 따로 지정해야하는 경우도 있음
#막대그래프의 경우 도수분포표를 자료로 입력하는 경우가 여기에 해당
#예를들어 trans의 범주에서 auto와 manual을 각각 통합하고 자료의 개수 확인하려고 할 때
mpg_am<-mpg%>%
  mutate(am=substr(trans,1,nchar(trans)-4))%>% #trans범주에서 뒤에 4글자 삭제해서 auto와 manual로 통합한 am이라는 새로운 범주 생성
  count(am) #am의 도수분포표가 입력되어 있음
#도수분포표가 geom_bar()에 자료로 입력된 경우는 입력된 자료 그대로를 막대그래프의 높이로 사용해야 함
#이때는 stat이 "count"가 아닌 "identity"로 지정

ggplot(mpg_am, aes(x=am, y=n))+
  geom_bar(stat="identity")

#그래프 위치 조정
#그래프 요소들이 서로 겹치게 되는 경우 위치 조정을 통해 완성도를 높일 수 있음
#산점도에 약간의 난수를 더해 점의 위치를 조정하는 방법
goem_point() #애 position="jitter"를 추가

ggplot(data=mpg, aes(x=cty , y=hwy))+
  geom_point()
ggplot(data=mpg, aes(x=cty , y=hwy))+
  geom_point(position="jitter")

geom_jitter() #점의 위치를 조정하기 위해 사용되는 난수의 크기를 조절하는 옵션을 간편히 이용할 수 있음
ggplot(data=mpg, aes(x=cty , y=hwy))+
  geom_jitter(width=0.4, height=0.05) #폭을 0.4 높이를 0.05로 흩뿌려라 양옆으로 더 흩뿌려진 모습
ggplot(data=mpg, aes(x=cty , y=hwy))+
  geom_jitter(width=0.05, height=0.4) #폭을 0.05 높이를 0.4로 흩뿌려라 위아래로 더 흩뿌려진 모습

#위치조정은 연속형 자료를 위한 그래프보다는 이산형 자료를 위한 그래프, 특히 이변량 막대 그래프 작성에서 가장 유용하게 사용됨

mpg_1<-mpg%>%
  mutate(am=substr(trans,1,nchar(trans)-4))%>%
  filter(cyl!=5)

#이변량 그래프
p_1<-ggplot(mpg_1, aes(x=as.factor(cyl), fill=am))+ #cyl범주에 am을 채워넣어라?
  xlab("Number of Cyliners") #축이름 설정 

p_1+geom_bar()
p_1+geom_bar(position="dodge") #dodge위아래로 쌓는 것이 아니라 양옆으로
p_1+geom_bar(position="fill") #fill 1을 기준으로 전체를 상대적인 비율로

#연속형 변수의 분포를 그룹별로 비교하고자 하는 경우는 boxplot을 유용하게 사용
ggplot(mpg_1, aes(x=as.factor(cyl), y=hwy))+ #as.factor() 범주형 자료일 때 범주로 전환
  geom_boxplot()+
  xlab("Number of Cyliners")

ggplot(mpg_1, aes(x=as.factor(cyl), y=hwy))+
  geom_boxplot(aes(color=am))+
  xlab("Number of Cyliners")

#R실습 11강 

#ggplt2에 의한 자료 시각화: 좌표계
#좌표계는 시각적 위치 요소인 x와 y를 근거로 그래프 각 요소의 2차원 위치를 결정하는 체계를 의미
#드폴트 좌표계는 데카르트 좌표계인 coord_cartesian()
#coord_flip(), coord_polar()는 활용도가 높은 좌표계
#coord_cartesian()은 변수 xlim, ylim으로 XT축의 범위를 조정하는 기능이 있음
#원래 XY축 조정은 ggplot2에서 실행되는 그래프의 문법 성분 중 scale이 담당
#scale은 자료와 시각적 요소와의 매핑 및 XY축 범례 등의 내용조정을 의미함
#대부분의 경우 디폴트 상태에서 그래프를 작성하지만 XY축 범위나 XY축의 라벨 등을 변경해야 하면 scale의 디폴트 값을 수정해야 함

library(ggplot2) #ggplot2 패키지 장착
library("foreign") #foreign 패키지 불러오기
library("dplyr") #dplyr 패키지 불러오기

#scale_<수정하고자 하는 시각적 요소 지정>_<적용되는 스케일>()의 형태를 취하고 있음
#수정하고자 하는 시각적 요소 - color, x, y, fill 등
#적용되는 스케일 - discrete, continous 등
#x축 범위를 (3,6)으로 축소시키기

p<-ggplot(mpg, aes(x=displ, y=hwy))+
  geom_point()+geom_smooth(se=F)
p+scale_x_continuous(limits=c(3,6))

#scale 함수를 사용하여 XY축 범위를 축소한 경우 범위를 벗어난 자료들이 모두 NA로 바뀐다는 것
#반면 coord_cartesian()으로 축소하면 전체 중 축소된 범위에 해당하는 부분만확대해서 보여주는 것으로써 봄위를 벗어난 자료를 삭제하지 않음

p+coord_cartesian(xlim=c(3,6))+
  xlab("Egine Displacement")

#그래프는 수직 방향으로 작성되는 것이 디폴트
#coord_flip() 그래프를 90도로 회전시켜 수평으로 만들 때 사용하는 함수 
ggplot(mpg, aes(x=class, y=hwy))+
  geom_boxplot()
ggplot(mpg, aes(x=class, y=hwy))+
  geom_boxplot()+
  coord_flip()

#한 변수의 상자그림을 작성하는 경우에도 geom_boxplot()에는 시각적 요소 x와 y가 모두 필요함
#y에 작성 대상이 되는 연속형 변수를 연결하고
#x에는 길이가 1인 객체를 지정하면 되는데 하나의 빈간이 입력된 문자형 벡터를 지정하는 것이 무난한 방법

ggplot(mpg, aes(x=" ", y=hwy))+
  geom_boxplot()+
  ggplot(mpg, aes(x=" ", y=hwy))+
  geom_boxplot()+
  coord_flip()

#극좌표는 2차원 공간에 있는 어느 한 점의 위치를 원점에서의 거리와 각도로 나타내는 좌표계
#coord_polar()는 극좌표로 전환하는 함수 x와 y중 각도로 전환할 요소를 변수 theta에 지정, 디폴트는 theta="x"
#극좌표 활용 예제로 막대그래프를 coxcomb또는 wind rose라고 불리는 그래프로 변환시키기
#mpg 변수 class의 막대그래프를 작성하되 막대 사이의 간격을 없애도 범례를 제거하기

b<-ggplot(mpg, aes(x=class, fill=class))+
  geom_bar(show.legend=F, width=1)+
  labs(x="",y="")
b
b+coord_polar()
#동일한 막대 폭이 각도로 변환되고
#서로 다른 막대 높이가 반지름으로 변환

#극좌표를 활용하는 두번째 예제로 파이그래프와 bullseye 그래프 작성
#막대그래프를 작성하고 극좌표를 적용하는 것인데 막대그래프를 위로 쌓아올리는 형태로 작성해야 함
#한 변수에 대한 막대 그래프를 쌓아올리기 위해서는 시각적 요소 x에 길이가 1인 객체를 매핑하고 범주형 변수를 시각적요소 fill에 매핑해야 함
#또한 x축 전체 구간을 막대로 가득 채우기 위해 with=1을 추가

b2<-ggplot(mpg, aes(x="", fill=class))+
  geom_bar(width=1)+
  labs(x=", y=")
b2
b2+coord_polar(theta="y") #파이그래프
b2+coord_polar() #bullseye그래프

#파이그래프의 가운데 부분을 제거한 것을 donut 그래프 혹은 ring 그래프

b3<-ggplot(mpg, aes(x=1, fill=class))+
  geom_bar(width=0.3)+
  labs(x=", y=")+
  xlim(0.5,1.5)
b3+coord_polar(theta="y")

#ggplot 그래프 작성 기본요소 총정리
ggplot(data=<Data>)+
  <Geom_Functiuon>(mapping=aes(<Mapping>),
                   stat=<stat>,
                   position=<Position>)+
  <Coord_Function>+
  <Facet_Function>
  
  #R실습 12강

#이변량 연속형 자료 탐색
#연속형 변수가 두 개 혹은 그 이상 주어질 때 변수들의 분포 비교와 변수 사이의 관계 탐색
#그래프와 요약통계를 함께 활용하면 효과적으로 할 수 있음
#두 개 이상의 연속형 변수의 분포가 주어졌을 경우 그 변수의 분포를 비교하는 것은 가장 기본적인 작업
#만일 어느 한 연속형 변수의 분포가 어떤 요인으로 구분되는 그룹마다 다르다면 그룹변수가 연속형 변수에 통계적으로 유의밓나 영향을 미치고 있다고 해석할 수 있음
#그룹별로 분포를 비교하고자 할 때 먼저 시도할 수 있는 것은 facet함수
facet_wrap()
facet_grid()
#그룹별로 나타내는 그래프 작성해서 비교하기

library(tidyverse)
mpg%>%count(cyl)

mpg_1<-mpg%>%filter(cyl!=5) 
ggplot(mpg_1, aes(x=hwy))+
  geom_histogram(binwidth=5)+
  facet_wrap(~ cyl, ncol=1) #cyl변수에 따라 나워서 hwy 변수의 분포 비교

ggplot(mpg_1, aes(x=hwy , fill= factor(cyl)))+
  geom_histogram(binwidth=5, alpha=0.3) #hwy 변수 분포에 색으로 cyl 변수 분포 비교 히스토그램이 겹친 형태 투명도

p<-ggplot(mpg_1, aes(x=hwy, color=factor(cyl)))

p+geom_freqpoly(binwidth=5) #세개의 도수분포다각형
p+geom_freqpoly(aes(y=stat(density)), binwidth=5) #stat에 density 밀도 백분율 비율로 표시가 되기 때문에 효율적으로 비교할 수 있음

#geom_freqpoly는color요인을 매핑해야 겹쳐진 도수분포 다각형이 작성됨
#빈도수를 비교한느 것은 그룹간 분포 비교가 부정확할 수 있으니 y요소에 stat(density)를 매핑하는 것이 바람직

#box_plot 상자그림
#그룹별로 작성된 상자그림을 옆으로 나란히 세워놓는 것이 효과적으로 분표 비교 방법

#예제로 정규분포 , t 분포 , 균등분포에서 각각 발생시킨 난수의 분포를 나란히 서 있는 상자 그림으로 비교하기
x1<-rnorm(100)
x2<-rt(100, df=3)
x3<-runif(100, min=1, max=1)

data.frame(x=c(rep(1:3, each=1000)), y=c(x1,x2,x3)) %>%
  ggplot(aes(factor(x),y))+
  geom_boxplot()+
  scale_x_discrete(labels=c("N(0,1)", "t(3)", "Unif(-1,1)"))+
  labs(x="",y="")

#하나의 연속형 변수가 하나 혹은 그 이상의 요인에 의하여 몇개의 그룹으로 구분되는 경우
#geom_boxplot()에 시각적요소 x에는 요인을 y에는 연속형 변수를 매핑하면 됨

pp<-ggplot(mpg_1, aes(x=factor(cyl), y=hwy))+
  geom_boxplot()+
  labs(x="Number of Cylinders", y="MPG")
pp
pp+coord_flip() #수직으로 전환

#자료 재배치는 reorder

#다중 점 그래프
ggplot(mpg_1, aes(x=factor(cyl), y=hwy))+
  geom_dotplot(binaxis ="y", binwidth =0.5, stackdir ="center")

ggplot(mpg_1, aes(x=factor(cyl), y=hwy))+
  geom_dotplot(binaxis ="y", binwidth =0.5, stackdir ="center")+
  geom_boxplot(width=0.3, outlier.shape=NA, color="blue", fill=NA)
#다중 점 그래프 위에 박스플롯 표시

#분포의 특징을 가장 세밀하게 표현할 수 있는 그래프가 확률밀도함수 그래프
#facet을 이용하여 그룹별 밀도함수를 비교
#하나의 그래프에 겹치게 작성도 가능

ggplot (mpg_1, aes (x=hwy))+
  geom_density()+
  xlim (5,50)+ #범위 설정
  facet_wrap (~ cyl , ncol =1) #확률밀도함수 그리기

ggplot (mpg_1, aes (x=hwy, fill=factor(cyl)))+
  geom_density(alpha= 0.2)+
  xlim(5,50) # 겹쳐서 그리기

ggplot (mpg_1, aes (x=hwy, fill=factor(cyl)))+
  geom_density()+
  xlim(5,50) #투명도 설정 안한 경유 가려진 부분 안보임

#여러개의 확률밀도 함수를 위로 쌓아올린 그래프
ggplot(mpg_1, aes(x=hwy, fill=factor(cyl)))+
  geom_density(position="stack", aes(y=stat(count)))+
  xlim(5,50)

#변수 x에 대한 각 그룹의 조건부 확률밀도함수를 작성한 그래프
ggplot(mpg_1, aes(x=hwy, fill=factor(cyl)))+
  geom_density(position="fill", aes(y=stat(count)))

#상자그림에 부가적인 정보를 추가한 변형된 형태의 상자그림이라고 할 수 있는 그래프
#이 그래프는 상자그림과 확률밀도함수 그래프의 조합이라고 할 수 있음

library(vioplot)
data(alltime.movies,package="UsingR")
attach(alltime.movies)
vioplot(Gross)
vioplot(Gross, horizontal = T, col="green")
detach(alltime.movies)

#소규모 데이터 분포를 표현할 때 유용하게 사용할 수 있는 그래프
#자료의 전범위를 구간으로 구분하여 각 구간에 속한 자료 한 개당 하나의 점을 위로 쌓아올리는 방식으로 작성
library(ggplot2)
ggplot(faithful, aes (x=waiting))+
  geom_dotplot(binwidth=1.5)

#경험적 누적분포함수는 각 자료값에서 1/n의 높이를 갖고 증가하는 계단함수
#한 변수의 분포형태를 매우 정확하게 표현할 수 있는 그래프

ggplot(faithful, aes (x=waiting))+
  stat_ecdf()

#R 회귀분석 실습

#회귀분석 R실습
colnames(state.x77) #자료의 열의 이름 확인

library(dplyr)
states<-as_tibble(state.x77) %>%
  rename(Life_Exp = 'Life Exp', HS_Grad='HS Grad')%>%
  relocate(Murder, .after=last_col()) #맨끝으로 보내
cor(states) #각 변수들 간의 상관계수

library(GGally)
ggcorr(states, label=T, label_round = 2) #색이 진할수록 관계성이 높다
ggpairs(states, lower=list(continous="smooth")) #*이 뜨면 통계적으로 유의미하다

fit<-lm(Murder~.,states) #Murder를 독립변수로 .까지 찍어줘야 함 나머지를 종속변수로
fit
summary(fit)

library(jtools) 
summ(fit)

install.packages("ggstance")
library(ggstance)
plot_summs(fit, scale = T)
plot_summs(fit, scale = T, plot.distributions = T, inner_ci_levels = .9)
# 회귀계수가 0 이라는 것 통계적으로 유의미하지 않다는 것
# 0을 포함하지 않는 population과 life_exp가 유의미한 변수

fit2<-lm(Murder~Population+Income+Life_Exp, states)

plot_summs(fit, fit2, scale = T) #첫번째 모형과 두번째 모형의 비교가 가능

install.packages("huxtable")
install.packages("sandwich")
export_summs(fit,fit2, model.names = c("Model 5", "model 6"), scale = T) #깔끔한 테이블 출력 가능

library(carData)
data(Leinhardt, package= "carData")
Leinhardt%>%ggpairs() #carData에 있는 모든 데이터 확인

Leinhardt_ln<-Leinhardt %>%
  mutate(ln_income=log(income), ln_infant=log(infant)) %>%
  select(-income, -infant) #로그 취해주기

fit3<-lm(ln_infant~ln_income+oil+region, Leinhardt_ln)
summ(fit3)
export_summs(fit3, scale = T) #평균중심화 한 값 평준화 절편값이 평균이라고 생각하면 됨

