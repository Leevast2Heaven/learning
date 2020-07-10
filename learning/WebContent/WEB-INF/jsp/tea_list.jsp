<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>老师列表</title>
<style>
     th{border-bottom:2px solid #ccc;}
     td{border-bottom:1px solid #ccc; text-align:center}
	 h1{text-align:center}
</style>
<script src="WebContent/js/jquery-1.12.4.js"></script>
<script>
    function change(p)
    {
    	document.getElementById("page").value=p;
    	document.getElementById("ff").submit();
    }
    function showResume(ele,mid)
    {
    	var p=$(ele).offset();
    	$("#dialog").offset({top:p.top,left:p.left});//
    	//显示div
    	$("#dialog").show();
    }
</script>

</head>
<body>
	
	<div id="dialog" style="width:200px;height:100px;border:1px solid blue;position:absolute;display:none"></div>
   <h1>老师列表</h1>
   <a href="logout">注销</a>
   <table align="center" width="60%" cellspacing="0px">
       <tr>
            <td colspan="6">
             <form id="ff" action="" method="get">
               <input type="hidden" id="page" name="page" value="1"/>
			 </form>
			</td>         
       </tr>
       <tbody>
	   <tr>
             
              <th>编号</th>
              <th>名称</th>
			  <th>电话</th>
              <th>信息</th>
              <th>操作</th>
       </tr>
        
         <!-- EL表达式+JSTL==>代替java小脚本 -->
        <c:forEach var="m" items="${info.list}">
        <tr>
             <td> ${m.teaId}</td>
             <td> ${m.teaName}</td>
             <td> ${m.teaTel}</td>
             <td> ${m.teaInformation}</td>
             <td><a href="/learning/custom/enter?teaid=${m.teaId}">去了解</a></td>
       </tr>
       </c:forEach>
	   <tr>
            <td colspan="6">
             <a href="javascript:change(${info.prePage})">上一页</a>
			   <c:forEach var="p" begin="1" end="${info.pages}">
			      <a href="javascript:change(${p})">${p}</a>
			   </c:forEach>
			 <a href="javascript:change(${info.nextPage})">下一页</a> 
			 
			   [第${info.pageNum}页/共${info.pages}页  共${info.total}条记录]
			   
			</td> 
       </tr>
   </tbody>
   </table>
     

</body></html>