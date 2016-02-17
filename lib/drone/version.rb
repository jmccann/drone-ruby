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

module Drone
  #
  # Current version of the Ruby client
  #
  class Version
    MAJOR = 1
    MINOR = 0
    PATCH = 0

    PRE = nil

    class << self
      # Return the current version
      #
      # @return [String] the current version of the implementation
      def to_s
        [MAJOR, MINOR, PATCH, PRE].compact.join(".")
      end
    end
  end
end
