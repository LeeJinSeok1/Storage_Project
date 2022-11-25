# 프로젝트 기획안

### 작성일: 2022.11.09
### 작성자: 이진석


#### 프로젝트명: Storage_Project (창고 재고 관리)
- 기획의도

1. 고객사 별 상품 관리를 위해서, 담당 직원이 고객사를 개별적으로 관리하여,

   상품 위치와 재고파악을 편하게 사용할 수 있도록 기획했습니다.


2. 물류회사 재직 경험을 살려서 '나도 만들어 보자' 라는 생각이 들어 기획하게 되었습니다.





       담당자의 정보로 고객사 조회 ㅣ 고객사의 정보로 상품 조회 ㅣ 상품의 로케이션 조회 
       상품 출고, 입고, 수량 관리 

- 벤치마킹

1. 실제 물류회사에서 사용하는 솔루션을 벤치 마킹 하였습니다.
2. 솔루션의 기능들은 누가와서 사용해도 쉽게 사용할 수 있는 점을 참고했습니다.


- 주요 기능

1. 회원가입 
- 정보를 받아서 db에 저장함 
- 이름과 이메일은 unique값을 주고, 회원가입 완료시에 db로 가서 중복체크 후 alert호출
- 가입 후 success창으로 이동 success창에는 login으로가는 링크 있음.
2. 상품등록
- 똑같이 정보를 받아서 db에 저장함
- 상품의 이름에 unique값을 주고 회원의 이름과 폴인키를 맺음
- 상품 이름 입력시 중복값 ajax활용하여 중복된 값이 있다면, alert호출 
3. 상품입고 
- 상품 입고용 table을 설계해서 정보 입력 후 저장
- 동시에 상품 테이블의 상품 갯수 +처리
- 상품 이름 입력시 중복값 ajax활용하여 중복된 값이 없다면, alert호출
4. 상품출고
- 상품 출고용 table도 설계해서 정보 입력 후 저장
- 동시에 상품 테이블의 상품 갯수 -처리
- 상품 이름 입력시 중복값 ajax활용하여 중복된 값이 없다면, alert호출
5. 로그인
- 이메일과 비밀번호를 입력 받아서 db 체크 후 정보가 맞지 않다면 alert호출
- 정보가 맞아서 로그인처리 (sessionScope)
6. 로그아웃
- 로그인 시 헤더에 로그인 버튼이 로그아웃으로 변경처리 
- 버튼 클릭 시 로그아웃 후 로그인 창으로 이동 
7. 회원정보수정 
- 로그인 상태에서만 내정보 버튼 확인 가능 처리 
- 버튼 클릭시 내 정보만 확인 가능함
- 비밀번호 입력창에 비밀번호 입력시 db 체크 후 alert 호출 
- 비밀번호 맞으면 변경할 정보를 받아서 수정처리 
8. 입고기록 조회 
- 상품 입고 작업 시 저장했던 입고 table 호출해서 입고 담당자 수량 시간 확인가능
- 페이징처리 
9. 출고기록 조회
- 상품 출고 작업 시 저장했던 출고 table 호출해서 출고 담당자 수량 시간 확인가능
- 페이징처리
10. 회원정보 조회
- 모든 회원의 정보 호출 
- 페이징처리
- 카테고리 별 검색 기능 
11. 상품 조회
- 모든 상품의 정보 호출
- 페이징처리
- 카테고리 별 검색 기능
12. 회원 삭제 
- session값이 admin일 경우 회원목록 페이지에서 
- 삭제 버튼 클릭 가능 
- 회원 삭제 처리 
13. 게시판 
- 게시판 작성기능 추가
- 페이징처리 
14. 게시판 댓글기능
- 댓글 작성기능 추가 
- 게시판 상세 조회시 댓글 확인 가능
15. 파일 첨부 기능 
- 상품 등록시에 파일첨부기능 추가 
- 재고 조회시 이름 클릭하면 상세페이지에 첨부한 사진 확인가능



