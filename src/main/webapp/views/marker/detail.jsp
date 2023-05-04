<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>

<script>
    let marker_detail={
        init: function(){
            $('#update_btn').click(function(){
                marker_detail.send();
            });
            $('#delete_btn').click(function(){
                var c = confirm('삭제 하시겠습니까?');   //confirm창 호출
                if(c == true){
                    location.href='/marker/deleteimpl?id=${gitem.id}';
                };
            });
        },
        send: function(){
            $('#detail_form').attr({
                method:'post',
                action:'/marker/updateimpl',
                enctype: 'multipart/form-data'   // imgname <-> img파일
            });
            $('#detail_form').submit();
        }
    };
    $(function (){
        marker_detail.init();
    });
</script>

    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Detail Item : ${gitem.id}</h1>

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">${gitem.id} : ${gitem.title}</h6>
            </div>
            <div class="card-body">
                    <form id="detail_form" class="form-horizontal well">
                        <input type="hidden" name="id" value="${gitem.id}">
                        <input type="hidden" name="img" value="${gitem.img}">
                        <%--폼과 폼사이 데이터는 날려야 하니 hidden 타입으로.--%>
                        <%-- 이미지가 새롭게 업데이트 되면 바꿔주고, 안 바뀌면 그대로 쓰겠다 --%>

                        <div class="form-group">
                            <div class="col-sm-10">
                                <img src="/uimg/${gitem.img}" style="width:50px; height:50px">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="title">TITLE:</label>
                            <div class="col-sm-10">
                                <input type="text" name="title" class="form-control" id="title" value="${gitem.title}">
                            </div>
                        </div>
<%--          target, lat, lnt, img, loc              --%>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="target">TARGET:</label>
                            <div class="col-sm-10">
                                <input type="text" name="target" class="form-control" id="target" value="${gitem.target}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="lat">Latitude:</label>
                            <div class="col-sm-10">
                                <input type="number" name="lat" class="form-control" id="lat" value="${gitem.lat}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="lng">Longtitude:</label>
                            <div class="col-sm-10">
                                <input type="number" name="lng" class="form-control" id="lng" value="${gitem.lng}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="img">IMG:</label>
                            <div class="col-sm-10">
                                <input type="file" name="img" class="form-control" id="img" placeholder="Input img">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="loc">LOCATION:</label>
                            <div class="col-sm-10">
                                <input type="text" name="loc" class="form-control" id="loc" value="${gitem.loc}">
                            </div>
                        </div>
<%--                        <div class="form-group">--%>
<%--                            <label class="control-label col-sm-2" for="rdate">RDATE:</label>--%>
<%--                            <div class="col-sm-10">--%>
<%--                                <input type="text" name="rdate" class="form-control" id="rdate"--%>
<%--                                       value="<fmt:formatDate value="${iteminfo.rdate}" pattern="yyyy-MM-dd"/>" readonly>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="control-label col-sm-2" for="rdate">RDATE:</label>--%>
<%--                            <div class="col-sm-10">--%>
<%--                                <input type="text" name="rdate" class="form-control" id="rdate"--%>
<%--                                       value="<fmt:formatDate value='${new Date()}' pattern='yyyy-MM-dd' />" readonly>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button id="update_btn" type="button" class="btn btn-default">Update</button>
                                <button id="delete_btn" type="button" class="btn btn-default">Delete</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
</div>