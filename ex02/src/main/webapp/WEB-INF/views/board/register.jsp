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
                            <h6 class="m-0 font-weight-bold text-primary">Board Register</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
			                    <div class="col-lg-8">
			                        <div class="p-5">
			                            <div class="text-center">
			                                <h1 class="h4 text-gray-900 mb-4">Board Register</h1>
			                            </div>
			                            <form class="user" role="form" action="/board/register" method="post">
			                                <div class="form-group">
			                                	<label>Title</label>
			                                    <input type="text" class="form-control form-control-user" placeholder="Write a title" name="title">
			                                </div>
			                                <div class="form-group">
			                                	<label>Text Area</label>
			                                    <textarea class="form-control form-control-user" rows="5" name="content"></textarea>
			                                </div>
			                                <div class="form-group">
			                                    <div class="form-group">
				                                	<label>Writer</label>
			                                        <input type="text" class="form-control form-control-user" placeholder="Write a writer" name="writer">
			                                    </div>
			                                </div>
			                                <button class="btn btn-primary btn-user btn-block" type="submit">Submit</button>
			                                <button class="btn btn-warning btn-user btn-block" type="reset">Reset</button>
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

</body>

</html>