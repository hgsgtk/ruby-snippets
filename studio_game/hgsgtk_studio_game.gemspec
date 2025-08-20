Gem::Specification.new do |spec|
  spec.name = "hgsgtk_studio_game"
  spec.version = "1.0.1"
  spec.summary = "A game about players and treasures"
  spec.authors = ["Kazuki Higashiguchi"]
  spec.email = ["hgsgtk@gmail.com"]
  spec.license = "MIT"

  spec.files = Dir["{bin,lib}/**/*"] + %w[LICENSE.txt README.md]
  spec.executables = ["studio_game"]

  spec.required_ruby_version = ">= 3.2.0"
end
