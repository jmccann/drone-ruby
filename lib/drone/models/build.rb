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
  # Represent `build` JSON as a model
  #
  class Build
    # Workaround to include virtus without YARD warning
    send :include, Virtus.model

    # @!attribute id
    #   @return [Integer] the ID of the build
    attribute :id, Integer

    # @!attribute number
    #   @return [Integer] the number of the build
    attribute :number, Integer

    # @!attribute event
    #   @return [String] the event of the build
    attribute :event, String

    # @!attribute status
    #   @return [String] the status of the build
    attribute :status, String

    # @!attribute deploy_to
    #   @return [String] the target of the deploy
    attribute :deploy_to, String

    # @!attribute commit
    #   @return [String] the commit hash of the build
    attribute :commit, String

    # @!attribute branch
    #   @return [String] the branch of the build
    attribute :branch, String

    # @!attribute ref
    #   @return [String] the reference of the build
    attribute :ref, String

    # @!attribute refspec
    #   @return [String] the reference spec of the build
    attribute :refspec, String

    # @!attribute remote
    #   @return [String] the remote name of the build
    attribute :remote, String

    # @!attribute title
    #   @return [String] the title of the build
    attribute :title, String

    # @!attribute message
    #   @return [String] the commit message of the build
    attribute :message, String

    # @!attribute link
    #   @return [String] the link to the current build
    attribute :link, String

    # @!attribute author
    #   @return [String] the commit author
    attribute :author, String

    # @!attribute author_avatar
    #   @return [String] the link to author avatar
    attribute :author_avatar, String

    # @!attribute author_email
    #   @return [String] the email of the author
    attribute :author_email, String

    # @!attribute timestamp
    #   @return [Time] the timestamp of the build
    attribute :timestamp, Time

    # @!attribute enqueued_at
    #   @return [Time] the time when the build have been enqueued
    attribute :enqueued_at, Time

    # @!attribute created_at
    #   @return [Time] the time when the build have been created
    attribute :created_at, Time

    # @!attribute started_at
    #   @return [Time] the time when the build have been started
    attribute :started_at, Time

    # @!attribute finished_at
    #   @return [Time] the time when the build have been finished
    attribute :finished_at, Time
  end
end
