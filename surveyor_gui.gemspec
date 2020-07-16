$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "surveyor_gui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "surveyor_gui"
  s.version     = SurveyorGui::VERSION
  s.authors     = ["Sandeep Sngh"]
  s.email       = ["sandeep.corder98@gmail.com"]
  s.homepage    =  %q{https://github.com/Sandeepcoder98/surveyor_gui.git}
  s.post_install_message = %q{Thanks for installing surveyor_gui! The time has come to run the surveyor_gui generator and migrate your database, even if you are upgrading.}
  s.summary     = "A Rails gem to supply a front-end and reporting capability to the Surveyor gem."

  #s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.files = `git ls-files`.split("\n") - ['irb']
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'rails', '~> 6.0.3.1'
  s.add_dependency 'dynamic_form', '~> 1.1.4'
  #s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'jquery-ui-sass-rails'

  s.add_development_dependency "sqlite3"

  s.add_development_dependency 'sass-rails','< 5.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'uglifier', '>= 1.0.3'
  s.add_development_dependency('rspec-rails', '~> 2.14.2')
  s.add_development_dependency('capybara', '~> 3.33')
  s.add_development_dependency('launchy', '~> 2.4.2')
  s.add_development_dependency('poltergeist', '~>1.18')
  # s.add_development_dependency('capybara-webkit','~> 1.15', '>= 1.15.1' )
  s.add_development_dependency('json_spec', '~> 1.1.1')
  s.add_development_dependency('factory_girl', '~> 4.4.0')
  s.add_development_dependency('database_cleaner', '~> 1.2.0')
  s.add_development_dependency('rspec-retry')

  s.add_dependency 'surveyor', '~> 1.4.1.pre'
  s.add_dependency 'will_paginate', '~> 3.3.0'

  s.add_dependency 'simple_form', '~> 5.0.2'
  s.add_dependency 'carrierwave'
  s.add_dependency 'colorbox-rails', '~> 0.1.1'
  s.add_dependency 'jquery-form-rails', '~> 1.0.1'
  s.add_dependency 'deep_cloneable', '~> 3.0.0'  
  s.add_dependency 'lazy_high_charts' 
end
