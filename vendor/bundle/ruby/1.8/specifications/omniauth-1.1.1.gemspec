# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{omniauth}
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh", "Erik Michaels-Ober"]
  s.date = %q{2012-08-24}
  s.description = %q{A generalized Rack framework for multiple-provider authentication.}
  s.email = ["michael@intridea.com", "sferik@gmail.com"]
  s.files = ["spec/omniauth/auth_hash_spec.rb", "spec/omniauth/builder_spec.rb", "spec/omniauth/failure_endpoint_spec.rb", "spec/omniauth/form_spec.rb", "spec/omniauth/strategies/developer_spec.rb", "spec/omniauth/strategy_spec.rb", "spec/omniauth_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/intridea/omniauth}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A generalized Rack framework for multiple-provider authentication.}
  s.test_files = ["spec/omniauth/auth_hash_spec.rb", "spec/omniauth/builder_spec.rb", "spec/omniauth/failure_endpoint_spec.rb", "spec/omniauth/form_spec.rb", "spec/omniauth/strategies/developer_spec.rb", "spec/omniauth/strategy_spec.rb", "spec/omniauth_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, ["~> 1.2"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<hashie>, ["~> 1.2"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<hashie>, ["~> 1.2"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end