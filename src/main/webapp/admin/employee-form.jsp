<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <c:if test="${empty title}">
        <title>VTV | Admin - Thêm mới nhân viên</title>
    </c:if>

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
                        <li class="breadcrumb-item"><a class="breadcrumb-link" href="list_employees"><i
                                class="tio-back-ui"></i>
                            Quản lý nhân viên</a></li>
                    </ol>
                </nav>

                <c:if test="${empty title}">
                    <h1 class="page-header-title m-auto">Thêm nhân viên</h1>
                </c:if>
                <c:if test="${not empty title}">
                    <h1 class="page-header-title m-auto">${title}</h1>
                </c:if>
            </div>
        </div>

        <c:if test="${not empty employee.id}">
        <form class="js-step-form py-md-5" action="update_employee" method="post" enctype="multipart/form-data"
              id="userForm">
            <input type="hidden" name="id" value="${employee.id}"/>
            <input type="hidden" name="addressId" value="${employee.address.id}">
            </c:if>

            <c:if test="${empty employee.id}">
            <form class="js-step-form py-md-5" action="create_employee" method="post" enctype="multipart/form-data"
                  id="userForm">
                </c:if>
                <div class="row justify-content-lg-center">
                    <div class="col-lg-8">
                        <a class="step-content-wrapper"></a>

                        <div id="addUserStepFormContent">
                            <div id="addUserStepProfile" class="card card-lg active">
                                <div class="card-body">
                                    <div class="row form-group">
                                        <h1 class="m-auto">Thông tin nhân viên</h1>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Ảnh đại diện:</label>
                                        <div class="col-sm-8">
                                            <input type="file" id="avatarUploader" class="mb-2" name="image"/>
                                            <c:choose>
                                                <c:when test="${not empty employee.imagePath}">
                                                    <img id="avatarImg"
                                                         src="../images/employee/${employee.id}/${employee.imagePath}"
                                                         alt="Photos preview" class="img-fluid" style="width: 40%"/>
                                                </c:when>
                                                <c:otherwise>
                                                    <img id="avatarImg" src="../images/default.jpg"
                                                         alt="Photos preview" class="img-fluid" style="width: 40%"/>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="lastName"
                                               class="col-sm-3 col-form-label input-label">Họ</label>

                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="lastName" id="lastName"
                                                   value="${employee.lastName}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="firstName"
                                               class="col-sm-3 col-form-label input-label">Tên</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="firstName" id="firstName"
                                                   value="${employee.firstName}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="email"
                                               class="col-sm-3 col-form-label input-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="email" class="form-control" name="email" id="email"
                                                   value="${employee.email}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="password" class="col-sm-3 col-form-label input-label">Mật
                                            khẩu</label>
                                        <div class="col-sm-9">
                                            <c:if test="${empty employee}">
                                                <input type="password" class="form-control" name="password"
                                                       id="password">
                                            </c:if>
                                            <c:if test="${not empty employee}">
                                                <input type="password" class="form-control ignore" name="password"
                                                       id="password"
                                                       placeholder="Để trống nếu không muốn thay đổi mật khẩu">
                                            </c:if>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="street" class="col-sm-3 col-form-label input-label">Địa
                                            chỉ</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="street" id="street"
                                                   value="${employee.address.street}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="ward" class="col-sm-3 col-form-label input-label">Phường /
                                            Xã</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="ward" id="ward"
                                                   value="${employee.address.ward}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="district" class="col-sm-3 col-form-label input-label">Quận /
                                            Huyện</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="district" id="district"
                                                   value="${employee.address.district}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="city" class="col-sm-3 col-form-label input-label">Tỉnh / Thành
                                            phố</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="city" id="city"
                                                   value="${employee.address.city}">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <label for="phone" class="col-sm-3 col-form-label input-label">Số điện
                                            thoại</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="phone" id="phone"
                                                   value="${employee.phoneNumber}">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label input-label" for="role">Vai
                                            trò</label>
                                        <div class="col-sm-9 pt-1">
                                            <c:if test="${empty employee.id}">
                                                <c:forEach var="role" items="${roles}">
                                                    <input id="role" type="checkbox" class="mt-2" name="roles"
                                                           value="${role.id}" ${role.id == 2 ? 'checked' : '' }> ${role.name}
                                                    - <small>${role.description}</small><br>
                                                </c:forEach>
                                            </c:if>

                                            <c:if test="${not empty employee.id}">
                                                <c:forEach var="role" items="${roleMap}">
                                                    <input id="role" type="checkbox" class="mt-2" name="roles"
                                                           value="${role.key.id}"
                                                        ${role.value}> ${role.key.name}
                                                    - <small>${role.key.description}</small><br>
                                                </c:forEach>
                                            </c:if>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <label class="col-sm-3 col-form-label input-label" for="enabled">Hoạt
                                            động</label>
                                        <div class="col-sm-9 pt-1">
                                            <c:choose>
                                                <c:when test="${not empty employee}">
                                                    <c:if test="${employee.enabled}">
                                                        <input type="checkbox" class="mt-2" name="enabled" id="enabled"
                                                               checked>
                                                    </c:if>
                                                    <c:if test="${not employee.enabled}">
                                                        <input type="checkbox" class="mt-2" name="enabled" id="enabled">
                                                    </c:if>
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="checkbox" class="mt-2" name="enabled" id="enabled"
                                                           checked>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="card-footer d-sm-flex align-items-sm-center">
                                <div class="ml-auto">
                                    <button type="button" class="btn btn-white mr-2" id="btnCancel">Hủy</button>
                                    <button id="addUserFinishBtn" type="submit" class="btn btn-primary">Thêm</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    </div>

    <jsp:include page="footer.jsp"/>
