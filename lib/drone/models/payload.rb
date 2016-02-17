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

require "hashie"
require "virtus"

module Drone
  #
  # Represent toplevel JSON as a model
  #
  class Payload
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute repo
    #   @return [Drone::Repo] the repo configuration
    attribute :repo, Repo

    # @!attribute system
    #   @return [Drone::System] the system configuration
    attribute :system, System

    # @!attribute build
    #   @return [Drone::Build] the build configuration
    attribute :build, Build

    # @!attribute workspace
    #   @return [Drone::Workspace] the workspace configuration
    attribute :workspace, Workspace

    # @!attribute vargs
    #   @return [Hash] the plugin specific payload
    attribute :vargs, Hash

    # @return [Hashie::Mash] the plugin specific payload
    def vargs
      Hashie::Mash.new(
        super
      )
    end
  end
end
