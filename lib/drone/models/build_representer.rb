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
  class BuildRepresenter < Representable::Decorator
    include Representable::JSON

    property :id
    property :number
    property :event
    property :status
    property :deploy_to
    property :commit
    property :branch
    property :ref
    property :refspec
    property :remote
    property :title
    property :message
    property :author
    property :author_avatar
    property :author_email

    property :link,
      as: :link_url

    property :timestamp,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].timestamp = Time.at(
          options[:fragment]
        ).utc
      }

    property :enqueued_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].enqueued_at = Time.at(
          options[:fragment]
        ).utc
      }

    property :created_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].created_at = Time.at(
          options[:fragment]
        ).utc
      }

    property :started_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].started_at = Time.at(
          options[:fragment]
        ).utc
      }

    property :finished_at,
      setter: lambda { |options| # rubocop:disable Style/BlockDelimiters
        options[:represented].finished_at = Time.at(
          options[:fragment]
        ).utc
      }
  end
end
