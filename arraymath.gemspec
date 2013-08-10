Gem::Specification.new do |s|
  s.name = "arraymath"
  s.version = "0.1.0"
  s.email = "david@nicklay.com"
  s.homepage = "https://github.com/venturaville/rubyMathFunctions/blob/master/README.md"
  s.authors = ["David Nicklay"]
  s.summary = "Array Math Functions"
  s.files = Dir['lib/**/*.rb'] + Dir['bin/*'] + Dir['examples/*.rb']
  s.description = "Array Math Functions - for analysis"
  s.bindir = "bin"
  s.executables = %w{ }
  %w{ holt_winters }.each do |d|
    s.add_dependency d
  end
end