</main>

<jsp:include page="modal_dialog.jsp"/>

<jsp:include page="js.jsp"/>

<script type="text/javascript">
    $(document).ready(function () {
        // validation
        $("#userForm").validate({
            ignore: ".ignore",
            rules: {
                firstName: {
                    required: true
                },
                lastName: {
                    required: true
                },
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true
                },
                street: {
                    required: true
                },
                ward: {
                    required: true
                },
                district: {
                    required: true
                },
                city: {
                    required: true
                },
                phone: {
                    required: true,
                    number: true,
                    minlength: 10,
                    maxlength: 11
                },
            },
            messages: {
                firstName: {
                    required: "Vui lòng nhập tên đầy đủ"
                },
                lastName: {
                    required: "Vui lòng nhập họ đầy đủ"
                },
                email: {
                    required: "Vui lòng nhập email",
                    email: "Email không hợp lệ, vd: abc@gmail.com"
                },
                password: {
                    required: "Vui lòng nhập mật khẩu"
                },
                street: {
                    required: "Vui lòng nhập địa chỉ"
                },
                ward: {
                    required: "Vui lòng nhập phường / xã"
                },
                district: {
                    required: "Vui lòng nhập quận / huyện"
                },
                city: {
                    required: "Vui lòng nhập tỉnh / thành phố"
                },
                phone: {
                    required: "Vui lòng nhập số điện thoại",
                    number: "Số điện thoại không hợp lệ",
                    minlength: "Số điện thoại không hợp lệ",
                    maxlength: "Số điện thoại không hợp lệ"
                },
            },
        });

        // check image file size
        $("#avatarUploader").change(function () { // is executed every time the event is fired
            if (!checkFileSize(this)) {
                return;
            }

            showImageThumbnail(this);
        });

        $("#btnCancel").on("click", function () {
            window.location = "list_employees";
        });
    });

    function showModalDialog(title, message) {
        $("#modalTitle").text(title);
        $("#modalBody").text(message);
        $("#modalDialog").modal();
    }

    const message = "${message}";
    if (message !== "") {
        showModalDialog("Warning", message)
    }

    function showImageThumbnail(fileInput) {
        var file = fileInput.files[0];

        var reader = new FileReader();

        reader.onload = function (e) {
            $("#avatarImg").attr("src", e.target.result);
        };

        reader.readAsDataURL(file);
    }

    function checkFileSize(fileInput) {
        fileSize = fileInput.files[0].size; // returns the selected file and can get the name or size
        var mb = 1024 * 1024; // 1mb = 1024 x 1024 kb

        if (fileSize > mb) {
            fileInput.setCustomValidity("Bạn phải chọn ảnh nhỏ hơn 1MB !");
            fileInput.reportValidity();

            return false;
        } else {
            fileInput.setCustomValidity("");

            return true;
        }
    }
</script>

</body>

</html>
