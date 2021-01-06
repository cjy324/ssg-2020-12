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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-19 17:19:16','2021-01-06 22:05:11','Dev_J Blog에 오신것을 환영합니다.📣📣','이 블로그는 개인 블로그이며, \r\n<br>\r\n주로 프로그래밍, IT 관련 내용을 다룰 예정입니다.',1,1,1,1,1),(2,'2020-12-17 18:07:18','2021-01-06 22:05:12','1강. STS 개발툴 간단 소개','# < Spring Tool Suite >\r\n: 스프링 툴 스위트(STS, Spring Tool Suite)란 이클립스 기반 스프링 애플리케이션을 개발 하기 위한 개발 환경(툴)이다.\r\n\r\n### Project\r\n\r\n- 프로그램을 만들기 위한 파일들을 모아놓은 폴더\r\n\r\n### src\r\n\r\n- 패키지들을 모아놓는 폴더\r\n\r\n### package\r\n\r\n- 각각의 기능을 수행하는 클래스들을 모아놓은 폴더\r\n\r\n### class\r\n\r\n- 각각의 기능을 수행하는 소스코드 묶음\r\n\r\n\r\n\r\n# < 기본 단축어 정리 >\r\n\r\n* 새 프로젝트 만들기 단축키: alt+shift+N\r\n* **자동 완성 기능: ctrl+space**\r\n* **저장: ctrl+S**\r\n* **자동 줄맞춤: ctrl+shift+F**\r\n* **블록 주석:  ctrl+shift+/**\r\n* **주석 풀기: ctrl+shift+\\\\**\r\n* **코드 실행: ctrl+F11**\r\n* **import java util: ctrl+shift+O**\r\n* 문장 맨 앞으로: Home\r\n* 문장 맨 뒤로: End\r\n* 빨간줄 발생시 커서 위치시키고 ctrl+1\r\n* **동일 변수명 한번에 바꾸기 단축키: alt+shift+r**\r\n* Home : 줄에서 맨 앞으로 이동\r\n* End : 줄에서 맨 뒤으로 이동\r\n* Ctrl + Home : 맨 위으로 이동\r\n* Ctrl + End : 맨 아래으로 이동\r\n* Ctrl + Z : 이전 히스토리로 한 단계 이동\r\n* Ctrl + Y : 이후 히스토리로 한 단계 이동\r\n\r\n\r\n# < 그 외 소소한 Tip\'s >\r\n- 파일명은 무조건 대문자, 띄어쓰기는 불가, 문자별 첫문자는 대문자\r\n\r\n- 프로그램의 시작 폴더는 \"Main\" 하나 만들고 시작\r\n\r\n- 왼쪽의 녹색 점(Break point)이 생성되면 다시 더블 클릭해서 삭제 가능(참고로 break point를 찍고 디버깅을 실시하면 그 포인트에서 진행이 걸리게(?) 되는데 소스코드의 문제점 등을 파악할 때 유용하다)\r\n\r\n- System.out 은 출력 개념, System.in은 입력 개념\r\n\r\n',2,1,1,0,1),(3,'2020-12-17 18:38:39','2021-01-06 22:05:12','2강. Scanner객체를 통한 입력','내가 원하는 명령어 입력하고 이 명령어를 컴퓨터에게 올바르게 인식시키기 위해 JAVA에선 **Scanner 유틸**을 사용한다.\r\n<br>\r\n\r\n별도의 입력없이\r\n**Scanner scanner = new Scanner(System.in);** 라고 작성하면 **Scanner** 부분에 밑줄이 생긴다.\r\n\r\n이때 **Scanner에 커서를 올려두고 \'ctrl+shift+O\'를 누르면,**\r\n\r\n**상단에 import java.util.Scanner; 라고 자동으로 유틸을 불러올 수 있다.**\r\n\r\n(자바에는 사용하기 편리하게 몇가지 유용한 유틸들이 라이브러리에 이미 저장되어 있다.)\r\n<br>\r\n\r\n이후에 예를 들어\r\n\r\nString command = scanner.nextLine(); 라는 객체를 만들고 실행을 하면\r\n\r\n콘솔창에서 명령어를 입력할 수 있게 된다.\r\n<br>\r\n\r\n또한 Scanner 객체를 생성한 후 하단에는 scanner.close();이라고 작성해 주는 것이 좋다.\r\n\r\n(scanner.close();을 꼭 작성하지 않아도 실행하는 데 문제는 없지만 그래도 클린 코드를 위해 작성하도록 하자)\r\n\r\n* * *\r\n\r\n\r\n**예시**\r\n\r\n``` java\r\nimport java.util.Scanner;  //Scanner 유틸을 불러온 것\r\n\r\npublic class Main {\r\n\r\n	public static void main(String[] args) {\r\n		Scanner scanner = new Scanner(System.in);\r\n		\r\n		String command = scanner.nextLine();\r\n		\r\n		scanner.close();   //마지막에는 scanner를 종료시켜주는 것이 좋다\r\n\r\n	}\r\n\r\n}\r\n```',2,1,0,0,1),(4,'2020-12-20 19:27:12','2021-01-06 22:05:12','3강. println(), printf()를 통한 출력','입력을 했다면 다음은 **출력**이다.\r\n\r\nJAVA에서 출력은 **System.out.println()** 과 **System.out.printf()** 을 활용해 수행할 수 있다.\r\n\r\n이 둘은 비슷하지만 그 사용법과 결과물에서 조금 차이가 있다.\r\n<br>\r\n아래 예시를 통해 그 차이를 살펴보자.\r\n\r\n### 1. System.out.println()\r\n```java\r\n//1.문장 출력\r\nSystem.out.println(\"명령어\");\r\n//출력 결과: 명령어\r\n				\r\n//2.변수 출력\r\nint a = 50;\r\nSystem.out.println(a);\r\n//출력 결과: 50\r\n				\r\n//3.문장 + 변수 출력\r\nSystem.out.println(\"a = \" + a + \"이다.\");\r\n//출력 결과: a = 50이다.\r\n\r\n//4.연속으로 사용하면 아래방향으로 출력이 진행된다.\r\nSystem.out.println(\"명령어1\");\r\nSystem.out.println(\"명령어2\");\r\nSystem.out.println(\"명령어3\");\r\n/*출력 결과: 명령어1\r\n            명령어2\r\n            명령어3    */\r\n```\r\n<br><br>\r\n\r\n### 2. System.out.printf()\r\n```java\r\n//1.문장 출력\r\nSystem.out.printf(\"명령어\");\r\n//출력 결과: 명령어\r\n				\r\n//2.변수 출력\r\nint a = 50;\r\nSystem.out.printf(\"%d\",a);\r\n//출력 결과: 50\r\n\r\n/*\r\n여기서 println()과 다른점은 위와 같이 변수만 입력해서는 출력이 진행되지 않는다는 점이다. \"%d\"와 같이 각 변수 타입에 맞는 명령어를 입력해주어야 그 자리에 원하는 변수 값을 치환시켜 출력할 수 있다.\r\n\r\n-변수 타입과 치환명령어 (예시)\r\n\r\nint => %d\r\nfloat => %f\r\nString => %s\r\n...\r\n이 외에도 다양한 치환명령어가 존재한다.\r\n*/\r\n\r\n				\r\n//3.문장 + 변수 출력\r\nSystem.out.printf(\"a = \" + a + \"이다.\");\r\n//출력 결과: a = 50이다.\r\n\r\n//4.연속으로 사용하면 println()와 다르게 가로방향으로 출력이 진행된다.\r\nSystem.out.printf(\"명령어1\");\r\nSystem.out.printf(\"명령어2\");\r\nSystem.out.printf(\"명령어3\");\r\n//출력 결과: 명령어1명령어2명령어3\r\n\r\n/*\r\n만약 printf()로 println()와 같이 아래방향으로 출력을 진행시키고 싶다면 명령어 뒤에 \"\\n\"을 입력해주면 된다.\r\n\r\nSystem.out.printf(\"명령어1\\n\");\r\nSystem.out.printf(\"명령어2\\n\");\r\nSystem.out.printf(\"명령어3\\n\");\r\n/*출력 결과: 명령어1\r\n            명령어2\r\n            명령어3    */\r\n\r\n*/\r\n```',2,1,0,0,1),(5,'2020-12-20 19:39:22','2021-01-06 22:05:12','4강. 기본 자료형(데이터 타입)','JAVA에서의 기본 자료형(데이터 타입) 정리한 표이다.\r\nJAVA에서 변수는 매우 중요한 역할을 하므로 이 표를 통해 각 변수의 특징에 대해 알아두는 것이 좋다. \r\n<br>\r\n\r\n#### <기본 자료형>\r\n\r\n<table style=\"border-collapse: collapse; width: 100%; height: 586px;\" border=\"1\" data-ke-style=\"style8\"><tbody><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>유형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>종류</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>표현 가능 범위</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>메모리 크기</b></span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 300px;\" rowspan=\"4\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>정수형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">byte</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-128 ~ 127</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">short</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-32,768 ~ 32,767</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">2 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">Int</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">-2,147,483,648 ~ 2,147,483,647</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4 byte</span></p></td></tr><tr style=\"height: 93px;\"><td style=\"text-align: center; height: 93px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">long</span></p></td><td style=\"text-align: center; height: 93px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">- 9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807</span></p></td><td style=\"text-align: center; height: 93px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">8 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 79px;\" rowspan=\"2\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>실수형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">float</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1.4E-45 ~ 3.4028235E38</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4 byte</span></p></td></tr><tr style=\"height: 10px;\"><td style=\"text-align: center; height: 10px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">double<br>(float보다 2배 크기)</span></p></td><td style=\"text-align: center; height: 10px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">4.9E-324 ~ 1.7976931348623157E308</span></p></td><td style=\"text-align: center; height: 10px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">8 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>문자형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">char</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">모든 유니코드 문자</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">2 byte</span></p></td></tr><tr style=\"height: 69px;\"><td style=\"text-align: center; height: 69px;\" width=\"85\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\"><b>논리형</b></span></p></td><td style=\"text-align: center; height: 69px;\" width=\"142\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">boolean</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"274\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">true, false</span></p></td><td style=\"text-align: center; height: 69px;\" width=\"101\"><p><span style=\"font-family: \'Noto Sans Demilight\', \'Noto Sans KR\';\">1 byte</span></p></td></tr></tbody></table>',2,1,0,0,1),(6,'2020-12-22 18:27:10','2021-01-06 22:05:13','YouTube 영상 테스트입니다.','\r\n# 영상 테스트\r\n\r\n```youtube\r\nIUI2O8g2Rs4\r\n```\r\n\r\n출처:몰입코딩',1,1,0,0,1),(7,'2020-12-22 19:09:39','2021-01-06 22:05:13','5강. 비교연산자','JAVA에서 두 수의 크기를 비교하고 싶을 때에는 **비교연산자**를 사용할 수 있다.\r\n\r\n비교연산자의 종류는 다음과 같다.\r\n\r\n\r\n\"==\",  \"<\",  \"<=\",  \">\",  \">=\",  \"!=\"\r\n\r\n\r\n수학에서 쓰이는 기호와 같다고 생각하면 된다.\r\n<br>\r\n\r\n단, 사용시 주의할 점은 \" = \" 기호를 쓸 때 일반 수학에서는 하나만 입력해도 되지만 JAVA에서는 \" == \" 처럼 2개를 입력해야 한다.\r\n\r\n또한 \" >= \", \" <= \" 기호를 입력할 때에는 반드시 \" > \", \" < \" 기호가 \" = \" 기호 앞에 위치해야 한다는 점을 명심하자.\r\n<br>\r\n\r\n### 예시\r\n\r\n```java\r\nint a = 20;\r\nint b = 20;   \r\n\r\n// a와 b가 같은지 비교하는 연산자\r\n    System.out.println(a == b);    \r\n    // 결과: true\r\n		    \r\n// a가 b보다 작은지 비교하는 연산자\r\n    System.out.println(a < b);\r\n    // 결과: false\r\n		    \r\n// a가 b보다 작거나 같은지 비교하는 연산자\r\n    System.out.println(a <= b);\r\n    // 결과: true\r\n		    \r\n// a가 b보다 큰지 비교하는 연산자\r\n    System.out.println(a > b);      \r\n    // 결과: false\r\n\r\n// a가 b보다 크거나 같은지 비교하는 연산자\r\n    System.out.println(a >= b);     \r\n    // 결과: true\r\n		    \r\n// a와 b가 다른지 비교하는 연산자\r\n    System.out.println(a != b);   \r\n    // 결과: false \r\n```',2,1,1,0,0),(8,'2020-12-28 18:14:33','2021-01-06 22:05:13','6강. 논리연산자','# 논리연산자\r\n\r\n## &&\r\n\'**AND 연산자**\', \'**그리고 연산자**\', true && true라면 true값을, true && false 라면 false의 결과를 나타낸다.\r\n<br>\r\n## ||\r\n\'**OR 연산자**\', \'**또는 연산자**\', true || true라면 true값을, true || false 라면 true의 결과를 나타낸다.\r\n<br>\r\n## 예시)\r\n```java\r\nint a = 15;\r\nint b = 16;\r\n\r\n		\r\n/* &amp;&amp; : AND 연산자 */\r\n\r\nif(a == 15 &amp;&amp; b == 16) {\r\n	System.out.println(true);\r\n}\r\n//해석: a는 15이고 b도 16이면 true를 출력\r\n//출력 결과: true\r\n\r\n\r\n		\r\n/* || : OR 연산자 */\r\n\r\nif(a == 15 || b == 30) {\r\n	System.out.println(true);\r\n}\r\n//해석: a가 15이거나 b가 30이면 true를 출력\r\n//출력 결과: true\r\n```',2,1,0,0,0),(9,'2020-12-28 18:15:22','2021-01-06 22:05:14','7강. 삼항연산자','# 삼항연산자\r\n\r\n## 개념\r\n\r\n간단한 조건을 확인할 수 있는 연산자로 \'**조건연산자**\'라고도 한다.\r\n<br>\r\n원하는 조건에 부합하는 결과를 얻고 싶을때 대표적으로 if()함수를 사용하지만, **간단한 조건을 확인할 때에는 삼항연산자도 자주 사용**된다.\r\n<br>\r\n삼항연산자의 문법은 다음과 같다.\r\n\r\n```\r\n조건 ? 참일 경우 실행할 내용 : 거짓일 경우 실행할 내용;\r\n```\r\n<br>\r\n예시를 통해 사용법을 알아보자\r\n<br>\r\n## 예시\r\n```java\r\nint a = 10;\r\nint b = 16;\r\n		\r\nSystem.out.println(a > b ? true : false);\r\n/*해석: \r\n	조건: a > b\r\n	조건에 부합한다면(맞다면): true\r\n	조건에 부합하지 않다면(틀리면): false\r\n*/\r\n//출력 결과: false\r\n		\r\n		\r\nint c = 30;\r\nint d = 40;\r\n		\r\nSystem.out.println(c >= d ? c : d);\r\n/*해석: \r\n	조건: c >= d\r\n	조건에 부합한다면(맞다면): c\r\n	조건에 부합하지 않다면(틀리면): d\r\n*/\r\n//출력 결과: 40\r\n```',2,1,0,0,0),(10,'2020-12-28 18:15:22','2021-01-06 22:05:14','8강. 변수','# 변수\r\n\r\n## 변수의 기본 속성\r\n\r\n- **변수에는 오직 한개의 값만 선언될 수 있다.**\r\n- **변수는 자신이 선언된(속한) 공간을 벗어날 수 없다.**\r\n\r\n```\r\n    예를 들어, 반복문 안에 변수를 선언하면 반복이 계속될 동안 변수는 그 영역 안에서 계속 변경될 수 있지만, 외부 영역(여기에서는 반복문 외부를 뜻함)에는 영향을 미치지 못한다. 하지만, 변수를 반복문 영역 밖으로 빼내고 반복문보다 위쪽에 위치시키면, 그 변수의 값은 반복문의 영향을 받지 않는다.\r\n```\r\n<br>\r\n## 변수의 종류\r\n\r\n - 변수의 종류는 **\'변수가 선언된 위치\'** 에 의해 결정된다.\r\n - 종류로는 **인스턴스 변수**, **클래스변수**, **지역변수**가 있다.\r\n\r\n![image](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdScUgz%2FbtqLFSwo2qn%2FokVUtvk47Ds2KjtKE1OSTk%2Fimg.jpg)\r\n(출처: itmining.tistory.com/20)\r\n\r\n```\r\n※ 변수의 유지 조건 ※\r\n- 객체(인스턴스)가 살아있는 동안 유지 = 인스턴스 변수\r\n- 함수(매서드)가 실행되는 동안만 유지 = 지역변수\r\n```\r\n\r\n<br>\r\n## 변수별 특징\r\n\r\n1. **인스턴스 변수**\r\n   - 인스턴스가 생성될 때 생성됨\r\n   - 인스턴스마다 **고유의 값**을 가질 수 있음\r\n   <br>\r\n2. **클래스 변수**\r\n   - 인스턴스 변수에 **static**을 붙여준 것\r\n   - 인스턴스 변수는 각각의 고유한 값을 가지지만 클래스 변수는 모든 인스턴스가 **공통된 값을 공유**하게 됨\r\n   - 클래스가 로딩 시 생성되고 종료 시 까지 유지되는 변수에는 public을 붙여주어야 함\r\n   - public이 붙은 변수는 전역 변수라 하며, 동일 프로그램 내에서 어디서든 접근이 가능함\r\n   - 인스턴스 전근법과 다르게 인스턴스를 생성하지 않고 \"클래스이름.클래스변수명\"으로도 접근이 가능함\r\n     <br>\r\n3. **지역 변수**\r\n   - **메서드 내**에서 선언됨\r\n   - **메서드 내에서만** 사용이 가능한 변수\r\n   - 메서드 실행 시 메모리가 할당되며(생성되며) **메서드 종료 시 기능을 상실**\r\n   <br>\r\n4. **레퍼런스 변수**\r\n   - **하나의 객체가 여러 기능을 원격으로 조종**할 수 있는 **리모컨 기능**을 갖고 있는 객체가 되는 것을 레퍼런스 변수라 함\r\n```\r\n참조(reference)는 심볼릭 링크(symbolic link) 혹은 바로가기(윈도우)를 만드는 것과 비슷하다.\r\n원본 파일에 대해서 심볼릭 링크를 만들면 원본이 수정되면 심볼릭 링크에도 그 내용이 실시간으로 반영되는 것과 같은 효과다.\r\n심볼릭 링크를 통해서 만든 파일은 원본 파일에 대한 주소 값이 담겨 있다.\r\n누군가 심볼릭 링크에 접근하면 컴퓨터는 심볼릭 링크에 저장된 원본의 주소를 참조해서 원본의 위치를 알아내고 원본에 대한 작업을 하게 된다.\r\n\r\n다시 말해서 원본을 복제한 것이 아니라 원본 파일을 참조(reference)하고 있는 것 이다. 덕분에 저장 장치의 용량을 절약할 수 있고, 원본 파일을 사용하고 있는 모든 복제본이 동일한 내용을 유지할 수 있게 된다. 참조는 전자화된 세계의 극치라고 할 수 있다.\r\n\r\n(출처: opentutorials.org/module/2495/14152)\r\n```\r\n\r\n',2,1,1,1,1),(11,'2021-01-06 21:48:37','2021-01-06 22:05:14','1강. HTML & CSS & JS의 개념 및 역할','하나의 웹페이지는 **HTML,** **CSS,** **JS**로 구성되어 있다.  **HTML,** **CSS,** **JS**는 각각 자신들만의 역할을 담당하고 있는데, 그 역할들을 잘 조합하면 하나의 웹페이지를 만들어 낼 수 있다. \r\n\r\n 이러한 **HTML,** **CSS,** **JS**을 다루는 것을 **\'웹코딩\'** 이라 한다. \r\n \r\n 지금부터 각각의 기본적인 개념과 역할들을 알아보자.\r\n<br>\r\n\r\n# < HTML >\r\n####  주요 역할 : 문서 내용 담당[배우]\r\n<br>\r\n- 웹페이지를 만들기 위한 언어로 웹브라우저 위에서 동작하는 언어다.\r\n- html안에는 이미  **기본 태그**와  **속성**들이 저장되어 있다.\r\n- CSS는 이 속성들을 창조하는 것이 아닌 변화시켜주는 리모컨 역할을 한다.\r\n```\r\n-HTML의 의미-\r\n\r\nHT - HyperText, 문서와 문서가 링크로 연결되어 있다.\r\n\r\nM - Markup, 태그로 이루어져 있다.\r\n\r\nL - Language\r\n```\r\n\r\n\r\n\r\n# < CSS >\r\n\r\n####  주요 역할 : 문서 꾸밈 담당[스타일리스트]\r\n<br>\r\n- CSS는 HTML을 아름답게 꾸며주는 **디자이너의 언어**다.\r\n- 잘 설계된 CSS는 **재활용이 가능**하며 **테마, 템플릿**의 형태로 **확장**할 수 있다. \r\n- 또한 자바스크립트와 연계해 콘텐츠의 내용이나 디자인을 **동적**으로 처리할 경우에도 유용하게 사용된다.\r\n```\r\n-CSS의 의미-\r\n\r\nC - Cascading, \'폭포처럼 떨어져 내리는\'이라는 사전적 의미로 상위 요소에서 정의한 속성이 하위 요소로 전달된다는 의미에서 유래했다.\r\n\r\nSS - StyleSheet, 스타일을 다루는 정체성을 보여준다.\r\n```\r\n\r\n# < JS; JavaScript >\r\n\r\n####  주요 역할: 감독[감독]\r\n<br>\r\n- JavaScript는 **객체(object)** 기반의 스크립트 언어다.\r\n- **HTML로는 웹의 내용을 작성**하고, **CSS로는 웹을 디자인**하고, **JavaScript로는 웹의 동작을 구현**할 수 있다.\r\n- JavaScript는 **동적**이며, 타입을 명시할 필요가 없는 **인터프리터 언어**다.\r\n- 따라서, 컴파일 작업이 필요하지 않고, 소스코드를 바로 실행한다.\r\n```\r\n-Java와 JavaScript-\r\n\r\nJava와 JavaScript는 그 이름만 놓고 보면 서로 관련이 있는 언어로 생각되기 쉽다.\r\n\r\n하지만 두 언어는 서로 직접적인 관련은 없으며, 비슷한 점보다는 다른 점이 훨씬 많다.\r\n\r\n문법상 비슷한 부분은 두 언어의 문법이 모두 C언어를 기반으로 만들어졌기 때문이다.\r\n\r\n(출처: http://www.tcpschool.com/javascript/js_intro_basic)\r\n\r\n```',3,1,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'공지사항','notice'),(2,'JAVA','java'),(3,'HTML & CSS & JS','html');
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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (8,'2021-01-04 09:08:41','2021-01-04 09:08:41','/java-list-1.html',1),(269,'2021-01-06 22:05:18','2021-01-06 22:05:18','/',7),(270,'2021-01-06 22:05:18','2021-01-06 22:05:18','/notice-list-1.html',5),(271,'2021-01-06 22:05:18','2021-01-06 22:05:18','/index.html',2),(272,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_1.html',1),(273,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_10.html',1),(274,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_2.html',1),(275,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_3.html',1),(276,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_4.html',1),(277,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_5.html',1),(278,'2021-01-06 22:05:18','2021-01-06 22:05:18','/article_detail_6.html',1);
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

-- Dump completed on 2021-01-06 22:06:16
