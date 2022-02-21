<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Modify/Delete</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Modify/Delete
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form>
	                        	<div class="form-group">
	                                <label>BNo</label>
	                                <input class="form-control" name="bno" readonly="readonly" value="${board.bno}">
	                            </div>
								<div class="form-group">
	                                <label>Title</label>
	                                <input class="form-control" name="title" value="${board.title}">
	                            </div>
	                            <div class="form-group">
	                                <label>Writer</label>
	                                <input class="form-control" name="writer" readonly="readonly" value="${board.writer}">
	                            </div>
	                            <div class="form-group">
	                                <label>Text area</label>
	                                <textarea class="form-control" cols="50" rows="5" name="content">${board.content}</textarea>
	                            </div>
	                            <button class="btn btn-default" data-oper="modify">Modify</button>
	                            <button class="btn btn-danger" data-oper="remove">Remove</button>
		                        <button class="btn btn-info" data-oper="list">&nbsp;&nbsp;&nbsp;List&nbsp;&nbsp;&nbsp;</button>
	                        </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<script>
$(document).ready(function() {
	
	var form = $("form");
	
	$('.btn').click(function(e) {
		/* 버튼을 클릭했을 때, 기본 동작을 차단 */
		e.preventDefault();
		
		var operation = $(this).data("oper");
		
		if(operation == 'list') {
			self.location = "/board/list";
		} else if (operation == 'remove') {
			if ( confirm("삭제하시겠습니까?") ) {
				form.attr("action", "/board/remove")
					.attr("method", "post");
				form.submit();
			} else {
				return;
			}
		} else if (operation == 'modify') {
			form.attr("action", "/board/modify")
				.attr("method", "post");
			form.submit();
		}
	})

	
	
});
</script>
<%@ include file="../includes/footer.jsp"%>