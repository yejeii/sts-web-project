<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../includes/header.jsp" %>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <%@ include file="../includes/sidebar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
				<%@ include file="../includes/Topbar.jsp"%>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
					<div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Board Read Page</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
			                    <div class="col-lg-8">
			                        <div class="p-5">
			                            <div class="text-center">
			                                <h1 class="h4 text-gray-900 mb-4">Board Read Page</h1>
			                            </div>
			                            <form class="user" role="form" action="/board/modify" method="post">
			                            	<input type="hidden" name="bno" value="${board.bno }">
			                                <div class="form-group row">
			                                    <div class="col-sm-6 mb-3 mb-sm-0">
			                                    	<label>Reg Date</label>
			                                        <input type="text" class="form-control form-control-user" name="regdate"
			                                        		value='<fmt:formatDate value="${board.regdate }" pattern="yyyy/MM/dd"/>' readonly="readonly">
			                                    </div>
			                                    <div class="col-sm-6">
			                                    	<label>Update Date</label>
			                                        <input type="text" class="form-control form-control-user" name="updateDate"
			                                        		value='<fmt:formatDate value="${board.updateDate }" pattern="yyyy/MM/dd"/>' readonly="readonly" >
			                                    </div>
			                                </div>
			                                <div class="form-group">
			                                	<label>Title</label>
			                                    <input type="text" class="form-control form-control-user" placeholder="Write a title" name="title" value="${board.title }">
			                                </div>
			                                <div class="form-group">
			                                	<label>Text Area</label>
			                                    <textarea class="form-control form-control-user" rows="5" name="content"><c:out value="${board.content }"/></textarea>
			                                </div>
			                                <div class="form-group">
			                                    <div class="form-group">
				                                	<label>Writer</label>
			                                        <input type="text" class="form-control form-control-user" placeholder="Write a writer" name="writer" value="${board.writer }" readonly="readonly">
			                                    </div>
			                                </div>
			                                <button class="btn btn-primary btn-user btn-block" type="submit" data-oper="modify">Modify</button>
			                                <button class="btn btn-warning btn-user btn-block" type="submit" data-oper="remove">Remove</button>
			                                <button class="btn btn-info btn-user btn-block" type="button" data-oper="list">List</button>
			                            </form>
			                            <hr>
			                        </div>
			                    </div>
			                 </div>
		                 </div>
	                 </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->
            
            <!-- Footer -->
            <%@ include file="../includes/footer.jsp" %>
            <!-- End of Footer -->
            
        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function() {
    		let formObj = $("form");
    		
    		$('button').on("click", function(e) {
    			e.preventDefault();
    			
    			let operation = $(this).data('oper');
    			console.log(operation);
    			
    			switch(operation) {
    			case 'remove':
    				formObj.attr('action', '/board/remove');
    				break;
    			case 'list':
    				formObj.attr('action', '/board/list').attr('method', 'get');
    				formObj.empty();
    				break;
   				default:
   					break;
    			}
    			formObj.submit();
    		});
    	});
    </script>

</body>

</html>