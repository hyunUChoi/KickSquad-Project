# 🚓 KickSquad

## 📌 서비스 소개
### ✏ 서비스명 
### YOLOv5를 활용한 실시간 전동킥보드 운전자 모니터링 및 주차 인식 서비스
<br>

## 📌 주요 기능
* 이용자의 주행 영상을 실시간으로 분석하여 헬멧 착용 및 승차 인원 준수를 감지할 수 있도록 구현하였습니다.
* 주행 종료 후 주차 사진을 등록하면 정상적으로 주차가 완료되었는지 실시간으로 감지할 수 있도록 구현하였습니다.
* 자신의 운행 결과를 이용자가 보기 쉽도록 차트를 활용하여 구현하였습니다. 
* 안전운행을 한 이용자에게 세이프 드라이빙 포인트를 지급하고 이를 시각화할 수 있도록 구현하였습니다.
* 기존 공유 모빌리티 플랫폼의 인 앱 컨셉을 통해 이용자에게 익숙할 수 있도록 디자인하였습니다.
<br>

## 📌 담당 역할
![Langauge:Java](https://img.shields.io/badge/Langauge-Java-green) ![Langauge:Python](https://img.shields.io/badge/Langauge-Python-orange) ![DB:MySQL](https://img.shields.io/badge/DB-MySQL-yellow) ![Famework:Spring](https://img.shields.io/badge/Famework-Spring-red) ![Server:Flask](https://img.shields.io/badge/Server-Flask/Tomcat-blue) ![Platform:Pycharm](https://img.shields.io/badge/Platform-Pycharm-skyblue) ![YOLO:v5](https://img.shields.io/badge/YOLO-v5-purple)
* MySQL을 활용한 테이블 구조 설계
* SQL Query문을 통한 데이터 입출력 구현
* Python - MySQL 간 DB 연동 및 데이터 관리
* Spring Framework를 활용한 웹 구현 및 서비스 흐름 설계
* YOLOv5를 통한 실시간 전동 킥보드 인식 모델링 구현
<br><br>

## 📌 트러블슈팅
* 데이터베이스 설계<br>
	- 이전까지는 전부 Oracle을 활용해서만 DB 설계/구현을 해보고 처음으로 MySQL을 활용하여 테이블을 설계해 보았기 때문에 DB 종류 간 제약조건 부여 방법과 자료형이 상이하였다.
	- 또한, 처음으로 정형화된 자료가 아닌 Deep Learning을 통한 실시간 영상과 이미지 데이터를 DB에 삽입할 수 있는 클래스를 만들어야했기 때문에 설계 시 많은 시간이 소요되었다.
	- 이 문제를 해결하기 위해 MySQL 자료형과 제약조건에 대해 학습을 하였고, 삽입되는 데이터의 형태를 알기 위해 간략한 모델을 만들고 Python과 DB를 연동하여 형태를 확인 후 늦더라도 초반부터 구조를 탄탄하게 설계하고자 하였다.
<br>
 
* 모델 객체 인식률 <br>
    - 공유 전동킥보드 감지 모델링을 위해 Crawling을 통하여 확보된 이미지를 기반으로 학습시켰다. 하지만 mAP는 30%에도 미치지 못하는 수준이였고 이를 보안하기 위해 데이터 추가 수집, 전처리를 통한 데이터 증강을 실시하였다.
    - 그럼에도 불구하고 성능이 개선되지 못하여 근본적인 원인을 탐색한 결과 데이터 라벨링 시 킥보드 이외의 다른 사물들이 같이 라벨링이 되고 있음을 알아냈다.
    - 이 문제를 해결하기 위해 흰 바탕에 순수한 전동킥보드만 있는 이미지를 10,000장 이상 수집하여 모델 기본 학습자료로 사용하고 추가적으로 실제 환경과 유사한 이미지 학습을 통해 mAP를 70% 이상까지 높일 수 있었다.

<details>
<summary><h2>🧾More Details</h2></summary>

## 📌 프로젝트 기간
2022.07.28 ~ 2022.08.22
<br><br>

## 📌 SW유스케이스
![스크린샷(27)](https://user-images.githubusercontent.com/103619605/182365968-09e3e196-5797-4fec-9eab-765e8925c9b8.png)
<br><br>
	
## 📌 ER다이어그램
![image](https://user-images.githubusercontent.com/103619605/182579207-e5070ca5-2cde-43d1-94f7-5414a2d56a9f.png)
<br><br>

## 📌 화면 구성

### 회원가입 / 메인화면 / 사용자 튜토리얼 화면
![image](https://user-images.githubusercontent.com/103620466/182588812-326be119-90cb-4264-b3f1-bb7eb059888f.png)
<br><br>

### 매장 보기 화면 (전체 매장 / 카테고리 선택 / 매장명 검색)
![image](https://user-images.githubusercontent.com/103620466/182589092-43fdf433-026b-47da-9d48-a5c5105ecdf3.png)
<br><br>

### 커뮤니티 게시판 화면 / 리뷰 등록 / 리뷰 수정
![image](https://user-images.githubusercontent.com/103620466/182589351-00081d31-ca43-4193-9fb2-23fa1b506990.png)
<br><br>

### 등급 시각화 / 리워드 화면 / 신규 매장등록 화면
![image](https://user-images.githubusercontent.com/103620466/182589764-d97e7c59-957b-47aa-a884-1e62ba9cd57d.png)
<br><br>
</details>
