<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                            <a href="/board/register"><button type="button" class="btn btn-xs btn-primary pull-right" id="regBtn">Register New Post</button></a>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>BNO</th>
                                        <th>Title</th>
                                        <th>Writer</th>
                                        <th>RegDate</th>
                                        <th>updateDate</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${list}" var="board">
	                                    <tr class="odd gradeX">
	                                        <td>${board.bno}</td>
	                                        <td><a href="${board.bno}" class="move">${board.title}</a></td>
	                                        <td>${board.writer}</td>
	                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
	                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate}" /></td>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
							<form id="searchForm" action="/board/list" >
								<select name="type" id="selectType">
									<option value="" selected>-----------</option>
									<option value="T">제목</option>
									<option value="C">내용</option>
									<option value="W">작성자</option>
									<option value="TC">제목+내용</option>
									<option value="TW">제목+작성자</option>
									<option value="CW">내용+작성자</option>
									<option value="TCW">제목+내용+작성자</option>
								</select>

								<input type="text" name="keyword" id="searchKeyword" />
								<input type="hidden" name="pageNum" value="${pageMaker.criteria.pageNum }" />
								<input type="hidden" name="amount" value="${pageMaker.criteria.amount }" />
								<button class="btn btn-default">Search</button>
							</form>

                          	<div class="pull-right">
                          		<ul class="pagination">
                     					<li class="page-item">
                   					<c:choose> 
	                           			<c:when test="${pageMaker.prev }">
		                   					<a class="page-link" href="${pageMaker.startPage - 1}" tabindex="-1">Prev</a>
		                   				</c:when>
		                   				<c:otherwise>
		                   					<a class="page-link" tabindex="-1" >Prev</a>
		                   				</c:otherwise>
	                   				</c:choose>
                     					</li>
                          			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
                          				<li class="page-item ${pageMaker.criteria.pageNum == num ? "active" : ""}"">
                          					<a class="page-link" href="${num }">${num}</a>
                          				</li>
                          			</c:forEach>
                   				<li class="page-item">
                   					<c:choose> 
	                           			<c:when test="${pageMaker.next }">
		                   					<a class="page-link" href="${pageMaker.endPage + 1}" tabindex="-1">Next</a>
		                   				</c:when>
		                   				<c:otherwise>
		                   					<a class="page-link" tabindex="-1" >Next</a>
		                   				</c:otherwise>
	                   				</c:choose>
                   				</li>
                          		</ul>
                          	</div>
							<form id="actionForm" action="/board/list" method="get">
								<input type="hidden" name="pageNum" value="${pageMaker.criteria.pageNum }" />
								<input type="hidden" name="amount" value="${pageMaker.criteria.amount }" />
							</form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
            <div class="modal" tabindex="-1" role="dialog" id="myModal">
				<div class="modal-dialog" role="document">
				    <div class="modal-content">
 				        <div class="modal-header">
					        <h5 class="modal-title">Modal title</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					    </div>
					    <div class="modal-body">
					        <p>Modal body text goes here.</p><<a href="#"></a>
					    </div>
					    <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					    </div>
				    </div>
				</div>
			</div>
			
<script type="text/javascript"> 
/* register done code */
$(document).ready(function() {
	
	var result = '<c:out value="${result}" />';
	
	checkModal(result);

	/* 페이지가 redirect된 후에 쌓여있는 데이터를 초기화 시킨다. */
	history.replaceState({}, null, null);
	
	function checkModal(result) {
		
		if (result === '' || history.state) {
			return;
		}
		
		if (parseInt(result) > 0) {
			$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
							
		} else if ( result === "remove success" ) {
			$(".modal-body").html("삭제가 완료되었습니다.");			
		} else if ( result === "modify success" ) {
			$(".modal-body").html("수정이 완료되었습니다.");	
		}
		
		$("#myModal").modal("show");
	}
	
	var actionForm = $("#actionForm");
	$(".page-link").on("click", function(e) {
		e.preventDefault();
		
		var targetPage = $(this).attr("href");
		/* test - 1
		console.log(targetPage);
		*/
		
		actionForm.find("input[name='pageNum']").val(targetPage);
		actionForm.submit();
	});
	
	$(".move").on("click", function(e) {
		e.preventDefault();
		
		var targetBno = $(this).attr("href");
		/* test
		console.log(targetBno);
		*/
		
		actionForm.append("<input type='hidden' name='bno' value='" + targetBno + "' />");
		actionForm.attr("action", "/board/read").submit();
	})
	
	let searchForm = $("#searchForm");
	
	$("#selectType").find("option[value='<c:out value='${pageMaker.criteria.type}' />']").prop("selected", true);

	
	$("#searchKeyword").val("<c:out value='${pageMaker.criteria.keyword}' />");

	
	$("#searchForm button").on("click", function(e) {
		e.preventDefault();
		searchForm.find("input[name='pageNum']").val(1);
		searchForm.submit();
	})

	
});
</script>
<%@ include file="../includes/footer.jsp"%>