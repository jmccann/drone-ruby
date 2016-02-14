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
  # Represent `netrc` JSON as a model
  #
  class Netrc
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute machine
    #   @return [String] the host for the netrc
    attribute :machine, String

    # @!attribute login
    #   @return [String] the username for the netrc
    attribute :login, String

    # @!attribute password
    #   @return [String] the password for the netrc
    attribute :password, String
  end
end
