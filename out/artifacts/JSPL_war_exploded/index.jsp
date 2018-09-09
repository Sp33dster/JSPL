<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="pl.sda.lodz9.Calculator" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>


  <jsp:useBean id="calc" class="pl.sda.lodz9.Calculator"/>
  <jsp:setProperty name="calc" property="a" value="444" />
  <jsp:setProperty name="calc" property="b" value="222" />
  <h1>Wynik calc: ${calc.add()}</h1>

  <%
      Calculator calc2 = new Calculator();
      calc2.setA(333);
      calc2.setB(333);
  %>
  <h1> Wynik calc2: <%=calc2.add()%></h1>

  <c:if test="${calc.add() == 666}">
      <h1>Sejtan</h1>
  </c:if>

<c:choose>
    <c:when test="${calc.substract() > 0 }">
        <h2>Liczba większa od 0</h2>
    </c:when>
    <c:otherwise>
        <h2>Liczba mniejsza od 0</h2>
    </c:otherwise>

</c:choose>

<jsp:useBean id="list" class="java.util.ArrayList"/>
  <%
      list.add("oi");
      list.add("hello");
      list.add("hi");
  %>

  <c:forEach items="${list}" var="string">
      <h1>${string}</h1>
  </c:forEach>



  </body>
</html>
