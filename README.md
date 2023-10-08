# N-T_project
netflix 와 tourist 상관관계 분석 대시보드 제작 프로젝트 

## 팀명: 아직이조 (N&T)

* [팀원] 윤성현, 이다혜

## 느낀점
1. OPENAPI를 알게되었다.
OPENAPI가 무엇인지 모르고 지내다가 이 프로젝트를 하면서 의미와 사용방법을 몰랐었다. 누구나 사용가능하도록 공개된 API란게 너무 신기했다.
2. 협업에 이득과 어려움을 알게되었다.
아이디어 고민 과 코드 작성에서 막히는 부분에대한 브레인 스토밍 및 설명하며 소통하는 부분에서 정말 나와 다른 시야를 갖고 있는 사람과에 대화에서 이렇게 이점이 많다는걸 깨달았고
내가 하나를 할동안 두개 완성되는 마법이었다. 사실 혼자하는것에 대한 선호도가 더 컸었는데 바뀌게되었다.
다만 피치못할 사정이 생겨버린다면 모든 좋은 요소들이 반전되면서 업무량에 증가와 단편적인 아이디어로 고통받게된다..

## 사용법
0. clone
```
git clone http://github.com/seonghtun/N-T_project.git
```

1. http-server (graph image src를 위해 필요하다)
```
npm install http-server -g 
cd N-T_project/graph
http-server -p 8080 #[원하는 포트]
```

2. json-server (openapi 대용 json-server를 띄웠기 때문에 필요하다)

<br>
<p align="center">
<img src="https://github.com/seonghtun/N-T_project/assets/74886046/4f53e9a1-be74-4997-ab08-3c8f62beb627" />
<br>
<img src= "https://img.shields.io/badge/Javascript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white" />
<img src= "https://img.shields.io/badge/nodedotjs-339933?style=flat-square&logo=nodedotjs&logoColor=white" />
<img src= "https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=CSS3&logoColor=white" />
<br>
<img src= "https://img.shields.io/badge/amazonec2-FF9900?style=flat-square&logo=amazonec2&logoColor=white" />
<img src= "https://img.shields.io/badge/inux-FCC624?style=flat-square&logo=linux&logoColor=white" />
<br>
</p>

## 주제 선정 이유
코로나19 대유행 이후, 법적으로 여행이 제한되었던 사람들이 자유로운 여행이 가능해지면서 여행객 수가 증가하는 요즘 과연 한국 내방 여행객들이 한국을 선택하는 이유를 찾고자 생각하다. 코로나 대유행은 방안에서 해결할수있는 서비스들이 인기를 얻었고 그중 OTT(over-the-top,인터넷을 통해 방송 프로그램·영화·교육 등 각종 미디어 콘텐츠를 제공하는 서비스를 말한다) 이자 OTT 서비스 그자체를 의미했던 NetFlix에 성공과 넷플릭스 한국 콘텐츠에 인기와 사람들에 반응이 떠올라   
한국 콘텐츠의 인기로 인해 대한민국 내방 을 선택하는 여행객들이 늘고있는지에 대한 분석을 하면 좋겠다 생각되어 이 주제를 선택하였다.
### development environment


### 기능 동작
|                홈 화면             |
| :----------------------------------: | 
| <img src="https://github.com/seonghtun/N-T_project/assets/74886046/aa609b19-1883-46e1-b3b3-1374eb2aaa38" />|
|                Netflix contents              |
|:----------------------------------: | 

 | <img src='' width='400px' height='300px'>  |



## 담당 업무
- 넷플릭스 데이터 OPENAPI 사용 가능 여부 확인  -> X
- 넷플릭스 데이터 JsonSERVER 구현 및  OPENAPI 처럼 사용 
- 넷플릭스 조회 페이지 구현
