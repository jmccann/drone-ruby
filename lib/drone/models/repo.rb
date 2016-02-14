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
  # Represent `repo` JSON as a model
  #
  class Repo
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute id
    #   @return [Integer] the ID of the repo
    attribute :id, Integer

    # @!attribute owner
    #   @return [String] the owner name
    attribute :owner, String

    # @!attribute name
    #   @return [String] the repo name
    attribute :name, String

    # @!attribute full_name
    #   @return [String] the full repo name
    attribute :full_name, String

    # @!attribute avatar
    #   @return [String] the URL to the repo avatar
    attribute :avatar, String

    # @!attribute link
    #   @return [String] the URL to the repo website
    attribute :link, String

    # @!attribute clone
    #   @return [String] the URL to the repo SCM system
    attribute :clone, String

    # @!attribute branch
    #   @return [String] the repo default branch
    attribute :branch, String

    # @!attribute timeout
    #   @return [Integer] the timeout value
    attribute :timeout, Integer

    # @!attribute private
    #   @return [Boolean] the flag if repo is private
    attribute :private, Boolean

    # @!attribute trusted
    #   @return [Boolean] the flag if the repo is trusted
    attribute :trusted, Boolean

    # @!attribute pr
    #   @return [Boolean] the flag if pull requests are allowed
    attribute :pr, Boolean

    # @!attribute push
    #   @return [Boolean] the flag if pushs are allowed
    attribute :push, Boolean

    # @!attribute deploys
    #   @return [String] the flag if deploys are allowed
    attribute :deploys, Boolean

    # @!attribute tags
    #   @return [String] the flag if tags are allowed
    attribute :tags, Boolean
  end
end
