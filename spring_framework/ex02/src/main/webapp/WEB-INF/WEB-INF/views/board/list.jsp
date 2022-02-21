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
	                                        <td><a href="read?bno=${board.bno}">${board.title}</a></td>
	                                        <td>${board.writer}</td>
	                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" /></td>
	                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate}" /></td>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
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
					        <p>Modal body text goes here.</p>
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
	
	
});
</script>
<%@ include file="../includes/footer.jsp"%>