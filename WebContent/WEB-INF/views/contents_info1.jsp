<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>contents_info</title>
<link rel="stylesheet" href="${root }/css/contents_info.css">
</head>
<body>
<c:import url="/WEB-INF/views/header.jsp" />
	<section class="content">
		<div class="inner">
			<div class="title">구매신청하기</div>
		
			<div class="content__form">
				<div class="content__wrapper">
					<input type='hidden' name='page' value='${page }'/>
				
					<!-- 글제목 및 작성시간 -->
					<div class="subndate">
						<div class="subject"><c:out value="${offerContentsBean.o_sub }"/></div>
						<div class="date"><c:out value="${offerContentsBean.o_regdate }"/></div>
					</div>
					
					<!-- 작성자 및 조회수 -->
					<div class="writernread">
						<div class="writer"><c:out value="${u_id }" /></div>
						<div class="readcnt">조회수 <c:out value="${offerContentsBean.o_readcnt }" /></div>
					</div>
					
					<div class="contentbody">
						<div class="content">
							<c:out value="${offerContentsBean.o_text }" />
						</div>
					</div>
				</div>
				<c:import url="/WEB-INF/views/boardreply1.jsp" />
				<div class="btn__wrapper">
					<a href="boardform1?page=${page }">게시판 목록</a>
					<c:if test="${loginUserBean.u_no == offerContentsBean.o_writer }">
						<a href="contents_info1_edit?command=offer&page=${page}&contents=${offerContentsBean.o_no}" class="edit">수정</a>
						<a href="contents_info1_delete?command=offer&page=${page}&contents=${offerContentsBean.o_no}">삭제</a>
					</c:if>
				</div>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/footer.jsp" />
</body>
</html>