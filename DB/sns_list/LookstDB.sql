/* SNS 메인 페이지 쿼리
select a.member_id 
	 , a.member_nick
	 , b.profile_img
	 , c.post_content
	 , c.post_date
	 , d.post_img_img
	 , e.sns_heart_bool
	 , f.tag_content
	 , g.sns_comment_con
	 , g.sns_comment_date
	 , h.post_tag_con
	 , i.PRODUCT_PRICE
	 , i.product_name
	 , j.prdt_img_name

from member as a
join profile as b 
on a.member_id = b.member_id
join post as c 
on a.member_id = c.member_id 
join post_img as d
on c.post_no = d.post_no 
join sns_heart as e 
on a.member_id = e.member_id
join tag as f 
on c.post_no = f.post_no 
join sns_comment as g 
on a.member_id = g.member_id 
join post_tag as h 
on c.post_no = h.post_no
join product as i 
on h.product_no = i.product_no 
join prdt_img as j 
on i.product_no = j.product_no
;
where a.member_id = 'ezen1@naver.com'
order by c.post_date desc
;
select * from post p ;
select * from tag t ;
select * from post p ;
select * from profile p ;
select * from post_img pi2 ;
*/

/*멤버*/
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen1@naver.com', '0111', 'nick1', '이름1', 01011112222, '서울 강남구', '역삼동', '12345', '2022-11-01', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen2@naver.com', '0112', 'nick2', '이름2', 01044442222, '서울 송파구', '잠실동', '23569', '2022-11-02', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen3@naver.com', '0113', 'nick3', '이름3', 01044443333, '서울 송파구', '송파동', '14598', '2022-11-03', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen4@naver.com', '0114', 'nick4', '이름4', 01044442222, '서울 강서구', '화곡동', '75321', '2022-10-01', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen5@naver.com', '0115', 'nick5', '이름5', 01088882222, '서울 금천구', '시흥2동', '13568', '2022-10-25', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen6@naver.com', '0116', 'nick6', '이름6', 01059992222, '서울 영등포구', '여의도동', '45721', '2022-11-14', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen7@naver.com', '0117', 'nick7', '이름7', 01044442222, '서울 영등포구', '당산1동', '85210', '2022-10-03', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen8@naver.com', '0118', 'nick8', '이름8', 01033332222, '서울 동작구', '노량진동', '15984', '2022-11-10', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen9@naver.com', '0119', 'nick9', '이름9', 01044441111, '서울 동작구', '신대방동', '43222', '2022-09-25', '2022-11-01', true, 'N');
INSERT INTO public."member"
(member_id, member_pw, member_nick, member_name, member_phon, member_addr, member_addr2, member_zip, member_since, member_updt, member_check, member_type)
VALUES('ezen10@naver.com', '0110', 'nick10', '이름10', 01044442222, '서울 관악구', '신림동', '66210', '2022-10-23', '2022-11-01', true, 'N');

select * from "member" m;

DELETE FROM public."member";


/*판매자*/
INSERT INTO public.seller
(seller_name, seller_type, seller_addr, seller_addr2, seller_zip, seller_number, member_id)
VALUES('이젠샵', 'Y', '서울 금천구', 'OO동', '43344', 1, 'ezen1@naver.com');
INSERT INTO public.seller
(seller_name, seller_type, seller_addr, seller_addr2, seller_zip, seller_number, member_id)
VALUES('애플', 'Y', '경기도 광명시', 'OO동', '23253', 2, 'ezen3@naver.com');
INSERT INTO public.seller
(seller_name, seller_type, seller_addr, seller_addr2, seller_zip, seller_number, member_id)
VALUES('삼성', 'Y', '전남 목포시', 'OO동', '34534', 3, 'ezen4@naver.com');
INSERT INTO public.seller
(seller_name, seller_type, seller_addr, seller_addr2, seller_zip, seller_number, member_id)
VALUES('토이샵', 'Y', '서울 이젠시', 'OO동', '57452', 4, 'ezen5@naver.com');
INSERT INTO public.seller
(seller_name, seller_type, seller_addr, seller_addr2, seller_zip, seller_number, member_id)
VALUES('강아지샵', 'Y', '경기도 동탄시', 'OO동', '24633', 5, 'ezen10@naver.com');

