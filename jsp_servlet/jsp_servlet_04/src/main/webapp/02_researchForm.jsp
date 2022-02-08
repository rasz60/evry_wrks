<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>ResearchForm</title>
</head>

<body>

<h2>설문 조사</h2>
<hr />

<form action="03_research.jsp" method="post">
	<table>
		<tr>
			<td>이름 : </td>
			<td>
				<input type="text" name="name" />
			</td>
		</tr>
		<tr>
			<td>성별 : </td>
			<td>
				<input type="radio" name="gender" id="man" value="man" checked="checked"/>
				<label for="man">남자</label>
				<input type="radio" name="gender" id="woman" value="woman" />
				<label for="woman">여자</label>
			</td>
		</tr>
		<tr>
			<td>좋아하는 계절 : </td>
			<td>
				<input type="checkbox" name="season" id="spr" value="봄" checked="checked"/>
				<label for="spr">봄</label>
				<input type="checkbox" name="season" id="smr" value="여름" />
				<label for="smr">여름</label>
				<input type="checkbox" name="season" id="fall" value="가을"/>
				<label for="fall">가을</label>
				<input type="checkbox" name="season" id="wnt" value="겨울" />
				<label for="wnt">겨울</label>
				
			</td>
		</tr>
		<tr align="center">
			<td>
				<input type="submit" value="전송">
			</td>
			
			<td>
				<input type="reset" value="취소">			
			</td>
		</tr>
	</table>
</form>
</body>
</html>