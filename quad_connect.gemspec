Gem::Specification.new do |s|
  s.name      = "quad_connect"
  s.version   = "1.0.0"
  s.platform  = Gem::Platform::RUBY
  s.summary   = "Eric and Nathan‘s Quad Connect™ Turing School project"
  s.description = "Digital version of the Classic Connect Four boardgame."
  s.authors   = ["Eric Belongea", "Nathan Trautenberg"]
  s.email     = ["ebelongea23@turing.edu"]
  s.homepage  = "https://github.com/EricBelongea/connect_four"
  s.license   = "MIT"
  s.files     = Dir.glob(“{lib,bin}/**/*“) # This includes all files under the lib directory recursively, so we don’t have to add each one individually.
  s.require_path = "lib"
  s.executables = ["quad_connect"]
end