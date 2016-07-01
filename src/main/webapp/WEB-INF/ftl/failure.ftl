<html>
<head>
    <titleFreeMarker Kauppapaikka</title>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen" />

    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"></script>
</head>
<body style="background-color: floralwhite">
<div class="container">
    <div id="header">
        <div class="jumbotron" style="background-color: lightgreen">
            <h1>Kauppapaikka</h1>
            <p>Hups, jotain meni vikaan :(</p>
            <p><a class="btn btn-primary btn-lg" href="newad.ftl" role="button">Yritä uudelleen</a></p>
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
            <h2>Varmista, että hinta- ja puhelin kentät sisältävät pelkästään numeroita.</h2>
            <p><a class="btn btn-primary btn-lg" href="newad.ftl" role="button">Yritä uudelleen</a></p>
            <p><a class="btn btn-primary btn-lg" href="index.ftl" role="button">Palaa etusivulle</a></p>
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