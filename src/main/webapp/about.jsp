<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dbUtil" class="utils.DBUtil"></jsp:useBean>
<!DOCTYPE html>
<html>
<html>
<head>
    <title>Hakkımda</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        body
        {
            margin: 0;
        }

        header
        {
            position: relative;
            height: 50vh;
            z-index: 0;
            font-family: Calibri, Verdana, sans-serif;
        }

        header::before,
        header::after
        {
            content: '';
            background-color: hsl(20, 20%, 30%);
            background-image: url(https://sumfinity.com/wp-content/uploads/2018/02/panorama-Singapore-Marina-Sunrise.jpg);
            background-size: cover;
        }

        header::before
        {
            position: fixed;
            width: 100%;
            z-index: -1;
        }

        header::after
        {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: -1;
        }

        nav
        {
            position: fixed;
        }

        nav ul
        {
            margin: 0 0;
            padding: 0.5em 0;
            list-style: none;
        }

        nav li
        {
            display: inline-block;
        }

        nav a,
        #skip-link
        {
            display: block;
            outline: none;
            margin: 0 1em;
            padding: 0.5em 0 0.25em ;
            border-bottom: 0.125em solid transparent;
            color: white;
            text-decoration: none;
            text-transform: uppercase;
            text-shadow: 0 0 2px black;
        }

        nav a:focus,
        nav a:hover
        {
            border-color: currentColor;
        }

        #skip-link
        {
            position: fixed;
            left: 0;
            top: 0;
            background: black;
            color: white;
            text-decoration: inherit;
            transform: translateY(-100%);
            z-index: 1;
        }

        #skip-link:focus
        {
            transform: translateY(0);
        }

        main
        {
            padding: 1em;
            max-width: 42em;
            font: 1em/1.3 Cambria, Georgia, serif;
        }

        h1
        {
            font-size: 1.4em;
        }

        h2
        {
            font-size: 1em;
        }

        .container {
            margin: 0 auto;
            position: relative;
            width: 100%;
            max-width: 889px;
        }

        body {
            font-family: Calibri, Verdana, sans-serif;
            font-size: 2.0rem;
            line-height: 1.6em;
            color: #3A4145;
        }

        ol {
            display: block;
            list-style-type: decimal;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            -webkit-padding-start: 40px;
        }

        ul, ol {
            list-style-position: inside;
            line-height: 1.8;
            margin: 0 0 40px;
            padding: 0;
        }


        li {
            display: list-item;
            text-align: -webkit-match-parent;
        }

        a {
            color: #F03838;
            text-decoration: none;
        }

        h4 {
            font-size: 18px;
            margin-bottom: 18px;
        }
        h1, h2, h3, h4, h5, h6 {
            margin-bottom: 33px;
            text-transform: none;
        }
        user agent stylesheeth4 {
            display: block;
            -webkit-margin-before: 1.33em;
            -webkit-margin-after: 1.33em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-weight: bold;
        }

        /* ============================================================ */
        /* Post Index */
        /* ============================================================ */



        .post-stub a {
            -webkit-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            transition: all 0.2s ease-in-out;
            display: block;
            color: #424242;
            padding: 20px 5px;
        }

        .post-stub a:hover {
            background: #F5F5FC;
            color: #57A3E8;
            padding: 20px 12px;
        }



        .next-posts-link a,
        .previous-posts-link a {
            display: block;
            padding: 8px 11px;
        }

    </style>

</head>
<header>
    <a id="skip-link" href="#main-content">skip navigation</a>
    <nav>
        <ul>
            <li><a href="home.jsp">Anasayfa</a></li>
            <li><a href="about.jsp">Hakkımda</a></li>
            <li><a href="contact.jsp">İLETİŞİM</a></li>
        </ul>

    </nav>

</header>
<body>
<div id="post-index" class="container" style="display: block;">
    <br/>
    <h2 style="text-align: center;">HAKKIMDA</h2>
    <article>
        <p>Merhaba, ben İlayda Güler. Bilgisayar mühendisiyim. Hayvanlar, doğa, uzay konularında yeni bilgiler öğrenip bunları insanlarla paylaşmaktan mutluluk duyarım. Bu bloğu kurmaya edindiğim bilgileri sizlerle de paylaşabilmek için karar verdim. Eğer sizler de benim gibi meraklı iseniz lütfen takipte kalın.</p>
    </article>
</div>
</body>
</html>