<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ include file="parts/head.jsp" %>

<body>
<div class="container">
<%@ include file="parts/top.jsp" %>
<%@ include file="parts/student_left_menu.jsp" %>

<div id="right">
  <div id="right_top">
    <h1>申请实验课程</h1>
  </div>
  <div id="right_content">
    课程申请点击:<button type="button" class="stuApply">申请实验课程</button>
  </div>
  <div id="right_add">
    <h3>已添加实验课程：</h3>
  </div>
  <div id="right_content">
    <div id="form">
      <ul>
    <c:choose>
      	<c:when test="${sessionScope.selectedCourses eq null }">
      		<li><span>没有课程</span></li>
      	</c:when>
      	<c:otherwise>
      		<c:forEach var="course" items="${sessionScope.selectedCourses }" >
      			<li><span>${ course.name}</span>
      			<c:if test="${course.open }">
      				<a href="GetExperimentsServlet?id=${sessionScope.id.id }&courseId=${course.id}&courseName=${course.name}"><button type="button" class="student_management">查看实验</button></a>
      			</c:if>
      			<c:if test="${!course.open }">
      				<button type="button">实验已经关闭</button>
      			</c:if>
      			</li>
      		</c:forEach>
      	</c:otherwise>
      </c:choose>
    </ul>
  </div>
    
  </div>

  
</div>
<%@ include file="parts/footer.jsp" %>
</div>
<script>
  	 $('.stuApply').on('click',function(){
         $.layer({
    	type: 2,
    	btns:1,
		btn: ['确定并刷新'],
    	title: '申请课程',
    	yes: function(index){
			$.ajax({ 
		          type : "get", 
		          url : "GetSelectedCourseServlet?id=${sessionScope.id.id }", 
		          async : false,
		          success:function(data){
					location.reload();
		          }
		          });
			layer.close(index);
			},
    	area: ['800px', '450px'],
		offset: [($(window).height() - 450)/2 + 'px', ''],
    	shade: [0],
        iframe: {src:"GetOpenedCourses?id=${sessionScope.id.id}"},
		success: function(){
        layer.shift('top'); 
    }
	});
});
</script>
</body>
</html>
