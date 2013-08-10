
require 'rake'

namespace :git do
  desc "make a git tag"
  task :tag do
    version = `awk -F \\\" ' /version/ { print $2 } ' arraymath.gemspec`
    puts "Tagging git with version=#{version}"
    system "git tag #{version}"
    system "git push --tags"
  end
end

namespace :gem do
  desc "Install the gem locally"
  task :install do
    puts "Building gem"
    `gem build arraymath.gemspec`
    puts "Installing gem"
    `sudo gem install ./arraymath-*.gem`
    puts "Removing built gem"
    `rm arraymath-*.gem`
  end
end

