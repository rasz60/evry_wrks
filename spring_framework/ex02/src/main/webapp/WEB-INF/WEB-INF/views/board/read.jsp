<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Read
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<div class="form-group">
                                <label>BNo</label>
                                <input class="form-control" name="title" readonly="readonly" value="${board.bno}">
                            </div>
							<div class="form-group">
                                <label>Title</label>
                                <input class="form-control" name="title" readonly="readonly" value="${board.title}">
                            </div>
                            <div class="form-group">
                                <label>Writer</label>
                                <input class="form-control" name="writer" readonly="readonly" value="${board.writer}">
                            </div>
                            <div class="form-group">
                                <label>Text area</label>
                                <textarea class="form-control" cols="50" rows="5" name="content" readonly="readonly">${board.content}</textarea>
                            </div>
                            <button class="btn btn-default" id="list" class="btn btn-default">List</button>
                            <button class="btn btn-default" id="modify" data-oper="${board.bno}">Modify</button>
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
	
	$("#modify").click(function(e) {
		self.location = "/board/modify?bno=${board.bno}";
	})
	
	$("#list").click(function(e) {
		self.location = "/board/list";
	})
	
});
</script>
<%@ include file="../includes/footer.jsp"%>