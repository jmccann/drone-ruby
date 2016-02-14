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
  # Transform `repo` JSON payload
  #
  class RepoRepresenter < Representable::Decorator
    include Representable::JSON

    # @!attribute id
    #   @return [Integer] the ID of the repo
    property :id

    # @!attribute owner
    #   @return [String] the owner name
    property :owner

    # @!attribute name
    #   @return [String] the repo name
    property :name

    # @!attribute full_name
    #   @return [String] the full repo name
    property :full_name

    # @!attribute avatar
    #   @return [String] the URL to the repo avatar
    property :avatar,
      as: :avatar_url

    # @!attribute link
    #   @return [String] the URL to the repo website
    property :link,
      as: :link_url

    # @!attribute clone
    #   @return [String] the URL to the repo SCM system
    property :clone,
      as: :clone_url

    # @!attribute branch
    #   @return [String] the repo default branch
    property :branch,
      as: :default_branch

    # @!attribute timeout
    #   @return [Integer] the timeout value
    property :timeout

    # @!attribute private
    #   @return [Boolean] the flag if repo is private
    property :private

    # @!attribute trusted
    #   @return [Boolean] the flag if the repo is trusted
    property :trusted

    # @!attribute pr
    #   @return [Boolean] the flag if pull requests are allowed
    property :pr,
      as: :allow_pr

    # @!attribute push
    #   @return [Boolean] the flag if pushs are allowed
    property :push,
      as: :allow_push

    # @!attribute deploys
    #   @return [String] the flag if deploys are allowed
    property :deploys,
      as: :allow_deploys

    # @!attribute tags
    #   @return [String] the flag if tags are allowed
    property :tags,
      as: :allow_tags
  end
end
