<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Admin Login</title>
</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">

            <br/>
            <br/>

            <h2 style="color:mediumseagreen">Şifre Değiştir </h2>



            <form action="password-change" method="post">
                <div class="mb-2">
                    <input type="password" class="form-control" name="password" placeholder="Eski Şifre" required />
                </div>

                <div class="mb-2">
                    <input type="password" class="form-control" name="password1" placeholder="Yeni Şifre" required />
                </div>

                <input class="btn btn-success" type="submit" value="Değiştir" />
            </form>
        </div>
        <div class="col-sm-4"></div>
    </div>



    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</div>
</body>
</html>
