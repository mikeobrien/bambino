require_relative "bambino-task"

bambino :javascript_unit_tests do |options|
    options.phantom_path = "src/HerpDerp.Tests/Client/lib/phantomjs"
    options.bambino_path = "src/HerpDerp.Tests/Client/lib"
    options.path = "src/HerpDerp.Web"
    options.specs_path = "src/HerpDerp.Tests/Client/specs"
    options.require_path = "src/HerpDerp.Tests/Client/lib"
    options.jasmine_path = "src/HerpDerp.Tests/Client/lib/jasmine"
    options.teamcity_output = true
    options.xml_output = true
    options.html_output = true
    options.output_path = File.join(reportsPath, "bambino")
    options.add_script_paths('src/HerpDerp.Tests/Client/lib/jasmine/jasmine-jquery.js')
    options.add_module_paths('src/HerpDerp.Web/scripts/underscore/underscore-config.js')
end