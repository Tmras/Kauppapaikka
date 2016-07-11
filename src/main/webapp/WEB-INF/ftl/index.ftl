<html>
<head>
    <title> Kauppapaikka</title>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css"
          rel="stylesheet" media="screen" />
    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"></script>
    <style>
        .img-thumbnail{
            max-height: 200px;
            max-width: 200px;
            min-height: 200px;
            min-width: 200px;

        }

        .panel-body {
            max-width: 300px;
            min-width: 300px;
        }

        .panel-footer {
            max-width: 300px;
            min-width: 300px;
        }
        .panel {
            max-width: 300px;
            min-width: 300px;
        }

        .panel-heading {
            max-height: 250px;
            min-height: 250px;
        }
    </style>
</head>
<body style="background-color: floralwhite">
    <div class="container">
        <div id="header">
            <div class="jumbotron" style="background-color: lightgreen">
                <h1>Kauppapaikka</h1>
                <p>Tervetuloa kauppapaikkaan! Täällä voit selata ja jättää myyntiilmoituksia mitä mielikuvituksellisimmista
                 asioista.</p>
                 <p><a class="btn btn-primary btn-lg" href="newad.ftl" role="button">Jätä ilmoitus</a></p>
            </div>
            <nav class="navbar navbar-default" style="background-color: lightgreen">
                <div class="container text-center">
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.ftl">Etusivu</a></li>
                            <li><a href="newad.ftl">Jätä ilmoitus</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!-- listataan ilmoitukset kolmen ilmoituksen riveihin. -->
        <div id="content">
            <#list model["marketads"]?chunk(3) as marketads>
                <div>
                    <div class="row">
                    <#if marketads[0]??>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: lightgreen">
                                    <#if marketads[0].thumbnailUrl??>
                                        <img src="${marketads[0].thumbnailUrl}" class="img-thumbnail center-block"/>
                                    </#if>
                                </div>
                                <div class="panel-body">
                                    <h2>${marketads[0].title}</h2>
                                    <p>Hinta: ${marketads[0].priceCents} senttiä</p>
                                </div>
                                <div class="panel-footer" style="background-color: lightgreen">
                                    <a class="btn btn-primary" role="button" href="ad/${marketads[0].id}">lue lisää</a>
                                </div>
                            </div>
                        </div>
                    </#if>
                    <#if marketads[1]??>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: lightgreen">
                                    <#if marketads[1].thumbnailUrl??>
                                        <img src="${marketads[1].thumbnailUrl}" class="img-thumbnail center-block"/>
                                    </#if>
                                </div>
                                <div class="panel-body">
                                    <h2>${marketads[1].title}</h2>
                                    <p>Hinta: ${marketads[1].priceCents} senttiä</p>
                                </div>
                                <div class="panel-footer" style="background-color: lightgreen">
                                    <a class="btn btn-primary" role="button" href="ad/${marketads[1].id}">lue lisää</a>
                                </div>
                            </div>
                        </div>
                    </#if>
                    <#if marketads[2]??>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading" style="background-color: lightgreen">
                                    <#if marketads[2].thumbnailUrl??>
                                        <img src="${marketads[2].thumbnailUrl}" class="img-thumbnail center-block"/>
                                    </#if>
                                </div>
                                <div class="panel-body">
                                    <h2>${marketads[2].title}</h2>
                                    <p>Hinta: ${marketads[2].priceCents} senttiä</p>
                                </div>
                                <div class="panel-footer" style="background-color: lightgreen">
                                    <a class="btn btn-primary" role="button" href="ad/${marketads[2].id}">lue lisää</a>
                                </div>
                            </div>
                        </div>
                    </#if>
                </div>
            </#list>
        </div>
        <footer class="container-fluid text-center">
            <p>Ilmoitukset sähköpostiisi:</p>
            <form class="form-inline">
                <input type="email" class="form-control" size="50" placeholder="Sähköposti">
                <button type="button" class="btn btn-primary">Tilaa</button>
            </form>
        </footer>
    </div>
</body>
</html>