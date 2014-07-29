# -*- encoding: utf-8 -*-
# stub: tweetstream 2.6.1 ruby lib

Gem::Specification.new do |s|
  s.name = "tweetstream"
  s.version = "2.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Bleigh", "Steve Agalloco"]
  s.date = "2014-01-22"
  s.description = "TweetStream is a simple wrapper for consuming the Twitter Streaming API."
  s.email = ["michael@intridea.com", "steve.agalloco@gmail.com"]
  s.homepage = "https://github.com/tweetstream/tweetstream"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.1"
  s.summary = "TweetStream is a simple wrapper for consuming the Twitter Streaming API."

  s.installed_by_version = "2.4.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<daemons>, ["~> 1.1"])
      s.add_runtime_dependency(%q<em-http-request>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<em-twitter>, ["~> 0.3"])
      s.add_runtime_dependency(%q<twitter>, ["~> 5.5"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<daemons>, ["~> 1.1"])
      s.add_dependency(%q<em-http-request>, [">= 1.1.1"])
      s.add_dependency(%q<em-twitter>, ["~> 0.3"])
      s.add_dependency(%q<twitter>, ["~> 5.5"])
      s.add_dependency(%q<multi_json>, ["~> 1.3"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<daemons>, ["~> 1.1"])
    s.add_dependency(%q<em-http-request>, [">= 1.1.1"])
    s.add_dependency(%q<em-twitter>, ["~> 0.3"])
    s.add_dependency(%q<twitter>, ["~> 5.5"])
    s.add_dependency(%q<multi_json>, ["~> 1.3"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
