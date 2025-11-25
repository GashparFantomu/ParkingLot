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

    <t:pageTemplate pageTitle="Cars">
        <h1>Cars</h1>
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
                        ${car.ownerName}
                    </div>
                </div>
            </c:forEach>

        <h5>Free parking lots ${numberOfFreeParkingLots}</h5>
        <p>For now you're not stuck in the dark void anymore (AKA Mega Image) since you found the parking lot</p>
    </t:pageTemplate>