..\lib\phantomjs\phantomjs.exe ../../src/bambino.coffee src/www --run --create-runner --app-filter main.js --tests-path src/specs --test-filter *.specs.js --require-path ../lib/require.js --jasmine-path ../lib/jasmine/jasmine.js --script-path ../lib/jasmine/jasmine-jquery.js --module-path src/www/scripts/underscore/underscore-config.js --output xml --output html --output-filename ~results