<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex w-100 h-100 align-items-center">
	<div class="logo col-2 d-flex align-items-center mt-2">
		<h3><a href="/lesson03/quiz02/list_template.jsp" class="text-success font-weight-bold">Melong</a></h3>
	</div>
	<div class="search col-10 d-flex align-items-center">
		<form method="get" action="/lesson03/quiz02/detail_template.jsp">
			<div class="form-group d-flex mt-4">
				<input type="text" class="form-control textSearch" name="keyword">
				<button type="submit" class="btn btn-info">검색</button>
			</div>		
		</form>
	</div>
</div>