Gem::Specification.new do |spec|
  spec.name        = "permit-sdk"
  spec.version     = "0.0.1"
  spec.authors     = ["Permit.io"]
  spec.email       = ["raz@permit.io"]
  spec.summary     = "Permit.io Server SDK"
  spec.homepage    = "https://permit.io"
  spec.license     = "Apache-2.0"

  spec.files = Dir["lib/**/*"]

  spec.add_development_dependency "rspec"
end