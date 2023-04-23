<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <c:if test="${not empty title}">
        <title>VTV | Admin - ${title}</title>
    </c:if>

    <jsp:include page="css.jsp"/>
</head>

<body class="footer-offset">

<jsp:include page="header.jsp"/>

<main id="content" role="main" class="main">
    <div class="content container-fluid">
        <div class="page-header">
            <div class="col-sm mb-2 mb-sm-0">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb breadcrumb-no-gutter">
                        <li class="breadcrumb-item"><a class="breadcrumb-link" href="list_orders"><i
                                class="tio-back-ui"></i>
                            Quản lý đơn hàng</a></li>
                    </ol>
                </nav>

                <h1 class="page-header-title m-auto">${title}</h1>
            </div>
        </div>

        <form class="js-step-form py-md-5" action="update_order" method="post">
            <input type="hidden" name="id" value="${order.id}"/>
            <div class="row justify-content-lg-center">
                <div class="col-lg-8">
                    <a class="step-content-wrapper"></a>

                    <div id="addUserStepFormContent">
                        <div id="addUserStepProfile" class="card card-lg active">
                            <div class="card-body">
                                <div class="row form-group">
                                    <h1 class="m-auto">Cập nhật trạng thái đơn hàng #${order.id}</h1>
                                </div>

                                <div class="row form-group">
                                    <label class="col-sm-3 col-form-label input-label">Tình trạng đơn hàng</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" name="status">
                                            <option value="1" ${statusId == 1 ? 'selected' : ''}>Đang xử lý</option>
                                            <option value="2" ${statusId == 2 ? 'selected' : ''}>Đã giao hàng</option>
                                            <option value="3" ${statusId == 3 ? 'selected' : ''}>Huỷ đơn hàng</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card-footer d-sm-flex align-items-sm-center">
                            <div class="ml-auto">
                                <button type="button" class="btn btn-white mr-2" id="btnCancel">Hủy</button>
                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <jsp:include page="footer.jsp"/>
</main>

<jsp:include page="js.jsp"/>

<script type="text/javascript">
    $(document).ready(function () {
        $("#btnCancel").on("click", function () {
            window.location = "list_orders";
        });
    });
</script>

</body>

</html>
