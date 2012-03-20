require_relative "bambino-task"

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