# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{unf_ext}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Takeru Ohta", "Akinori MUSHA"]
  s.date = %q{2012-05-30}
  s.description = %q{Unicode Normalization Form support library for CRuby}
  s.email = %q{knu@idaemons.org}
  s.extensions = ["ext/unf_ext/extconf.rb"]
  s.files = ["ext/unf_ext/extconf.rb"]
  s.homepage = %q{http://github.com/knu/ruby-unf_ext}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Unicode Normalization Form support library for CRuby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0.7.9"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.3"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rake-compiler>, [">= 0.7.9"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.3"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rake-compiler>, [">= 0.7.9"])
  end
end
