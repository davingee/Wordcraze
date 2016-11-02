# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ntlm-http}
  s.version = "0.1.1"

  s.required_rubygems_version = nil if s.respond_to? :required_rubygems_version=
  s.authors = ["Kohei Kajimoto,Kingsley Hendrickse"]
  s.autorequire = %q{net/ntlm_http}
  s.cert_chain = nil
  s.date = %q{2009-05-19}
  s.description = %q{Ruby/NTLM HTTP provides NTLM authentication over http.}
  s.email = %q{kingsley@mindflowsolutions.com}
  s.homepage = %q{http://www.mindflowsolutions.net}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = %q{rubyntlm}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby/NTLM HTTP library.}

  if s.respond_to? :specification_version then
    s.specification_version = 1

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