select * from seller s ;

/*추가 정보*/
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen1@naver.com', 'M', '2022-11-02', '신한', 11047, '김현민');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen2@naver.com', 'F', '2022-11-03', '기업', 116043, '이병헌');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen3@naver.com', 'F', '2022-11-05', '농협', 110843, '송승호');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen4@naver.com', 'M', '2022-11-01', '카뱅', 1104563, '다나카');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen5@naver.com', 'M', '2022-11-06', '카뱅', 1104386, '이두희');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen6@naver.com', 'F', '2022-12-01', '광주', 1104365, '안중근');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen7@naver.com', 'M', '2022-11-01', '전북', 1104344, '신사임당');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen8@naver.com', 'M', '2022-01-01', '신한', 1104376, '세종대왕');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen9@naver.com', 'F', '2002-11-01', '우리', 1104343, '루피');
INSERT INTO public.mem_info
(member_id, mem_info_gender, mem_info_birth, mem_info_bank, mem_info_account, mem_info_reci)
VALUES('ezen10@naver.com', 'M', '2012-03-01', '국민', 1104376, '포차코');

select * from mem_info mi ;

/*프로필 사진*/
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen1@naver.com', 'default.jpg'::character varying, 'rtrt', 'N', '2022-11-01', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen2@naver.com', '2344234.jpg'::character varying, 'rtrt', 'N', '2022-11-03', '');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen3@naver.com', 'hi.jpg'::character varying, 'rtrt', 'N', '2022-11-06', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen4@naver.com', 'default.jpg'::character varying, 'rtrt', 'N', '2022-12-02', '안녕하세요 hi');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen5@naver.com', 'werwe.jpg'::character varying, 'rtrt', 'N', '2022-12-02', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen6@naver.com', 'default.jpg'::character varying, 'rtrt', 'N', '2021-11-02', 'bye');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen7@naver.com', 'default2.jpg'::character varying, 'rtrt', 'N', '2022-11-02', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen8@naver.com', 'default3.jpg'::character varying, 'rtrt', 'N', '2012-11-02', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen9@naver.com', 'default.jpg'::character varying, 'rtrt', 'N', '2002-11-02', '안녕하세요');
INSERT INTO public.profile
(member_id, profile_img, profile_uuid, profile_type, profile_date, profile_intro)
VALUES('ezen10@naver.com', 'default.jpg'::character varying, 'rtrt', 'N', '2022-11-02', '안녕하세요');

select * from profile p ;

/*포스트*/
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen1@naver.com', '사진사진', '2011-12-11', 'N');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen2@naver.com', '포스트 올려야지', '2022-11-11', 'N');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen3@naver.com', '첫 포스트', '2002-11-11', 'Y');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen2@naver.com', '', '2015-11-11', 'Y');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen5@naver.com', '하하', '2016-11-11', 'N');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen6@naver.com', '히히', '2021-11-11', 'Y');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen7@naver.com', '허허', '2001-11-11', 'N');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen8@naver.com', '냠냠', '2021-11-11', 'Y');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen7@naver.com', '호호', '2013-11-11', 'N');
INSERT INTO public.post
(member_id, post_content, post_date, post_type)
VALUES('ezen1@naver.com', '', '2014-11-11', 'Y');

select * from post p ;

