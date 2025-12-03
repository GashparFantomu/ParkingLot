<%--
  Created by IntelliJ IDEA.
  User: Gashpar Fantomu'
  Date: 11/7/2025
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var = "activePage" value = "Cars"/>
    <t:pageTemplate pageTitle="Cars">
        <h1>Cars</h1>
        <a href="${pageContext.request.contextPath}/addCar.jsp" class = "btn btn-primary btn-lg.">Add Car</a>
        <div id="container text-center">
            <c:forEach var = "car" items = "${cars}">
                <div class="row">
                    <div class="col">
                        ${car.licensePlate}
                    </div>
                    <div class="col">
                        ${car.parkingSpot}
                    </div>
                    <div class="col">
                        ${car.owner_id}
                    </div>
                </div>
            </c:forEach>

        <h5>Free parking lots ${numberOfFreeParkingSpots}</h5>
        <p>You're not stuck in the dark void anymore (Mega Image) since you found the parking lot</p>
    </t:pageTemplate>