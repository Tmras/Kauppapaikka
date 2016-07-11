<html>
<head>
    <title> Kauppapaikka</title>
    <link href="http://cdn.jsdelivr.net/webjars/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen" />

    <script src="http://cdn.jsdelivr.net/webjars/jquery/2.1.4/jquery.min.js"></script>
</head>
<body style="background-color: floralwhite">
    <div class="container">
        <div id="header">
            <div class="jumbotron" style="background-color: lightgreen">
                <h1>Kauppapaikka</h1>
                <p>Täällä voit jättää oman myynti-ilmoituksesi</p>
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
        <div id="content">
            <!-- ilmoituksen jättö lomake-->
            <fieldset>
                <legend>Lisää ilmoitus</legend>
                <form class="form-horizontal" name="ad" action="" method="post">
                    <div class="form-group" style="margin-right: 150px;">
                        <label for="title" class="col-sm-2 control-label">Otsikko</label>
                        <div class="col-sm-10">
                            <input type="text" id="title" class="form-control" name="title" required="required" />
                        </div>
                    </div>
                    <div class="form-group" style="margin-right: 150px;">
                        <label for="description" class="col-sm-2 control-label">Kuvaus</label>
                        <div class="col-sm-10" style="">
                            <textarea id="description" class="form-control" rows="5" name="description" required="required"></textarea>
                        </div>
                    </div>
                    <div class="form-group" style="margin-right: 150px;">
                        <label for="priceCents" class="col-sm-2 control-label">Hinta</label>
                        <div class="col-sm-10">
                            <input type="text" id="priceCents" class="form-control" name="priceCents" required="required"/>
                        </div>
                    </div>
                    <div class="form-group" style="margin-right: 150px;">
                        <label for="email" class="col-sm-2 control-label">Sähköposti</label>
                        <div class="col-sm-10">
                            <input type="email" id="email" class="form-control" name="email" required="required"/>
                        </div>
                    </div>
                    <div class="form-group" style="margin-right: 150px;">
                        <label for="phone" class="col-sm-2 control-label">Puhelin</label>
                        <div class="col-sm-10">
                            <input type="text" id="phone" class="form-control" name="phone" required="required"/>
                        </div>
                    </div>
                    <div style="margin-left: 170px;">
                        <input type="submit" class="btn btn-primary" value="Jätä ilmoitus" />
                    </div>
                </form>
            </fieldset>
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