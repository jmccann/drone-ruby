#
# Copyright 2016 Drone.io Developers
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "drone/version"

Gem::Specification.new do |s|
  s.name = "droneio"
  s.version = Drone::Version
  s.date = Time.now.utc.strftime("%F")

  s.authors = ["Thomas Boerger"]
  s.email = ["thomas@webhippie.de"]

  s.summary = <<-EOF
    DroneCI client and plugin helper
  EOF

  s.description = <<-EOF
    DroneCI client and plugin helper
  EOF

  s.homepage = "https://github.com/drone/drone-ruby"
  s.license = "Apache-2.0"

  s.files = ["CHANGELOG.md", "README.md", "LICENSE"]
  s.files += Dir.glob("lib/**/*")
  s.files += Dir.glob("bin/**/*")

  s.test_files = Dir.glob("spec/**/*")

  s.executables = []
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 1.9.3"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "yard"
  s.add_development_dependency "rspec"
  s.add_development_dependency "webmock"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "simplecov-lcov"
  s.add_development_dependency "rubocop"

  s.add_runtime_dependency "virtus", ">= 1.0.5"
  s.add_runtime_dependency "httparty", ">= 0.13.7"
  s.add_runtime_dependency "hashie", ">= 3.4.3"
  s.add_runtime_dependency "representable", ">= 3.0.0"
  s.add_runtime_dependency "multi_json", ">= 1.11.2"
end
