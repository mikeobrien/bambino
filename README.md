# bambino

bambino is a [headless](http://phantomjs.org) [jasmine](https://github.com/pivotal/jasmine) test runner with first class support for [require.js](http://github.com/jrburke/requirejs).

the skinny:

* can autodiscover require.js single page apps and their corresponding tests
* can read require.js path configuration
* can run tests in [seperate](bambino/tree/master/example/seperate) or [combined](bambino/tree/master/example/combined) folder structure
* can save test results as junit xml or html (a la jasmine test runner)
* can generate stand alone test runners
* has autotest mode
* has TeamCity integration
* has rake support

## command line reference

    phantomjs.exe bambino path/to/app(s)/root [options]
    
* **--run**: run all tests
* **--auto-run**: auto run all tests
* **--auto-run-frequency**: frequency (seconds) to auto run tests, defaults to 2
* **--create-runner**: generate standalone test runner(s)
* **--runner-filename**: runner name, defaults to "SpecRunner.html"
* **--app-filter**: app file pattern, defaults to "main.js"
* **--specs-path**: path that contains specs, defaults to app root
* **--spec-filter**: spec file pattern, defaults to "*.specs.js"
* **--require-path**: path to require.js files, do not include the filename
* **--jasmine-path**: path to jasmine.js files, do not include the filename
* **--output-path**: path for report output
* **--xml-output-path**: path for xml report output, defaults to output-path
* **--html-output-path**: path for html report output, defaults to output-path
* **--output-filename**: filename of report, defaults to "results"
* **--xml-output-filename**: filename of xml report, defaults to output-filename
* **--html-output-filename**: filename of html report, defaults to output-filename
* **--output**: output type, multiple allowed: xml, html, teamcity
* **--script-path**: path to a script, multiple allowed
* **--module-path**: path to a require.js module, multiple allowed

## rake task refference

    bambino :javascript_unit_tests do |options|
        options.phantom_path = 'src/HerpDerp.Tests/Client/lib/phantomjs'
        options.bambino_path = 'src/HerpDerp.Tests/Client/lib'
        options.path = "src/HerpDerp.Web"
        options.create_runner = true
        options.runner_filename = '~SpecRunner.html'
        options.app_filter = 'main.js'
        options.specs_path = "src/HerpDerp.Tests/Client/specs"
        options.spec_filter = '*.specs.js'
        options.require_path = "src/HerpDerp.Tests/Client/lib"
        options.jasmine_path = "src/HerpDerp.Tests/Client/lib/jasmine"
        options.teamcity_output = true
        options.xml_output = true
        options.html_output = true
        options.output_path = 'reports'
        options.xml_output_path = 'reports/xml'
        options.html_output_path = 'reports/html'
        options.output_filename = 'results'
        options.xml_output_filename = 'xmlresults'
        options.html_output_filename = 'htmlresults'
        options.add_script_paths('src/HerpDerp.Tests/Client/lib/jasmine/jasmine-jquery.js', 'src/HerpDerp.Tests/Client/lib/sinon.js')
        options.add_module_paths('src/HerpDerp.Web/scripts/underscore/underscore-config.js', 'src/HerpDerp.Web/scripts/postal.js')
    end

* **phantom_path**: path to the phantom binary, you do not have to include the filename
* **bambino_path**: path to the bambino script, you do not have to include the filename
* **path**: path the to root of your single page apps
* **create_runner**: generate standalone test runner(s)
* **runner_filename**: runner name, defaults to "SpecRunner.html"
* **app_filter**: app file pattern, defaults to "main.js"
* **specs_path**: path that contains specs, defaults to app root
* **spec_filter**: spec file pattern, defaults to "*.specs.js"
* **require_path**: path to require.js files, do not include the filename
* **jasmine_path**: path to jasmine.js files, do not include the filename
* **xml_output**: create xml report
* **html_output**: create html report
* **teamcity_output**: output teamcity commands
* **output_path**: path for report output
* **xml_output_path**: path for xml report output, defaults to output-path
* **html_output_path**: path for html report output, defaults to output-path
* **output_filename**: filename of report, defaults to "results"
* **xml_output_filename**: filename of xml report, defaults to output-filename
* **html_output_filename**: filename of html report, defaults to output-filename
* **add_script_paths(*paths)**: paths to scripts
* **add_module_paths(*paths)**: paths to a require.js modules



