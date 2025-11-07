<%--
  Created by IntelliJ IDEA.
  User: Gashpar Fantomu'
  Date: 11/7/2025
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

    <t:pageTemplate pageTitle="Cars">
        <h1>Cars</h1>
        <div id="container text-center">
            <div class = "row">
                <div class = 'col-md-3'>
                    <p>Car 1</p>
                </div>
                <div class = 'col-md-3'>
                    <p>Spot 1</p>
                </div>
                <div class = 'col-md-3'>
                    <p>User 1</p>
                </div>
            </div>

            <div class = "row">
                <div class = 'col-md-3'>
                    <p>Car 2</p>
                </div>
                <div class = 'col-md-3'>
                    <p>Spot 2</p>
                </div>
                <div class = 'col-md-3'>
                    <p>User 2</p>
                </div>
            </div>
            <div class = "row">
                <div class = 'col-md-3'>
                    <p>Car 3</p>
                </div>
                <div class = 'col-md-3'>
                    <p>Spot 3</p>
                </div>
                <div class = 'col-md-3'>
                    <p>User 3</p>
                </div>
            </div>
        </div>
        <h5>Free parking lots ${numberOfFreeParkingLots}</h5>
        <p>For now you're not stuck in the dark void anymore (AKA Mega Image) since you found the parking lot</p>
    </t:pageTemplate>