/*포스트 이미지*/
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(1, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(2, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(5, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(5, 'dsfds.jpg', 2, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(5, 'dsfds.jpg', 3, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(9, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(9, 'dsfds.jpg', 2, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(7, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(8, 'dsfds.jpg', 1, 'sfdsfds');
INSERT INTO public.post_img
(post_no, post_img_img, post_img_seq, post_img_uuid)
VALUES(10, 'dsfds.jpg', 1, 'sfdsfds');

select * from post_img pi2 ;

/*포스트 좋아요*/
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen1@naver.com', 1, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen2@naver.com', 2, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen3@naver.com', 3, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen4@naver.com', 3, false);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen5@naver.com', 3, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen6@naver.com', 9, false);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen7@naver.com', 10, false);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen8@naver.com', 10, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen9@naver.com', 10, true);
INSERT INTO public.sns_heart
(member_id, post_no, sns_heart_bool)
VALUES('ezen10@naver.com', 10, false);

select * from sns_heart sh ;

/*권한*/
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen1@naver.com', '판매자', '23424');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen2@naver.com', '일반', '343242');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen3@naver.com', '판매자', '34563245');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen4@naver.com', '판매자', '234234');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen5@naver.com', '판매자', '345435345');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen6@naver.com', '일반', '567567');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen7@naver.com', '일반', '34534536');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen8@naver.com', '일반', '6456456');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen9@naver.com', '일반', '345345');
INSERT INTO public.mem_auth
(member_id, mem_auth_auth, mem_auth_key)
VALUES('ezen10@naver.com', '판매자', '4564565');

select * from mem_auth ma ;

/*게시판*/
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen1@naver.com', '첫 글', '2022-11-03', '내가 첫글 쓴다', false, 'Y', 11, 'M');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen2@naver.com', '두번째 글', '2020-11-03', '내가 두번째 글 쓴다', false, 'Y', 10, 'R');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen3@naver.com', '이거 보여주려고', '2021-11-03', '어그로 끌었다', false, 'Y', 10, 'M');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen4@naver.com', '아~귀찮아', '2012-11-03', '과거에서 쓴 글', false, 'Y', 130, 'R');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen5@naver.com', '집가고 싶다', '2013-11-03', '집에 가서 뭐 먹지', false, 'Y', 102, 'M');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen6@naver.com', '아 하기 싫어', '2032-11-03', '일해야 먹고 살텐데', false, 'Y', 0, 'Q');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen7@naver.com', '누가 대신 해줄 사람', '2021-11-03', '반태희', false, 'Y', 3, 'F');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen8@naver.com', '내 나이가 어때서~', '2020-11-03', '사랑하기 딱 좋은 나인데~', false, 'Y', 14, 'M');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen9@naver.com', '제곧내', '2002-11-03', '제목', false, 'Y', 52, 'M');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen9@naver.com', '역시...', '2012-11-03', '내가 마지막글 쓴다', false, 'Y', 22, 'Q');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen10@naver.com', '이젠~', '2015-11-03', '아카데미', false, 'Y', 10, 'R');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen1@naver.com', '괜찮은데~', '2022-11-03', '허허', false, 'Y', 18, 'R');
INSERT INTO public.board
(member_id, board_title, board_date, board_con, board_secreet, board_type, board_views, board_kind)
VALUES('ezen9@naver.com', '받아주셈', '2002-11-03', '제목', true, 'A', 0, 'M');

select * from board ;

/*팔로우*/
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', 'ezen2@naver.com', '');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', '', 'ezen10@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', '', 'ezen3@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', '', 'ezen4@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', 'ezen3@naver.com', '');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', 'ezen4@naver.com', '');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', '', 'ezen5@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen1@naver.com', '', 'ezen10@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen4@naver.com', '', 'ezen10@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen4@naver.com', 'ezen10@naver.com', '');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen4@naver.com', '', 'ezen1@naver.com');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen8@naver.com', 'ezen2@naver.com', '');
INSERT INTO public.follow
(member_id, follower, "following")
VALUES('ezen8@naver.com', '', 'ezen2@naver.com');

select * from follow f ;

