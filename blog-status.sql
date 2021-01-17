-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `textBoard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(100) NOT NULL,
  `body` text NOT NULL,
  `boardId` int(10) NOT NULL,
  `memberId` int(10) NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  `hitCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-19 17:19:16','2021-01-18 00:10:14','Dev_J Blog에 오신것을 환영합니다.📣📣','이 블로그는 개인 블로그이며, \r\n<br>\r\n주로 프로그래밍, IT 관련 내용을 다룰 예정입니다.',1,1,1,1,7),(2,'2020-12-17 18:07:18','2021-01-18 00:10:14','1강. STS 개발툴 간단 소개','# < Spring Tool Suite >\r\n: 스프링 툴 스위트(STS, Spring Tool Suite)란 이클립스 기반 스프링 애플리케이션을 개발 하기 위한 개발 환경(툴)이다.\r\n\r\n### Project\r\n\r\n- 프로그램을 만들기 위한 파일들을 모아놓은 폴더\r\n\r\n### src\r\n\r\n- 패키지들을 모아놓는 폴더\r\n\r\n### package\r\n\r\n- 각각의 기능을 수행하는 클래스들을 모아놓은 폴더\r\n\r\n### class\r\n\r\n- 각각의 기능을 수행하는 소스코드 묶음\r\n\r\n\r\n\r\n# < 기본 단축어 정리 >\r\n\r\n* 새 프로젝트 만들기 단축키: alt+shift+N\r\n* **자동 완성 기능: ctrl+space**\r\n* **저장: ctrl+S**\r\n* **자동 줄맞춤: ctrl+shift+F**\r\n* **블록 주석:  ctrl+shift+/**\r\n* **주석 풀기: ctrl+shift+\\\\**\r\n* **코드 실행: ctrl+F11**\r\n* **import java util: ctrl+shift+O**\r\n* 문장 맨 앞으로: Home\r\n* 문장 맨 뒤로: End\r\n* 빨간줄 발생시 커서 위치시키고 ctrl+1\r\n* **동일 변수명 한번에 바꾸기 단축키: alt+shift+r**\r\n* Home : 줄에서 맨 앞으로 이동\r\n* End : 줄에서 맨 뒤으로 이동\r\n* Ctrl + Home : 맨 위으로 이동\r\n* Ctrl + End : 맨 아래으로 이동\r\n* Ctrl + Z : 이전 히스토리로 한 단계 이동\r\n* Ctrl + Y : 이후 히스토리로 한 단계 이동\r\n\r\n\r\n# < 그 외 소소한 Tip\'s >\r\n- 파일명은 무조건 대문자, 띄어쓰기는 불가, 문자별 첫문자는 대문자\r\n\r\n- 프로그램의 시작 폴더는 \"Main\" 하나 만들고 시작\r\n\r\n- 왼쪽의 녹색 점(Break point)이 생성되면 다시 더블 클릭해서 삭제 가능(참고로 break point를 찍고 디버깅을 실시하면 그 포인트에서 진행이 걸리게(?) 되는데 소스코드의 문제점 등을 파악할 때 유용하다)\r\n\r\n- System.out 은 출력 개념, System.in은 입력 개념\r\n\r\n',2,1,1,0,1),(3,'2020-12-17 18:38:39','2021-01-18 00:10:15','2강. Scanner객체를 통한 입력','내가 원하는 명령어 입력하고 이 명령어를 컴퓨터에게 올바르게 인식시키기 위해 JAVA에선 **Scanner 유틸**을 사용한다.\r\n<br>\r\n\r\n별도의 입력없이\r\n**Scanner scanner = new Scanner(System.in);** 라고 작성하면 **Scanner** 부분에 밑줄이 생긴다.\r\n\r\n이때 **Scanner에 커서를 올려두고 \'ctrl+shift+O\'를 누르면,**\r\n\r\n**상단에 import java.util.Scanner; 라고 자동으로 유틸을 불러올 수 있다.**\r\n\r\n(자바에는 사용하기 편리하게 몇가지 유용한 유틸들이 라이브러리에 이미 저장되어 있다.)\r\n<br>\r\n\r\n이후에 예를 들어\r\n\r\nString command = scanner.nextLine(); 라는 객체를 만들고 실행을 하면\r\n\r\n콘솔창에서 명령어를 입력할 수 있게 된다.\r\n<br>\r\n\r\n또한 Scanner 객체를 생성한 후 하단에는 scanner.close();이라고 작성해 주는 것이 좋다.\r\n\r\n(scanner.close();을 꼭 작성하지 않아도 실행하는 데 문제는 없지만 그래도 클린 코드를 위해 작성하도록 하자)\r\n\r\n* * *\r\n\r\n\r\n**예시**\r\n\r\n``` java\r\nimport java.util.Scanner;  //Scanner 유틸을 불러온 것\r\n\r\npublic class Main {\r\n\r\n	public static void main(String[] args) {\r\n		Scanner scanner = new Scanner(System.in);\r\n		\r\n		String command = scanner.nextLine();\r\n		\r\n		scanner.close();   //마지막에는 scanner를 종료시켜주는 것이 좋다\r\n\r\n	}\r\n\r\n}\r\n```',2,1,0,0,1),(4,'2020-12-20 19:27:12','2021-01-18 00:10:15','3강. println(), printf()를 통한 출력','입력을 했다면 다음은 **출력**이다.\r\n\r\nJAVA에서 출력은 **System.out.println()** 과 **System.out.printf()** 을 활용해 수행할 수 있다.\r\n\r\n이 둘은 비슷하지만 그 사용법과 결과물에서 조금 차이가 있다.\r\n<br>\r\n아래 예시를 통해 그 차이를 살펴보자.\r\n\r\n### 1. System.out.println()\r\n```java\r\n//1.문장 출력\r\nSystem.out.println(\"명령어\");\r\n//출력 결과: 명령어\r\n				\r\n//2.변수 출력\r\nint a = 50;\r\nSystem.out.println(a);\r\n//출력 결과: 50\r\n				\r\n//3.문장 + 변수 출력\r\nSystem.out.println(\"a = \" + a + \"이다.\");\r\n//출력 결과: a = 50이다.\r\n\r\n//4.연속으로 사용하면 아래방향으로 출력이 진행된다.\r\nSystem.out.println(\"명령어1\");\r\nSystem.out.println(\"명령어2\");\r\nSystem.out.println(\"명령어3\");\r\n/*출력 결과: 명령어1\r\n            명령어2\r\n            명령어3    */\r\n```\r\n<br><br>\r\n\r\n### 2. System.out.printf()\r\n```java\r\n//1.문장 출력\r\nSystem.out.printf(\"명령어\");\r\n//출력 결과: 명령어\r\n				\r\n//2.변수 출력\r\nint a = 50;\r\nSystem.out.printf(\"%d\",a);\r\n//출력 결과: 50\r\n\r\n/*\r\n여기서 println()과 다른점은 위와 같이 변수만 입력해서는 출력이 진행되지 않는다는 점이다. \"%d\"와 같이 각 변수 타입에 맞는 명령어를 입력해주어야 그 자리에 원하는 변수 값을 치환시켜 출력할 수 있다.\r\n\r\n-변수 타입과 치환명령어 (예시)\r\n\r\nint => %d\r\nfloat => %f\r\nString => %s\r\n...\r\n이 외에도 다양한 치환명령어가 존재한다.\r\n*/\r\n\r\n				\r\n//3.문장 + 변수 출력\r\nSystem.out.printf(\"a = \" + a + \"이다.\");\r\n//출력 결과: a = 50이다.\r\n\r\n//4.연속으로 사용하면 println()와 다르게 가로방향으로 출력이 진행된다.\r\nSystem.out.printf(\"명령어1\");\r\nSystem.out.printf(\"명령어2\");\r\nSystem.out.printf(\"명령어3\");\r\n//출력 결과: 명령어1명령어2명령어3\r\n\r\n/*\r\n만약 printf()로 println()와 같이 아래방향으로 출력을 진행시키고 싶다면 명령어 뒤에 \"\\n\"을 입력해주면 된다.\r\n\r\nSystem.out.printf(\"명령어1\\n\");\r\nSystem.out.printf(\"명령어2\\n\");\r\nSystem.out.printf(\"명령어3\\n\");\r\n/*출력 결과: 명령어1\r\n            명령어2\r\n            명령어3    */\r\n\r\n*/\r\n```',2,1,0,0,1),(5,'2020-12-20 19:39:22','2021-01-18 00:10:15','4강. 기본 자료형(데이터 타입)','JAVA에서의 기본 자료형(데이터 타입) 정리한 표이다.\r\nJAVA에서 변수는 매우 중요한 역할을 하므로 이 표를 통해 각 변수의 특징에 대해 알아두는 것이 좋다. \r\n<br>\r\n\r\n#### <기본 자료형>\r\n\r\n<table style=\"border-collapse: collapse; width: 100%; height: 586px;\" border=\"1\" data-ke-style=\"style8\"><tbody><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>유형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>종류</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>표현 가능 범위</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>메모리 크기</b></span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 300px;\" rowspan=\"4\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>정수형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">byte</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-128 ~ 127</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">short</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-32,768 ~ 32,767</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">2 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">Int</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-2,147,483,648 ~ 2,147,483,647</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4 byte</span></p></td></tr><tr style=\"height: 93px;\"><td style=\"text-align: center; height: 93px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">long</span></p></td><td style=\"text-align: center; height: 93px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">- 9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807</span></p></td><td style=\"text-align: center; height: 93px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">8 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 79px;\" rowspan=\"2\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>실수형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">float</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1.4E-45 ~ 3.4028235E38</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4 byte</span></p></td></tr><tr style=\"height: 10px;\"><td style=\"text-align: center; height: 10px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">double<br>(float보다 2배 크기)</span></p></td><td style=\"text-align: center; height: 10px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4.9E-324 ~ 1.7976931348623157E308</span></p></td><td style=\"text-align: center; height: 10px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">8 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>문자형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">char</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">모든 유니코드 문자</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">2 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>논리형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">boolean</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">true, false</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1 byte</span></p></td></tr></tbody></table>',2,1,0,0,1),(6,'2020-12-22 18:27:10','2021-01-18 00:10:16','YouTube 영상 테스트입니다.','\r\n# 영상 테스트\r\n\r\n```youtube\r\nIUI2O8g2Rs4\r\n```\r\n\r\n출처:몰입코딩',1,1,0,0,3),(7,'2020-12-22 19:09:39','2021-01-18 00:10:16','5강. 비교연산자','JAVA에서 두 수의 크기를 비교하고 싶을 때에는 **비교연산자**를 사용할 수 있다.\r\n\r\n비교연산자의 종류는 다음과 같다.\r\n```\r\n ==,  <,  <=,  >,  >=,  !=\r\n```\r\n\r\n\r\n\r\n\r\n수학에서 쓰이는 기호와 같다고 생각하면 된다.\r\n<br>\r\n\r\n단, 사용시 주의할 점은 \" = \" 기호를 쓸 때 일반 수학에서는 하나만 입력해도 되지만 JAVA에서는 \" == \" 처럼 2개를 입력해야 한다.\r\n\r\n또한 \" >= \", \" <= \" 기호를 입력할 때에는 반드시 \" > \", \" < \" 기호가 \" = \" 기호 앞에 위치해야 한다는 점을 명심하자.\r\n<br>\r\n\r\n### 예시\r\n\r\n```java\r\nint a = 20;\r\nint b = 20;   \r\n\r\n// a와 b가 같은지 비교하는 연산자\r\n    System.out.println(a == b);    \r\n    // 결과: true\r\n		    \r\n// a가 b보다 작은지 비교하는 연산자\r\n    System.out.println(a < b);\r\n    // 결과: false\r\n		    \r\n// a가 b보다 작거나 같은지 비교하는 연산자\r\n    System.out.println(a <= b);\r\n    // 결과: true\r\n		    \r\n// a가 b보다 큰지 비교하는 연산자\r\n    System.out.println(a > b);      \r\n    // 결과: false\r\n\r\n// a가 b보다 크거나 같은지 비교하는 연산자\r\n    System.out.println(a >= b);     \r\n    // 결과: true\r\n		    \r\n// a와 b가 다른지 비교하는 연산자\r\n    System.out.println(a != b);   \r\n    // 결과: false \r\n```',2,1,1,0,0),(8,'2020-12-28 18:14:33','2021-01-18 00:10:16','6강. 논리연산자','# 논리연산자\r\n\r\n## &&\r\n\'**AND 연산자**\', \'**그리고 연산자**\', true && true라면 true값을, true && false 라면 false의 결과를 나타낸다.\r\n<br>\r\n## ||\r\n\'**OR 연산자**\', \'**또는 연산자**\', true || true라면 true값을, true || false 라면 true의 결과를 나타낸다.\r\n<br>\r\n## 예시)\r\n```java\r\nint a = 15;\r\nint b = 16;\r\n\r\n		\r\n/* && : AND 연산자 */\r\n\r\nif(a == 15 && b == 16) {\r\n	System.out.println(true);\r\n}\r\n//해석: a는 15이고 b도 16이면 true를 출력\r\n//출력 결과: true\r\n\r\n\r\n		\r\n/* || : OR 연산자 */\r\n\r\nif(a == 15 || b == 30) {\r\n	System.out.println(true);\r\n}\r\n//해석: a가 15이거나 b가 30이면 true를 출력\r\n//출력 결과: true\r\n```',2,1,0,0,0),(9,'2020-12-28 18:15:22','2021-01-18 00:10:16','7강. 삼항연산자','# 삼항연산자\r\n\r\n## 개념\r\n\r\n간단한 조건을 확인할 수 있는 연산자로 \'**조건연산자**\'라고도 한다.\r\n<br>\r\n원하는 조건에 부합하는 결과를 얻고 싶을때 대표적으로 if()함수를 사용하지만, **간단한 조건을 확인할 때에는 삼항연산자도 자주 사용**된다.\r\n<br>\r\n삼항연산자의 문법은 다음과 같다.\r\n\r\n```\r\n조건 ? 참일 경우 실행할 내용 : 거짓일 경우 실행할 내용;\r\n```\r\n<br>\r\n예시를 통해 사용법을 알아보자\r\n<br>\r\n## 예시\r\n```java\r\nint a = 10;\r\nint b = 16;\r\n		\r\nSystem.out.println(a > b ? true : false);\r\n/*해석: \r\n	조건: a > b\r\n	조건에 부합한다면(맞다면): true\r\n	조건에 부합하지 않다면(틀리면): false\r\n*/\r\n//출력 결과: false\r\n		\r\n		\r\nint c = 30;\r\nint d = 40;\r\n		\r\nSystem.out.println(c >= d ? c : d);\r\n/*해석: \r\n	조건: c >= d\r\n	조건에 부합한다면(맞다면): c\r\n	조건에 부합하지 않다면(틀리면): d\r\n*/\r\n//출력 결과: 40\r\n```',2,1,0,0,0),(10,'2020-12-28 18:15:22','2021-01-18 00:10:17','8강. 변수','# 변수\r\n\r\n## 변수의 기본 속성\r\n\r\n- **변수에는 오직 한개의 값만 선언될 수 있다.**\r\n- **변수는 자신이 선언된(속한) 공간을 벗어날 수 없다.**\r\n\r\n```\r\n    예를 들어, 반복문 안에 변수를 선언하면 반복이 계속될 동안 변수는 그 영역 안에서 계속 변경될 수 있지만, 외부 영역(여기에서는 반복문 외부를 뜻함)에는 영향을 미치지 못한다. 하지만, 변수를 반복문 영역 밖으로 빼내고 반복문보다 위쪽에 위치시키면, 그 변수의 값은 반복문의 영향을 받지 않는다.\r\n```\r\n<br>\r\n## 변수의 종류\r\n\r\n - 변수의 종류는 **\'변수가 선언된 위치\'** 에 의해 결정된다.\r\n - 종류로는 **인스턴스 변수**, **클래스변수**, **지역변수**가 있다.\r\n\r\n![image](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdScUgz%2FbtqLFSwo2qn%2FokVUtvk47Ds2KjtKE1OSTk%2Fimg.jpg)\r\n(출처: itmining.tistory.com/20)\r\n\r\n```\r\n※ 변수의 유지 조건 ※\r\n- 객체(인스턴스)가 살아있는 동안 유지 = 인스턴스 변수\r\n- 함수(매서드)가 실행되는 동안만 유지 = 지역변수\r\n```\r\n\r\n<br>\r\n## 변수별 특징\r\n\r\n1. **인스턴스 변수**\r\n   - 인스턴스가 생성될 때 생성됨\r\n   - 인스턴스마다 **고유의 값**을 가질 수 있음\r\n   <br>\r\n2. **클래스 변수**\r\n   - 인스턴스 변수에 **static**을 붙여준 것\r\n   - 인스턴스 변수는 각각의 고유한 값을 가지지만 클래스 변수는 모든 인스턴스가 **공통된 값을 공유**하게 됨\r\n   - 클래스가 로딩 시 생성되고 종료 시 까지 유지되는 변수에는 public을 붙여주어야 함\r\n   - public이 붙은 변수는 전역 변수라 하며, 동일 프로그램 내에서 어디서든 접근이 가능함\r\n   - 인스턴스 전근법과 다르게 인스턴스를 생성하지 않고 \"클래스이름.클래스변수명\"으로도 접근이 가능함\r\n     <br>\r\n3. **지역 변수**\r\n   - **메서드 내**에서 선언됨\r\n   - **메서드 내에서만** 사용이 가능한 변수\r\n   - 메서드 실행 시 메모리가 할당되며(생성되며) **메서드 종료 시 기능을 상실**\r\n   <br>\r\n4. **레퍼런스 변수**\r\n   - **하나의 객체가 여러 기능을 원격으로 조종**할 수 있는 **리모컨 기능**을 갖고 있는 객체가 되는 것을 레퍼런스 변수라 함\r\n```\r\n참조(reference)는 심볼릭 링크(symbolic link) 혹은 바로가기(윈도우)를 만드는 것과 비슷하다.\r\n원본 파일에 대해서 심볼릭 링크를 만들면 원본이 수정되면 심볼릭 링크에도 그 내용이 실시간으로 반영되는 것과 같은 효과다.\r\n심볼릭 링크를 통해서 만든 파일은 원본 파일에 대한 주소 값이 담겨 있다.\r\n누군가 심볼릭 링크에 접근하면 컴퓨터는 심볼릭 링크에 저장된 원본의 주소를 참조해서 원본의 위치를 알아내고 원본에 대한 작업을 하게 된다.\r\n\r\n다시 말해서 원본을 복제한 것이 아니라 원본 파일을 참조(reference)하고 있는 것 이다. 덕분에 저장 장치의 용량을 절약할 수 있고, 원본 파일을 사용하고 있는 모든 복제본이 동일한 내용을 유지할 수 있게 된다. 참조는 전자화된 세계의 극치라고 할 수 있다.\r\n\r\n(출처: opentutorials.org/module/2495/14152)\r\n```\r\n\r\n',2,1,1,1,3),(11,'2021-01-06 21:48:37','2021-01-18 00:10:17','1강. HTML & CSS & JS의 개념 및 역할','하나의 웹페이지는 **HTML,** **CSS,** **JS**로 구성되어 있다.  **HTML,** **CSS,** **JS**는 각각 자신들만의 역할을 담당하고 있는데, 그 역할들을 잘 조합하면 하나의 웹페이지를 만들어 낼 수 있다. \r\n\r\n 이러한 **HTML,** **CSS,** **JS**을 다루는 것을 **\'웹코딩\'** 이라 한다. \r\n \r\n 지금부터 각각의 기본적인 개념과 역할들을 알아보자.\r\n<br>\r\n\r\n# < HTML >\r\n####  주요 역할 : 문서 내용 담당[배우]\r\n<br>\r\n- 웹페이지를 만들기 위한 언어로 웹브라우저 위에서 동작하는 언어다.\r\n- html안에는 이미  **기본 태그**와  **속성**들이 저장되어 있다.\r\n- CSS는 이 속성들을 창조하는 것이 아닌 변화시켜주는 리모컨 역할을 한다.\r\n```\r\n< HTML의 의미 >\r\n\r\nHT - HyperText, 문서와 문서가 링크로 연결되어 있다.\r\n\r\nM - Markup, 태그로 이루어져 있다.\r\n\r\nL - Language\r\n```\r\n\r\n\r\n\r\n# < CSS >\r\n\r\n####  주요 역할 : 문서 꾸밈 담당[스타일리스트]\r\n<br>\r\n- CSS는 HTML을 아름답게 꾸며주는 **디자이너의 언어**다.\r\n- 잘 설계된 CSS는 **재활용이 가능**하며 **테마, 템플릿**의 형태로 **확장**할 수 있다. \r\n- 또한 자바스크립트와 연계해 콘텐츠의 내용이나 디자인을 **동적**으로 처리할 경우에도 유용하게 사용된다.\r\n```\r\n< CSS의 의미 >\r\n\r\nC - Cascading, \'폭포처럼 떨어져 내리는\'이라는 사전적 의미로 상위 요소에서 정의한 속성이 하위 요소로 전달된다는 의미에서 유래했다.\r\n\r\nSS - StyleSheet, 스타일을 다루는 정체성을 보여준다.\r\n```\r\n\r\n# < JS; JavaScript >\r\n\r\n####  주요 역할: 감독[감독]\r\n<br>\r\n- JavaScript는 **객체(object)** 기반의 스크립트 언어다.\r\n- **HTML로는 웹의 내용을 작성**하고, **CSS로는 웹을 디자인**하고, **JavaScript로는 웹의 동작을 구현**할 수 있다.\r\n- JavaScript는 **동적**이며, 타입을 명시할 필요가 없는 **인터프리터 언어**다.\r\n- 따라서, 컴파일 작업이 필요하지 않고, 소스코드를 바로 실행한다.\r\n```\r\n< Java와 JavaScript >\r\n\r\nJava와 JavaScript는 그 이름만 놓고 보면 서로 관련이 있는 언어로 생각되기 쉽다.\r\n\r\n하지만 두 언어는 서로 직접적인 관련은 없으며, 비슷한 점보다는 다른 점이 훨씬 많다.\r\n\r\n문법상 비슷한 부분은 두 언어의 문법이 모두 C언어를 기반으로 만들어졌기 때문이다.\r\n\r\n(출처: http://www.tcpschool.com/javascript/js_intro_basic)\r\n\r\n```',3,1,1,0,2),(12,'2021-01-08 18:08:22','2021-01-18 00:10:17','2강. HTML 태그, 엘리먼트 개념 및 관계성(feat.부모,자식,형제)','# HTML의 구성 개념\r\n\r\n```\r\n\r\n태그1---▶     <엘리먼트1(여는 태그)>  내용1  </엘리먼트1(닫는 태그)>     ◀---태그2\r\n태그3---▶     <엘리먼트2(여는 태그)>  내용2  </엘리먼트2(닫는 태그)>     ◀---태그4\r\n\r\n```\r\n\r\n\r\n- <  >각각을 **\'태그\'** 라 한다.\r\n- 서로 짝이되는(여는 태그+닫는 태그)태그를 **1개의 엘리먼트**라고 한다.\r\n- 즉, 위 내용에서 태그는 총 4개이고, 엘리먼트는 총 2개이다.\r\n- HTML에서 태그는 여러 종류가 존재하는데 이는 다음에 자세히 살펴보도록 하자.\r\n\r\n# 엘리먼트간의 관계성(feat. 부모, 자식, 형제)\r\n```html\r\n\r\n<div1>                   \r\n    <section>           \r\n        <nav></nav>    \r\n    </section>\r\n</div1>\r\n\r\n<div2></div2>   \r\n\r\n```\r\n\r\n - 각각의 엘리먼트간에는 **관계성**이 존재한다.\r\n - 위 내용에서 div1 엘리먼트의 여는태그(\\<div1>)와 닫는태그(\\</div1>) 사이에 section과 nav 엘리먼트가 위치하고 있는 것을 볼 수 있다.\r\n - 마찬가지로 section엘리먼트의 여는태그(\\<section>)와 닫는태그(\\</section>) 사이에는 nav 엘리먼트가 있는 것을 볼 수 있다.\r\n - 이 관계를 해석하면 아래와 같다.\r\n```html\r\n\r\n<div1>                           <!--section의 부모--><!--nav의 조상-->\r\n    <section>                    <!--div의 자식-->\r\n        <nav></nav>              <!--div의 후손--> <!--section의 자식-->\r\n    </section>\r\n</div1>\r\n\r\n\r\n- div1엘리먼트에 속한 자식은 section엘리먼트\r\n\r\n- section엘리먼트에 속한 자식은 nav엘리먼트\r\n\r\n- div1엘리먼트의 후손은 nav엘리먼트\r\n\r\n- nav엘리먼트의 조상은 div1엘리먼트\r\n\r\n```\r\n- 엘리먼트간의 관계성에서 **자식과 후손**은 각각의 **부모 또는 조상**으로부터 **영향을 받는다.**\r\n- **즉, 부모 또는 조상의 속성을 변경하면 자식과 후손도 속성이 변한다는 의미이다.**\r\n- 이를 적절히 활용하면 스타일을 적용할 때 모든 엘리먼트를 일일이 선택할 필요없이 부모나 조상의 스타일만 바꿔도 이에 속한 자식과 후손들의 스타일을 한번에 바꿀 수 있다.(다만, 속성에 따라 적용이 되지 않는 것도 있으니 유의하도록 하자.)\r\n<br>\r\n- 다음으로 div2 엘리먼트는 div1에 속해있지 않고 다른 위치에 있는 것을 확인할 수 있다.\r\n- 이러한 관계는 **형제관계**라 한다.\r\n\r\n```html\r\n\r\n<div1>                           <!--section의 부모--><!--nav의 조상-->\r\n    <section>                    <!--div의 자식-->\r\n        <nav></nav>              <!--div의 후손--> <!--section의 자식-->\r\n    </section>\r\n</div1>\r\n\r\n\r\n<div2></div2>                   <!--형제관계(동등)-->\r\n\r\n- div1 엘리먼트와 div2 엘리먼트는 형제관계\r\n```\r\n- 즉, div1 엘리먼트와 div2 엘리먼트는 **서로 영향을 받지 않는 동등한 관계**라는 것을 의미한다.\r\n- 웹코딩을 할 때 선택한 엘리먼트 외 다른 엘리먼트에는 영향을 끼치고 싶지 않다면 이와 같은 형제관계를 적절히 사용하도록 하자.',3,1,0,0,0),(13,'2021-01-09 13:08:43','2021-01-18 00:10:18','Codepen 적용 테스트입니다.','# Type 1 = html\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/JjRyxQY?height=265&theme-id=light&default-tab=html,result\r\n```\r\n\r\n# Type 2 = html, css\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/BaLdbyr?height=265&theme-id=light&default-tab=css,result\r\n```\r\n\r\n# Type 3 = html, css, editable\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/BaLdbyr?height=265&theme-id=light&default-tab=css,result&editable=true\r\n```\r\n\r\n# Type 4 = html, css, dark, editable\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/BaLdbyr?height=265&theme-id=dark&default-tab=css,result&editable=true\r\n```\r\n\r\n# Type 5 = html, css, js, dark, editable\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/oNzeVjY?height=265&theme-id=dark&default-tab=js,result&editable=true\r\n```\r\n\r\n# Type 6 = js, console, dark, editable\r\n```codepen\r\nhttps://codepen.io/jangka44/embed/wvzqZqB?height=300&theme-id=light&default-tab=js,result&editable=true\r\n```\r\n\r\n# 테스트\r\n```codepen\r\nhttps://codepen.io/cjy324/embed/preview/poEZLJM?height=265&theme-id=light&default-tab=html,css,result&editable=true\r\n```',1,1,0,0,6),(14,'2021-01-17 23:22:09','2021-01-18 00:10:18','1강. DB, SQL 그리고 MySQL 소개','# 데이터베이스(DB; Database)\r\nMySQL을 학습하기전에 데이터베이스에 대한 간략한 개념정리를 먼저 해보자.\r\n\r\n* 데이터베이스란, **통합하여 관리되고 있는 데이터들의 집합**이다.\r\n* 즉, **정보 저장소**라고 생각하면 될 것이다.\r\n* 데이터베이스는 별도의 미들웨어에 의해 관리되는데 이러한 미들웨어를 **DBMS(Database Management System) 즉, \'데이터베이스 관리시스템\'** 이라 한다.\r\n(*MySql은 현재 가장 많이 사용되고 있는 관계형 데이터베이스 관리 시스템(RDBMS: Relational DBMS)이다, 자세한 내용은 아래 참고)\r\n* 또한, 데이터베이스에서 데이터를 정의, 조작 등을 수행하는 언어가 존재하는데 이를 \'SQL\'이라 한다.\r\n\r\n# SQL(Structured Query Language)\r\n\r\n* SQL은 데이터베이스에서 데이터를 **정의, 조작, 제어**하기 위해 사용하는 언어이다.\r\n* SQL 구문에는 목적에 따라 크게 3가지(DDL, DML, DCL)로 분류할 수 있는데 이부분에 대해선 아래 표를 통해 간략히 이해정도만 하고 넘어가도록 하자\r\n\r\n\r\n| 속성 |설명  |주요 명령어  |\r\n| --- | --- | --- |\r\n|DDL  | 데이터베이스나 테이블 등을 생성, 삭제하거나 그 구조를 변경하기 위한 명령어 |CREATE, ALTER, DROP  |\r\n| DML | 데이터베이스에 저장된 데이터를 처리하거나 조회, 검색하기 위한 명령어 | INSERT, UPDATE, DELETE, SELECT 등|\r\n|  DCL| 데이터베이스에 저장된 데이터를 관리하기 위하여 데이터의 보안성 및 무결성 등을 제어하기 위한 명령어 |GRANT, REVOKE 등  |\r\n\r\n\r\n# MySQL\r\n지금부터는 **MySQL**에 대해 본격적으로 살펴보도록 하자\r\n\r\n\r\n\r\n## MySQL의 개념\r\n* MySQL은 현재 가장 많이 사용되고 있는 ***관계형 데이터베이스 관리 시스템(RDBMS: Relational DBMS)** 이다. \r\n\r\n```\r\n*RDBMS란?\r\n - 현재 가장 많이 사용되고 있는 데이터베이스의 한 종류\r\n - 데이터의 종속성을 관계(relationship)로 표현\r\n```\r\n* MySQL은 **오픈 소스**이며, 다중 사용자와 다중 스레드를 지원한다.\r\n* 또한, C언어, C++, JAVA, PHP 등 **여러 프로그래밍 언어를 위한 다양한 API를 제공**하고 있다.\r\n* MySQL은 유닉스, 리눅스, 윈도우 등 **다양한 운영체제에서 사용**할 수 있으며, 특히 **PHP와 함께 웹 개발에 자주 사용**된다.\r\n* MySQL은 오픈 소스 라이센스를 따르기는 하지만, 상업적으로 사용할 때는 상업용 라이센스를 구입해야만 한다.\r\n\r\n## MySQL의 장점\r\n1. 오픈 소스이므로 **무료**로 사용할 수 있다.\r\n\r\n2. **다양한 운영체제**와 **프로그래밍 언어**에서 사용할 수 있다.\r\n\r\n3. 크기가 큰 데이터 집합도 **빠르고 효과적으로 처리**할 수 있다.\r\n\r\n4. **표준 SQL 형식**을 사용한다.\r\n\r\n5. MySQL 응용 프로그램을 사용자의 용도에 맞게 수정할 수 있다.\r\n\r\n\r\n## MySQL 개념도\r\n\r\n```\r\nDatabase > Table > Column, row, Data\r\n\r\n- Database\r\n:Table들의 집합\r\n\r\n- Table\r\n: Column + Row들의 집합\r\n\r\n- Column\r\n: 각각의 data 값에 대한 열\r\n\r\n- Low\r\n: 각각의 data 값에 대한 행\r\n\r\n즉, Database는 = 폴더, 저장소\r\nTable = 각각의 data들이 Column과 Low로 정렬된 표\r\n\r\n그리고\r\n\r\nDB들 + 관리프로그램이 \'MySQL\'이다.\r\n```\r\n\r\n## MySQL client 그리고 server\r\nMySQL에는 **Client, Server**라는 개념이 존재한다.\r\n\r\n* Client\r\n: 데이터를 수정하거나 반환하기 위해 서버에 접속하는 프로그램\r\n* Server\r\n: 주요 데이터베이스를 다루는 프로그램\r\n\r\n정리하자면, MySQL client는 MySQL sever에게 요청을 하는 **\"고객\"** 개념으로 이해하면 되고, MySQL sever는 고객의 요청을 받고 이를 DB에서 직접적으로 수행하는 **\"종업원\"** 정도로 이해하면 된다.\r\n\r\n즉, MySQL client는 MySQL sever를 관리하기 위해 사용하는 것(cmd)',4,1,0,0,0),(15,'2021-01-18 00:02:43','2021-01-18 00:10:19','2강. 기초 SQL문법 정리','# 기초적인 SQL 문법 정리\r\nMySQL은 **SQL 문법**을 통해 DB내 데이터를 **정의, 조작, 제어**한다. 따라서 당연하게도 **SQL 문법을 알아야만 MySQL을 다룰 수 있다.**\r\n<br>\r\n아래 표는 기초적인 SQL문법들을 정리한 표이다. 표 내용을 통해 기초적인 SQL문법들에 대해 학습하도록 하자\r\n\r\n\r\n| 종류 | DB(데이터베이스) | TABLE(테이블) | ROW(로우/행 데이터) |\r\n| --- | --- | --- | --- |\r\n| 조회 | SHOW DATABASES;<br>(모든 DB조회) |SHOW TABLES; (DB내 모든 Table조회)<br> DESC 테이블명; (Table의 구조 조회) | SELECT * FROM 테이블명<br>(Table 내 모든 컬럼(*) 조회) |\r\n| 생성 | CREATE DATABASE 이름;<br>(DB생성) | CREATE TABLE 이름 (<br> id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, <br>regDate DATETIME NOT NULL, <br>title VARCHAR(100) NOT NULL<br>);<br>(해당 칼럼들을 가진 Table 생성) | INSERT INTO 테이블명 <br>SET regDate = NOW(), <br>title = \'제목1\';<br>(해당 테이블 각 해당 칼럼에 Data 삽입) |\r\n| 수정 | 없음 |ALTER TABLE 테이블명 ADD COLUMN 칼럼명 INT(10);<br>(테이블에 새로운 칼럼 추가)<br>(그 외, ADD 위치에 MODIFY, CHANGE, DROP 등을 입력해 컬럼 조작 가능)  | UPDATE 테이블명<br>SET title = \'인기글\'<br>WHERE id = 3;<br>(id가 3인 row의 title을 \'인기\'로 수정) |\r\n| 삭제 | DROP DATABASE 이름;<br>(DB삭제)| DROP TABLE 이름;<br>(Table 삭제) | DELETE FROM 테이블명<br>WHERE id = 3;<br>(id가 3인 row 삭제); |',4,1,0,0,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL,
  `code` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'공지사항','notice'),(2,'JAVA','java'),(3,'HTML & CSS & JS','html'),(4,'MySQL','mysql');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=1189 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (306,'2021-01-06 22:42:42','2021-01-06 22:42:42','/article_detail_4.html',1),(307,'2021-01-06 22:42:42','2021-01-06 22:42:42','/article_detail_5.html',1),(334,'2021-01-06 22:51:39','2021-01-06 22:51:39','/?dummy=asdkjasl;dkjas;ldkas;dlk',1),(337,'2021-01-06 22:51:39','2021-01-06 22:51:39','/article_detail_2.html',1),(338,'2021-01-06 22:51:39','2021-01-06 22:51:39','/article_detail_3.html',1),(595,'2021-01-10 22:22:55','2021-01-10 22:22:55','/article_detail_6.html',3),(596,'2021-01-10 22:22:55','2021-01-10 22:22:55','/article_detail_11.html',2),(688,'2021-01-11 22:19:06','2021-01-11 22:19:06','/article_detail_10.html',3),(1179,'2021-01-18 00:10:21','2021-01-18 00:10:21','/',42),(1180,'2021-01-18 00:10:21','2021-01-18 00:10:21','/notice-list-1.html',13),(1181,'2021-01-18 00:10:21','2021-01-18 00:10:21','/index.html',10),(1182,'2021-01-18 00:10:21','2021-01-18 00:10:21','/search.html',10),(1183,'2021-01-18 00:10:21','2021-01-18 00:10:21','/statistics.html',10),(1184,'2021-01-18 00:10:21','2021-01-18 00:10:21','/java-list-1.html',8),(1185,'2021-01-18 00:10:21','2021-01-18 00:10:21','/about.html',7),(1186,'2021-01-18 00:10:21','2021-01-18 00:10:21','/article_detail_1.html',7),(1187,'2021-01-18 00:10:21','2021-01-18 00:10:21','/html-list-1.html',7),(1188,'2021-01-18 00:10:21','2021-01-18 00:10:21','/article_detail_13.html',6);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loginId` char(100) NOT NULL,
  `loginPw` char(100) NOT NULL,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','admin1!','Dev_J');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommand`
