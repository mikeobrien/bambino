require.config({
    paths: {
        "jquery": "../scripts/jquery",
        "underscore": "../scripts/underscore/underscore",
        "_config": "../scripts/underscore/underscore-config",
        "backbone": "../scripts/backbone",
        "text": "../scripts/require/text"
    }
});

require(['app', '_config'], function(app) {
    return app.start();
});