/*상품*/
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(1, 'T', 100, '2002-11-01', '메카닉 패딩 야상점퍼', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(2, 'B', 52200, '2022-11-01', 'Apple 2021 에어팟 3세대 블루투스 이어폰', 'N');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(3, 'B', 1112200, '2012-11-01', '다우니 프리미엄 블루 액상세제 본품', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(4, 'T', 142200, '2001-03-01', '바넥스 풀HD 소니이미지센서 블랙박스', 'N');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(5, 'T', 1200, '2001-11-05', '신발보다 싼 타이어', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(2, 'A', 1700, '2005-10-01', '아티나 넥베스트 유아동 조끼형 수영보조용품 25kg', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(1, 'A', 10900, '2006-12-01', '키즈라인 남아용 삐뽀삐뽀 삼각 팬티 5종 세트', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(1, 'T', 18700, '2009-05-01', '슬램덩크 오리지널 묶음세트 1-31권 완결', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(3, 'T', 1800, '2010-01-01', '메카닉 패딩 야상점퍼', 'N');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(3, 'T', 120, '2012-11-01', '우르오스 스킨워시', 'Y');
INSERT INTO public.product
(seller_no, product_kind, product_price, product_date, product_name, product_type)
VALUES(5, 'T', 12200, '2011-11-01', '뉴프리미엄 TS 샴푸', 'Y');

select * from product p ;

/*상품 옵션*/
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '화이트/S', 30);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '화이트/M', 20);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '화이트/L', 18);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '블랙/S', 30);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '블랙/M', 0);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(1, '블랙/L', 23);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(2, '3세세대/2021', 133);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(3, '다우니/대용량', 2001);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(4, '블랙/상시녹화', 20);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(4, '블랙/주정차녹화', 11);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(5, '스노우타이어/27', 10);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(5, '썸머타이어/27', 30);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(6, '화이트/S', 30);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(7, '램덤색상/S', 203);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(8, '완결/15권', 22);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(9, '국방색/M', 232);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(10, '묶음/2세트', 30);
INSERT INTO public.prdt_option
(product_no, prdt_option_size, prdt_option_stock)
VALUES(11, '묶음/2세트', 330);

select * from prdt_option po ;

/*상품 이미지*/
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(1, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(1, 2, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(2, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(3, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(4, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(4, 2, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(4, 3, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(5, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(6, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(6, 2, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(7, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(8, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(9, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(10, 1, 'prdt.jpg', 'uuid');
INSERT INTO public.prdt_img
(product_no, prdt_img_seq, prdt_img_name, prdt_img_uuid)
VALUES(10, 2, 'prdt.jpg', 'uuid');

select * from prdt_img pi2 ; 

/*주문내역*/
INSERT INTO public.prdt_order
(product_no, member_id, prdt_order_quan, prdt_order_date, prdt_order_type, prdt_order_phone, prdt_order_addr, prdt_order_addr2, prdt_order_person, prdt_order_way)
VALUES(1, 'ezen5@naver.com', 7, '2022-11-02', 'C', 01043432641, '서울 서초구', '이젠아카데미', '수령자', 'W');

select * from prdt_order po ;

/*태그*/
INSERT INTO public.tag
(post_no, tag_content)
VALUES(1, '#제발 오류나지마라..');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(2, '#부탁드린다..');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(3, '#제발이다..');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(4, '#집 가고 싶다..');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(5, '#우리도 회식하자..');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(6, '#안녕하세요');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(7, '#나이키덩크');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(8, '#스투시');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(9, '#스타일컬렉터');
INSERT INTO public.tag
(post_no, tag_content)
VALUES(10, '#경빈이 잘생겼다');

select * from tag t  ;

/*SNS 댓글*/
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen1@naver.com', 1, '안녕하세요', '2022-11-04', 1, 1, 1);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen2@naver.com', 2, '하이', '2022-10-26', 2, 1, 2);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen3@naver.com', 3, '안녕', '2022-09-04', 3, 2, 3);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen4@naver.com', 4, '안녕1', '2022-10-03', 4, 3, 4);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen5@naver.com', 5, '안녕2', '2022-10-29', 5, 3, 5);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen6@naver.com', 6, '안녕3', '2022-10-15', 6, 4, 1);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen7@naver.com', 7, '안녕4', '2022-10-05', 7, 4, 2);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen8@naver.com', 8, '안녕5', '2022-10-04', 8, 2, 2);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen9@naver.com', 9, '안녕6', '2022-11-01', 9, 3, 4);
INSERT INTO public.sns_comment
(member_id, post_no, sns_comment_con, sns_comment_date, sns_comment_seq, sns_comment_class, sns_comment_group)
VALUES('ezen10@naver.com', 10, '안녕7', '2022-11-02', 10, 1, 3);

select * from sns_comment sc  ;

INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(1, 1, '#zzzz');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(2, 1, '#ㅌㅌㅌㅌ');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(3, 1, '#ㅋㅋㅋㅋ');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(4, 1, '#ㅎㅎㅎㅎ');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(2, 1, '#ㄷㄷㄷㄷ');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(1, 1, '#ㄴㄴㄴㄴ');
INSERT INTO public.post_tag
(product_no, post_no, post_tag_con)
VALUES(4, 1, '#ㅈㅈㅈㅈ');

select * from post_tag pt  ;
