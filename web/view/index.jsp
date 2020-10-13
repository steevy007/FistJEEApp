<%-- 
    Document   : index
    Created on : 2020-10-13, 03:53:55
    Author     : Sanon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="view/public/assets/css/main.css" >
        <%@include  file="/view/partial/_css.jsp" %>
        <title>Home | Application</title>
    </head>
    <body>
        <div class="container-fluide" id="center">
            <div class="col-md-8">
 
                    <!-- Material form subscription -->
                    <div class="card">

                        <h5 class="card-header info-color white-text text-center py-4">
                            <strong>Systeme Calcul Age</strong>
                        </h5>

                        <!--Card content-->
                        <div class="card-body px-lg-5">

                            <!-- Form -->
                            <form  method="POST" class="text-center" style="color: #757575;" action="Home">
                                <!-- Name -->
                                <div class="md-form mt-3">
                                    <input type="text" id="nom"  name="nom" class="form-control">
                                    <label for="nom">Nom</label>
                                </div>

                                <!-- E-mai -->
                                <div class="md-form">
                                    <input type="text" id="prenom" name="prenom" class="form-control">
                                    <label for="materialSubscriptionFormEmail">Prenom</label>
                                </div>

                                <!-- E-mai -->
                                <div class="md-form">
                                    <input type="number" id="annee" name="annee" class="form-control">
                                    <label for="materialSubscriptionFormEmail">Annee de naissance</label>
                                </div>
                                <div class="alert alert-secondary" role="alert">

                                    <c:choose>
                                        <c:when test="${ empty reponse }"><span>Veuillez remplir correctement les champs</span></c:when>
                                        <c:otherwise><span>${ reponse }</span></c:otherwise>
                                    </c:choose>

                                </div>
                                <!-- Sign in button -->
                                <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" type="submit">Calculer</button>

                            </form>
                            <!-- Form -->

                        </div>

                    </div>
                    <!-- Material form subscription -->
               
            </div>
        </div>
        <%@include  file="/view/partial/_js.jsp" %>
    </body>
</html>
