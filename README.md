# N-T_project
netflix 와 tourist 상관관계 분석 대시보드 제작 프로젝트 

## 팀명: 아직이조 (N&T)

* [팀원] 윤성현, 이다혜

## 주제 선정 이유
코로나19 대유행 이후, 법적으로 여행이 제한되었던 사람들이 자유로운 여행이 가능해지면서 여행객 수가 증가하는 요즘 과연 한국 내방 여행객들이 한국을 선택하는 이유를 찾고자 생각하다. 코로나 대유행은 방안에서 해결할수있는 서비스들이 인기를 얻었고 그중 OTT(over-the-top,인터넷을 통해 방송 프로그램·영화·교육 등 각종 미디어 콘텐츠를 제공하는 서비스를 말한다) 이자 OTT 서비스 그자체를 의미했던 NetFlix에 성공과 넷플릭스 한국 콘텐츠에 인기와 사람들에 반응이 떠올라   
한국 콘텐츠의 인기로 인해 대한민국 내방 을 선택하는 여행객들이 늘고있는지에 대한 분석을 하면 좋겠다 생각되어 이 주제를 선택하였다.



<br>
<p align="center">
<img src="https://github.com/seonghtun/N-T_project/assets/74886046/4f53e9a1-be74-4997-ab08-3c8f62beb627" />

## 사용법
0. git clone 하기
```
git clone http://github.com/seonghtun/N-T_project.git
```
0-1. secret.json 생성하기 (mysql과 mongodb 그리고 json-server host id 등을 다 secret.json에 작성해놓고 코드 상에서 가져다가 썼기 때문에 그대로 사용하려면 만들어야한다)
```
{
    "Mongo_Host": "mongodb://localhost:27017/",
    "Netflix_JSON_Host": "http://localhost:4000",
    "Mysql_Hostname": "localhost",
    "Mysql_Port": "3306",
    "Mysql_Username": [mysql id],
    "Mysql_Password": [mysql passwd],
    "Mysql_DBname": [mysql dbname]
}
```

1. tsv 파일 json 파일로 변환하기 (OPENAPI 대신 json-server를 띄워서 OPENAPI 쓰듯 쓰기위해서 띄운다 OPENAPI 사용법을 익히기 위해서 이렇게한다)
```
cd N-T_project
python -m venv .venv
source .venv/bin/activate
pip install pandas
python tsv_to_json.py
```
-> 햐고나면 netflix.json과 tourist.json 파일이 생성된다.
2. json-server 띄우기
```
npm install json-server -g
json-server --watch netflix.json --port 4000
```
3. http-server 띄우기 (대쉬보드 이기때문에 이것으로 그래프 img를 갖고 올수있도록 만들어놨다 다른 방식으로 가져올수있다면 굳이 안켜도된다)
```
npm install http-server -g
cd N-T_project/graph
http-server -p 8080
```
4. front-server 띄우기 (80 번 포트) package.json 안에 start script 와 depnedency를 작성해놨기때문에 밑에 구문들만 실행하면 의존성 있는 라이브러리들은 다설치 되며 실행된다.
```
cd N-T-project/front
npm install && npm start
```
5. mysql create table (testdb 가아닌 다른 dbname 을 사용하려면 안에 내용을 변경해야된다.)
```
cd N-T_project/server
mysql < netflix_table.sql
```
5-1. backend-server 띄우기 (8000 번 포트)
```
cd N-T_project
source .venv/bin/activate
cd server
pip install -r requirements.txt
python netflix_backend_server.py
```
<br>
<img src= "https://img.shields.io/badge/Javascript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white" />
<img src= "https://img.shields.io/badge/nodedotjs-339933?style=flat-square&logo=nodedotjs&logoColor=white" />
<img src= "https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=CSS3&logoColor=white" />
<br>
<img src= "https://img.shields.io/badge/amazonec2-FF9900?style=flat-square&logo=amazonec2&logoColor=white" />
<img src= "https://img.shields.io/badge/inux-FCC624?style=flat-square&logo=linux&logoColor=white" />
<br>
</p>


### development environment


### 기능 동작
|                홈 화면             | 
| :----------------------------------: | 
| ![image](https://github.com/seonghtun/N-T_project/assets/74886046/fc82b6fa-fd29-4ead-83a4-5014d57dd398) |



https://github.com/seonghtun/N-T_project/assets/74886046/9a1413bc-2d24-43bd-890b-0815bbe133ba



## 느낀점
1. OPENAPI를 알게되었다.
OPENAPI가 무엇인지 모르고 지내다가 이 프로젝트를 하면서 의미와 사용방법을 몰랐었다. 누구나 사용가능하도록 공개된 API란게 너무 신기했다.
2. 협업을 통한 느낀점
   기획에 대한 중요성을 느꼈고, 기능을 위한 개발이 아닌 사용자의 편리성을 위한 개발을 해야된다는 것을 배웠다.
   또한 그동안 백엔드에 집중을 했었는데, 보여지는것에 대한 중요성을 배웠고 프론트엔드 개발 공부를 더 해야되겠다고 느꼈다.
   

## 담당 업무
- 넷플릭스 데이터 OPENAPI 사용 가능 여부 확인  -> X
- 넷플릭스 데이터 JsonSERVER 구현 및  OPENAPI 처럼 사용 
- 넷플릭스 조회 페이지 구현
