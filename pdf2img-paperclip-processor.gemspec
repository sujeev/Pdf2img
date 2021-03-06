# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pdf2img-paperclip-processor/version"

Gem::Specification.new do |s|
  s.name        = "pdf2img-paperclip-processor"
  s.version     = Pdf2img::Paperclip::Processor::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author     = "Sujeev Vidanapathirana"
  s.email       = "sujeev@gmail.com"
  s.homepage    = "https://github.com/sujeev/pdf2img-paperclip-processor"
  s.summary     = %q{Converts uploaded pdf to img}
  s.description = %q{This gem is a simple Paperclip processor which uses rmagick to convert uploaded pdf files to a image file. This processor supports multiple pages}

  s.homepage = 'https://github.com/sujeev/Pdf2img'
  # s.rubyforge_project = "pdf2img-paperclip-processor"
  
  # s.add_dependency "paperclip", "~> 5.0.0"
  s.add_runtime_dependency 'paperclip', '~> 5.1', '>= 5.1.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
