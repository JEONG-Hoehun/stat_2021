library(nycflights13)
library(dplyr)
flight_df<-as.data.frame(flights)
str(flight_df)

#연산을 통해 새로운 변수 생성
mutate() #데이터에 포함되어 있는 변수를 이용하여 새로운 변수를 생성하는 함수로 recode 기능과 유사함
#mutate(데이터, 새로운 변수=계산식 or 조건)의 형태
#계산식에는 각종 연산자, 각종 함수를 적용할 수 있음

flight_df %>%
  mutate(mean_distance=distance/hour, 
         ratio_delay=arr_delay/(hour*60+minute))

#ifelse를 활용하여 category변수 생성
#ifelse(조건, 조건이 true일 때 실행할 명령어, 조건이 false일때 실행할 명령어)
flight_df %>%
  mutate(arr_delay_group=ifelse(arr_delay>0, "delay", "no delay"))

#별도 저장을 하지 않으면 명령어 실행시에만 변수가 생성됨
#별도 저장을 하는 명령어를 추가해야 함
mutate_flight_df<-
  flight_df %>%
  mutate(arr_delay_group=ifelse(arr_delay>0, "delay", "no delay"))

str(mutate_flight_df)

#별도 저장은 마지막에 써도 가능(화살표는 반대, logic을 생각하면 직관적 이해 가능)
flight_df %>%
  mutate(arr_delay_group=ifelse(arr_delay>0, "delay", "no delay"))->mutate1_flight_df

##group_by는 특정 변수로 grouping하는 것 (성별(남/여)에 따라 데이터를 split)
##summarize는 group_by와 쌍으로 자주 쓰임. 그룹별로 특정 변수의 값을 요약(평균, 분산 등)할때 사용
flight_df %>%
  group_by(month)

mutate1_flight_df %>% 
  group_by(arr_delay_group) %>% 
  summarise(max=max(arr_delay),
            min=min(arr_delay), 
            mean=mean(arr_delay), 
            med=median(arr_delay), 
            per20=quantile(arr_delay, 0,25))

#missing 값이 있어서 제대로 그루핑이 안되고 있음을 확인. filter를 통해 na 값을 없애고 분석해보자

flight_df %>%
  filter(!is.na(arr_delay)) %>%  #na가 아닌 row만 표시
  mutate(arr_delay_group=ifelse(arr_delay>0, "delay", "no delay")) %>% 
  group_by(arr_delay_group) %>% 
  summarise(max=max(arr_delay),
            min=min(arr_delay), 
            mean=mean(arr_delay), 
            med=median(arr_delay), 
            per20=quantile(arr_delay, 0,25))->final

final

##summarise : 요약통계량 계산
#mean(x,na.rm=TRUE) : 결측값제외하고 평균
#median(x,na.rm=TRUE) : 중앙값
#sd(x,na.rm=TRUE) : 표준편차
#min(x,na.rm=TRUE) : 최솟값
#max(x,na.rm=TRUE) : 최대값
#IQR(x,na.rm=TRUE) : 사분위수 : Q3-Q1
#sum(x,na.rm=TRUE) : 합

#n() 관측치 개수 계산, x변수 입력 하지 않음
#n_disinct(x) : 중복없는 유일한 관측치 개수 계산
###실습######
mutate1_flight_df %>% filter(!is.na(arr_delay)) %>%
  group_by(arr_delay_group) %>% 
  summarise(n=n())

mutate1_flight_df %>% 
  filter(!is.na(arr_delay)) %>% 
  group_by(arr_delay_group) %>% 
  summarise(n=n())

##rename : 변수 이름 변경
#rename(data, newvariablename=oldvariablename)의 구조를 가진다
str(mutate1_flight_df)
mutate2_flight_df<- rename(mutate1_flight_df, destination=dest)
str(mutate2_flight_df)


### 3.6. 마치며  ######################################################

## dplyr의 chain operator는 직관적인 사고의 흐름대로 코드를 심플하게 짤수 있다는 장점
## 단, 코드의 순서가 매우 중요함. 우리가 연산을 하는 순서가 다르면 답이 다른것처럼 먼저 작성된 코드 순서대로 
##   실행이 되기 때문에 코드를 짜기 전에 미리 데이터 소팅, 추출, 연산의 순서를 머릿속에 정리할 필요가 있음
## 또한 다른 chain operator는 다른 패키지(예: ggplot2)를 가져와서 쓸수도 있기 때문에 매우 유용함

install.packages('ggplot2')
library(ggplot2)

flight_df %>%
  filter(!is.na(arr_delay)) %>% 
  group_by(month) %>% 
  summarise(max=max(arr_delay)) %>% 
  ggplot(.,aes(x=month, y=max))+geom_line()
