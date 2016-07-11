<html>
<head>
    <title>Kauppapaikka</title>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen" />

    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"></script>
</head>
<body style="background-color: floralwhite">
    <div class="container">
        <div id="header">
            <div class="jumbotron" style="background-color: lightgreen">
                <h1>Kauppapaikka</h1>
                <p>Tervetuloa kauppa paikkaan! Täällä voit selata ja jättää myyntiilmoituksia mitä mielikuvituksellisimmista
                asioista.</p>
                <p><a class="btn btn-primary btn-lg" href="/newad.ftl" role="button">Jätä ilmoitus</a></p>
            </div>
            <nav class="navbar navbar-default" style="background-color: lightgreen">
                <div class="container text-center">
                    <div id="navbar" class="collapse navbar-collapse" id="nav">
                        <ul class="nav navbar-nav">
                            <li><a href="/index.ftl">Etusivu</a></li>
                            <li><a href="/newad.ftl">Jätä ilmoitus</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!-- näytetään ilmoituksen tiedot, jos ne löytyvät-->
        <div id="content">
            <div class="container">
                <#if model.ad.title??>
                    <div style="margin-bottom: 40px;">
                        <h2>${model.ad.title}</h2>
                    </div>
                </#if>
                <#if model.ad.imageUrl??>
                    <div style="margin-bottom: 40px; max-height: 600px; max-width: 750px">
                        <img src="${model.ad.imageUrl}" class="img-responsive" style="max-height: 600px"/>
                    </div>
                </#if>
                <#if model.ad.description??>
                    <div style="margin-bottom: 40px; width: 55%;">
                        <h3>Kuvaus:</h3>
                        <p>${model.ad.description}</p>
                    </div>
                </#if>
                <#if model.ad.priceCents??>
                    <div style="margin-bottom: 40px;">
                        <h3>Hinta:</h3>
                        <p>${model.ad.priceCents} senttiä</p>
                    </div>
                </#if>
                <#if model.ad.email??>
                    <div style="margin-bottom: 40px;">
                        <h3>Sähköposti:</h3>
                        <p>${model.ad.email}</p>
                    </div>
                </#if>
                <#if model.ad.phone??>
                    <div style="margin-bottom: 40px;">
                        <h3>Puhelin:</h3>
                        <p>${model.ad.phone}</p>
                    </div>
                </#if>
            </div>
            <div>
               <p><a class="btn btn-primary btn-lg" href="/index.ftl" role="button">Etusivulle</a></p>
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