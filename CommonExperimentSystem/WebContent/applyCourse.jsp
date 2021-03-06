<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/iframeE.css" />
<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
</head>

<body>
<div class="container">
		<h1>课程信息</h1>
        	<div class="course_info">
            	<span>课程名称</span><span>任课老师</span><span>上课时间</span>
            </div>
            <div id="form">
            <c:choose>
            <c:when test="${sessionScope.openedCourses eq null }">
            <ul>
            	<li>没有课程</li>
            </ul>
            </c:when>
            <c:otherwise>
      		   <ul>
      		   <c:forEach var="course" items="${sessionScope.openedCourses }">
    				<li><span>${course.name }</span><span>${course.owner.name }</span><span>${course.duration }</span><button type="button" id="course${course.id }">申请</button></li>
    				<script type="text/javascript">
						$('#course${course.id }').on('click',function(){
							var id = '${sessionScope.id.id}';
							var courseId = '${course.id}';
							$.ajax({
								url:'ApplyCourseServlet?id='+id+'&courseId='+courseId,
								type:'get',
								asyn:false,
								success:function(data){
									window.location.href="GetOpenedCourses?id=${sessionScope.id.id}";
								}
							});
						});
					</script>
    		   	</c:forEach>
    		   </ul>
            </c:otherwise>
            </c:choose>
            </div>
</div>
</body>
</html>
