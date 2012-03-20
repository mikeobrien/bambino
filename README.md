# bambino

bambino is a [headless](http://phantomjs.org) [jasmine](https://github.com/pivotal/jasmine) test runner with first class support for [require.js](http://github.com/jrburke/requirejs).

The skinny:

* powered by [PhantomJS](http://phantomjs.org)
* autodiscover single page apps and their corresponding tests
* run tests in seperate folder structure
* save test results as junit xml or html (a la jasmine test runner)
* autotest mode
* TeamCity integration
* generate stand alone test runners
* rake task

## command line reference

    phantomjs.exe bambino path/to/app/root [options]
    
* **--run**: run all tests
* **--auto-run**: auto run all tests
* **--auto-run-frequency**: frequency (seconds) to auto run tests, defaults to 2
* **--create-runner**: generate standalone test runner(s)
* **--runner-filename**: runner name, defaults to "SpecRunner.html"
* **--app-filter**: app file pattern, defaults to "main.js"
* **--specs-path**: path that contains specs, defaults to app root
* **--spec-filter**: spec file pattern, defaults to "*.specs.js"
* **--require-path**: path to require.js files
* **--jasmine-path**: path to jasmine.js files
* **--output-path**: path for report output
* **--xml-output-path**: ath for xml report output, defaults to output-path
* **--html-output-path**: path for html report output, defaults to output-path
* **--output-filename**: filename of report, defaults to "results"
* **--xml-output-filename**: filename of xml report, defaults to output-filename
* **--html-output-filename**: filename of html report, defaults to output-filename
* **--output***: output type: xml, html, teamcity
* **--script-path***: path to a script
* **--module-path***: path to a require.js module