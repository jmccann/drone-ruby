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

require "virtus"

module Drone
  #
  # Represent `key` JSON as a model
  #
  class Key
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute public
    #   @return [String] the public SSH key
    attribute :public, String

    # @!attribute private
    #   @return [String] the private SSH key
    attribute :private, String
  end
end
