Gem::Specification.new do |s|
  s.name = "arraymath"
  s.version = "0.1.1"
  s.email = "david@nicklay.com"
  s.homepage = "https://github.com/venturaville/rubyMathFunctions/blob/master/README.md"
  s.authors = ["David Nicklay"]
  s.summary = "Array Math Functions"
  s.files = Dir['lib/*.rb'] + Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['examples/*.rb']
  s.description = "Array Math Functions - for analysis"
  s.bindir = "bin"
  s.executables = %w{ }
  s.add_dependency 'ruby-standard-deviation', '2.0.0'
end
