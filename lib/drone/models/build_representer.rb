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
  # Transform `build` JSON payload
  #
  class BuildRepresenter < Representable::Decorator
    include Representable::JSON

    # @!attribute id
    #   @return [Integer] the ID of the build
    property :id

    # @!attribute number
    #   @return [Integer] the number of the build
    property :number

    # @!attribute event
    #   @return [String] the event of the build
    property :event

    # @!attribute status
    #   @return [String] the status of the build
    property :status

    # @!attribute deploy_to
    #   @return [String] the target of the deploy
    property :deploy_to

    # @!attribute commit
    #   @return [String] the commit hash of the build
    property :commit

    # @!attribute branch
    #   @return [String] the branch of the build
    property :branch

    # @!attribute ref
    #   @return [String] the reference of the build
    property :ref

    # @!attribute refspec
    #   @return [String] the reference spec of the build
    property :refspec

    # @!attribute remote
    #   @return [String] the remote name of the build
    property :remote

    # @!attribute title
    #   @return [String] the title of the build
    property :title

    # @!attribute message
    #   @return [String] the commit message of the build
    property :message

    # @!attribute link
    #   @return [String] the link to the current build
    property :link,
      as: :link_url

    # @!attribute author
    #   @return [String] the commit author
    property :author

    # @!attribute author_avatar
    #   @return [String] the link to author avatar
    property :author_avatar

    # @!attribute author_email
    #   @return [String] the email of the author
    property :author_email

    # @!attribute timestamp
    #   @return [Time] the timestamp of the build
    property :timestamp,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].timestamp = Time.at(
          options[:fragment]
        ).utc
      }

    # @!attribute enqueued_at
    #   @return [Time] the time when the build have been enqueued
    property :enqueued_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].enqueued_at = Time.at(
          options[:fragment]
        ).utc
      }

    # @!attribute created_at
    #   @return [Time] the time when the build have been created
    property :created_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].created_at = Time.at(
          options[:fragment]
        ).utc
      }

    # @!attribute started_at
    #   @return [Time] the time when the build have been started
    property :started_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].started_at = Time.at(
          options[:fragment]
        ).utc
      }

    # @!attribute finished_at
    #   @return [Time] the time when the build have been finished
    property :finished_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].finished_at = Time.at(
          options[:fragment]
        ).utc
      }
  end
end
