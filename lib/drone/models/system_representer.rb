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

require "representable/json"

module Drone
  #
  # Transform `system` JSON payload
  #
  class SystemRepresenter < Representable::Decorator
    include Representable::JSON

    # @!attribute version
    #   @return [String] the version of the Drone server
    property :version

    # @!attribute link
    #   @return [String] the link to the Drone server
    property :link,
      as: :link_url

    # @!attribute plugins
    #   @return [Array] the used plugins within the build
    collection :plugins

    # @!attribute privileged
    #   @return [Array] the list of privileged plugins
    collection :privileged,
      as: :privileged_plugins

    # @!attribute globals
    #   @return [Array] the used global environment vars
    collection :globals
  end
end
