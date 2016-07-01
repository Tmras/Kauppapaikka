<html>
<head>
    <titleFreeMarker Kauppapaikka</title>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css"
          th:href="@{/webjars/bootstrap/3.3.4/css/bootstrap.min.css}"
          rel="stylesheet" media="screen" />

    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"
            th:src="@{/webjars/jquery/2.1.4/jquery.min.js}"></script>
</head>
<body style="background-color: floralwhite">
<div class="container">
    <div id="header">
        <div class="jumbotron" style="background-color: lightgreen">
            <h1>Kauppapaikka</h1>
            <p>Ilmoituksesi on tallennettu</p>
            <p><a class="btn btn-primary btn-lg" href="index.ftl" role="button">Etusivulle</a></p>
        </div>
        <nav class="navbar navbar-default" style="background-color: lightgreen">
            <div class="container text-center">
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/index.ftl">Etusivu</a></li>
                        <li><a href="/newad.ftl">Jätä ilmoitus</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div id="content">
        <div class="container">
            <h2>Onneksi olkoon ilmoituksesi on lisätty!</h2>
            <p><a class="btn btn-primary btn-lg" href="index.ftl" role="button">Palaa etusivulle</a></p>
            <p><a class="btn btn-primary btn-lg" href="newad.ftl" role="button">Jätä uusi ilmoitus</a></p>
        </div>
    </div>
</div>
<footer class="container-fluid text-center">
    <p>Ilmoitukset sähköpostiisi:</p>
    <form class="form-inline">
        <input type="email" class="form-control" size="50" placeholder="Sähköposti">
        <button type="button" class="btn btn-primary">Tilaa</button>
    </form>
</footer>
</body>
</html>