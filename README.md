# AYU Realty 프로젝트 README


## 프로젝트 개요
국토교통 데이터 활용 서비스 개발 프로젝트입니다.

- Backend: Spring Boot
- Frontend: Vite + React
- Database: PostgreSQL
- Docker, Docker Compose을 활용해 개발 / 구도 / 실행 가능

## 커밋 컨벤션

| 커밋 유형 | 의미 |
| --- | --- |
| `Feat` | 새로운 기능 추가 |
| `Fix` | 버그 수정 |
| `Docs` | 문서 수정 |
| `Style` | 코드 formatting, 세미콜론 누락, 코드 자체의 변경이 없는 경우 |
| `Refactor` | 코드 리팩토링 |
| `Test` | 테스트 코드, 리팩토링 테스트 코드 추가 |
| `Chore` | 패키지 매니저 수정, 그 외 기타 수정 ex) .gitignore |
| `Design` | CSS 등 사용자 UI 디자인 변경 |
| `Comment` | 필요한 주석 추가 및 변경 |
| `Rename` | 파일 또는 폴더 명을 수정하거나 옮기는 작업만인 경우 |
| `Remove` | 파일을 삭제하는 작업만 수행한 경우 |
| `!BREAKING CHANGE` | 커다란 API 변경의 경우 |
| `!HOTFIX` | 급하게 치명적인 버그를 고쳐야 하는 경우 |


## 가져와서 처음 세팅할 때 필요한 행동

### 1. 조건
- Docker, Docker Compose 설치되어 있어야 합니다.
- `.env` 파일을 구축해야 합니다.

### .env 템플릿:

```bash
DB_USERNAME=your_username
DB_PASSWORD=your_password

REDIS_PASSWORD=your_redis_password

JWT_SECRET_KEY=your_jwt_secret
JWT_ACCESS_EXPIRATION=3600000   # 1시간 (단위: 밀리초)
JWT_REFRESH_EXPIRATION=604800000  # 7일 (단위: 밀리초)
```

### 1.2 BE Build
- BE 디렉터리 위치에서 빌드 명령어를 실행해줍니다.

```bash
./gradlew clean build -x test
```

### 2. 파일 구성

- Dockerfile
- docker-compose.yml
- start script (개발 모드용)


## 실행 방법
```bash
$ ./restart.sh
```
- Spring Boot 서버를 실행합니다.
- 접속 경로: http://localhost:8080
- 실행 시 PostgreSQL(DB)도 함께 시작됩니다.



### 파일 / 구성

| 파일                   | 설명                                     |
|:---------------------|:---------------------------------------|
| `Dockerfile` (FE)    | Vite Dev Server를 컨테이너로 실행하는 프론트 개발용 설정 |
| `docker-compose.yml` | db, server port 연결                           |
| `restart.sh`         | 실행 명령어 스크립트                            |


## 참고 사항

- Vite 기본 포트는 5173입니다.
- Spring Boot 기본 포트는 8080입니다.
- PostgreSQL 기본 포트는 5432입니다.
- 프론트엔드 개발 시 API 요청 주소를 http://localhost:8080으로 설정해야 합니다.


---

✨ Tip: Ctrl+C로 서버를 중단할 수 있으며, 컨테이너가 남아있으면 docker ps / docker rm 명령어로 정리해줄 수 있습니다.

