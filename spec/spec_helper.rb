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

require "simplecov"
require "simplecov-lcov"

SimpleCov::Formatter::LcovFormatter.report_with_single_file = true
SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter

SimpleCov.start do
  add_filter "/spec"
end

require "drone"
require "rspec"
require "webmock/rspec"

Dir[File.expand_path("../support/**/*.rb", __FILE__)].each do |f|
  require f
end

RSpec.configure do |config|
  config.mock_with :rspec
  config.order = "random"

  config.include HelperMethods
end
