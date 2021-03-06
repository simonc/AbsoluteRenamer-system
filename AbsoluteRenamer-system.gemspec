# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{AbsoluteRenamer-system}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simon COURTOIS"]
  s.date = %q{2009-10-17}
  s.description = %q{AbsoluteRenamer extension that provides system informations (such as username, OS name, ...) to include in the filename format}
  s.email = %q{happynoff@free.fr}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "AbsoluteRenamer-system.gemspec",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/AbsoluteRenamer-system.rb",
     "lib/AbsoluteRenamer-system/module.rb",
     "test/AbsoluteRenamer-system_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/simonc/AbsoluteRenamer-system}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{AbsoluteRenamer-system}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{AbsoluteRenamer extension - System}
  s.test_files = [
    "test/AbsoluteRenamer-system_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
  end
end
