<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="csrf-token" content="{{ csrf_token() }}" />

        <title>Pharmacy Finder</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css" />

        <!-- Site CSS -->
        <link href="/css/app.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="container" id="app">
            <h3>Find Your Closest Pharmacy</h3>
            <div class="row">
                <div class="col-xs-12">
                    <location-entry :latitude="latitude" :longitude="longitude"></location-entry>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <location-list :locations="locations"></location-list>
                </div>
                <div class="col-xs-12 col-md-8">
                    <location-map :locations="locations"></location-map>
                </div>
            </div>
        </div>

        <script src="/js/manifest.js"></script>
        <script src="/js/vendor.js"></script>
        <script src="/js/app.js"></script>
    </body>
</html>