--

DROP TABLE IF EXISTS `recommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `recommandArticleId` int(10) NOT NULL,
  `recommandMemberId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommand`
--

LOCK TABLES `recommand` WRITE;
/*!40000 ALTER TABLE `recommand` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `replyBody` text DEFAULT NULL,
  `replyArticleId` int(10) NOT NULL,
  `replyMemberId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relTypeCode` (`relTypeCode`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-14 18:07:40','2021-01-14 18:07:40','article',2,'JAVA'),(2,'2021-01-14 18:07:40','2021-01-14 18:07:40','article',2,'STS'),(4,'2021-01-14 18:09:45','2021-01-14 18:09:45','article',3,'JAVA'),(5,'2021-01-14 18:09:45','2021-01-14 18:09:45','article',3,'Scanner'),(7,'2021-01-14 18:10:52','2021-01-14 18:10:52','article',4,'JAVA'),(8,'2021-01-14 18:10:52','2021-01-14 18:10:52','article',4,'println'),(9,'2021-01-14 18:10:52','2021-01-14 18:10:52','article',4,'printf'),(10,'2021-01-14 18:11:42','2021-01-14 18:11:42','article',5,'JAVA'),(11,'2021-01-14 18:11:42','2021-01-14 18:11:42','article',5,'자료형'),(12,'2021-01-14 18:11:42','2021-01-14 18:11:42','article',5,'데이터타입'),(13,'2021-01-14 18:12:10','2021-01-14 18:12:10','article',7,'JAVA'),(14,'2021-01-14 18:12:10','2021-01-14 18:12:10','article',7,'연산자'),(15,'2021-01-14 18:12:10','2021-01-14 18:12:10','article',7,'비교연산자'),(16,'2021-01-14 18:12:23','2021-01-14 18:12:23','article',8,'JAVA'),(17,'2021-01-14 18:12:23','2021-01-14 18:12:23','article',8,'연산자'),(18,'2021-01-14 18:12:23','2021-01-14 18:12:23','article',8,'논리연산자'),(19,'2021-01-14 18:12:30','2021-01-14 18:12:30','article',9,'JAVA'),(20,'2021-01-14 18:12:30','2021-01-14 18:12:30','article',9,'연산자'),(21,'2021-01-14 18:12:30','2021-01-14 18:12:30','article',9,'삼항연산자'),(22,'2021-01-14 18:12:58','2021-01-14 18:12:58','article',10,'JAVA'),(23,'2021-01-14 18:12:58','2021-01-14 18:12:58','article',10,'변수'),(25,'2021-01-14 18:13:32','2021-01-14 18:13:32','article',11,'HTML'),(26,'2021-01-14 18:13:32','2021-01-14 18:13:32','article',11,'CSS'),(27,'2021-01-14 18:13:32','2021-01-14 18:13:32','article',11,'JS'),(28,'2021-01-14 18:13:57','2021-01-14 18:13:57','article',12,'HTML'),(29,'2021-01-14 18:13:57','2021-01-14 18:13:57','article',12,'태그'),(30,'2021-01-14 18:13:57','2021-01-14 18:13:57','article',12,'엘리먼트'),(31,'2021-01-18 00:09:41','2021-01-18 00:09:41','article',14,'SQL'),(32,'2021-01-18 00:09:41','2021-01-18 00:09:41','article',14,'DB'),(33,'2021-01-18 00:09:41','2021-01-18 00:09:41','article',14,'MySQL'),(34,'2021-01-18 00:10:04','2021-01-18 00:10:04','article',15,'SQL'),(35,'2021-01-18 00:10:04','2021-01-18 00:10:04','article',15,'MySQL');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view`
--

DROP TABLE IF EXISTS `view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view` (
  `viewCount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `viewArticleId` int(10) NOT NULL,
  PRIMARY KEY (`viewCount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view`
--

LOCK TABLES `view` WRITE;
/*!40000 ALTER TABLE `view` DISABLE KEYS */;
/*!40000 ALTER TABLE `view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-18  0:11:35
