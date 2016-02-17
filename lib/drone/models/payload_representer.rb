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
  # Transform toplevel JSON payload
  #
  class PayloadRepresenter < Representable::Decorator
    include Representable::JSON

    # @!attribute repo
    #   @return [Drone::Repo] the repo configuration
    property :repo,
      decorator: RepoRepresenter,
      class: Repo

    # @!attribute system
    #   @return [Drone::System] the system configuration
    property :system,
      decorator: SystemRepresenter,
      class: System

    # @!attribute build
    #   @return [Drone::Build] the build configuration
    property :build,
      decorator: BuildRepresenter,
      class: Build

    # @!attribute workspace
    #   @return [Drone::Workspace] the workspace configuration
    property :workspace,
      decorator: WorkspaceRepresenter,
      class: Workspace

    # @!attribute vargs
    #   @return [Hash] the plugin specific payload
    property :vargs
  end
end
