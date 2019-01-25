lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "axlsx_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "axlsx_rails"
  s.version     = AxlsxRails::VERSION
  s.authors     = ["Noel Peden"]
  s.email       = ["noel@peden.biz"]
  s.homepage    = "https://github.com/straydogstudio/axlsx_rails"
  s.summary     = "A simple rails plugin to provide an xlsx renderer using the axlsx gem."
  s.description = "Axlsx_Rails provides an Axlsx renderer so you can move all your spreadsheet code from your controller into view files. Partials are supported so you can organize any code into reusable chunks (e.g. cover sheets, common styling, etc.) You can use it with acts_as_xlsx, placing the to_xlsx call in a view and adding ':package => xlsx_package' to the parameter list. Now you can keep your controllers thin!"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  s.add_dependency "actionpack", ">= 3.1"
  s.add_dependency "axlsx-alt", ">= 3.0.0"

  # s.add_development_dependency "bundler"
  # s.add_development_dependency "rake"
  # s.add_development_dependency "rspec-rails"
  # s.add_development_dependency "guard-rspec"
  # s.add_development_dependency "capybara"
  # s.add_development_dependency "acts_as_xlsx"
  # s.add_development_dependency "roo"
  # s.add_development_dependency "rubyzip"
  # s.add_development_dependency "sqlite3"
  # s.add_development_dependency "growl"
  # s.add_development_dependency "rb-fsevent"
  # s.add_development_dependency "coveralls"
  # s.add_development_dependency "pry"
  # s.add_development_dependency "pry-nav"
end
