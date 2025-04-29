# AYU Realty 프로젝트 README


## 프로젝트 개요
국토교통 데이터 활용 서비스 개발 프로젝트입니다.

- Backend: Spring Boot
- Frontend: Vite + React
- Database: PostgreSQL
- Docker, Docker Compose을 활용해 개발 / 구도 / 실행 가능


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


### 2. 파일 구성

- Dockerfile (FE, BE)
- docker-compose.yml
- start script (개발 모드용)


## 실행 방법


### ▶ FE, BE 모두 실행

```bash
$ ./restart.sh
```
- 프론트엔드 (Vite Dev Server), 백엔드 (Spring Boot), 데이터베이스 (PostgreSQL) 모두 동시에 실행합니다.
- FE: http://localhost:5173
- BE API: http://localhost:8080


### ▶ FE만 실행행

```bash
$ ./restart.sh -f
```
- Vite Dev Server를 통해 React 프론트를 개발 모드로 실행합니다.
- 접속 경로: http://localhost:5173


### ▶ 블랙업 (Backend) 만 시작

```bash
$ ./restart.sh -b
```
- Spring Boot 서버만 실행합니다.
- 접속 경로: http://localhost:8080
- 실행 시 PostgreSQL(DB)도 함께 시작됩니다.



### 파일 / 구성

| 파일                   | 설명                                     |
|:---------------------|:---------------------------------------|
| `Dockerfile` (FE)    | Vite Dev Server를 컨테이너로 실행하는 프론트 개발용 설정 |
| `Dockerfile` (BE)    | 빌드된 Spring Boot JAR 파일을 실행하는 백엔드 설정    |
| `docker-compose.yml` | 전체 서비스 기본 설정                           |
| `restart.sh`         | 실행 명령어 스크립트                            |


## 참고 사항

- Vite 기본 포트는 5173입니다.
- Spring Boot 기본 포트는 8080입니다.
- PostgreSQL 기본 포트는 5432입니다.
- 프론트엔드 개발 시 API 요청 주소를 http://localhost:8080으로 설정해야 합니다.


---

✨ Tip: Ctrl+C로 서버를 중단할 수 있으며, 컨테이너가 남아있으면 docker ps / docker rm 명령어로 정리해줄 수 있습니다.

