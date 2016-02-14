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
  # Represent `system` JSON as a model
  #
  class System
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute version
    #   @return [String] the version of the Drone server
    attribute :version, String

    # @!attribute link
    #   @return [String] the link to the Drone server
    attribute :link, String

    # @!attribute plugins
    #   @return [Array] the used plugins within the build
    attribute :plugins, Array[String]

    # @!attribute privileged
    #   @return [Array] the list of privileged plugins
    attribute :privileged, Array[String]

    # @!attribute globals
    #   @return [Array] the used global environment vars
    attribute :globals, Array[String]
  end
end
