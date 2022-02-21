<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Register</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<form action="/board/register" method="post">
 								<div class="form-group">
                                    <label>Title</label>
                                    <input class="form-control" name="title">
                                    <p class="help-block">Example block-level help text here.</p>
                                </div>
                                <div class="form-group">
                                    <label>Writer</label>
                                    <input class="form-control" name="writer">
                                </div>
                                <div class="form-group">
                                    <label>Text area</label>
                                    <textarea class="form-control" cols="50" rows="5" name="content"></textarea>
                                </div>
                                <button type="submit" class="btn btn-default">Submit Button</button>
                                <button type="reset" class="btn btn-default">Reset Button</button>
 							</form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
<%@ include file="../includes/footer.jsp"%>