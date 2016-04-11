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

require "json"

require_relative "models/payload_representer"
require_relative "models/payload"

module Drone
  #
  # Plugin payload parser for Drone
  #
  class Plugin
    attr_accessor :input
    attr_accessor :result

    # Initialize the plugin parser
    #
    # @param input [String] the JSON as a string to parse
    # @return [Drone::Plugin] the instance of that class
    def initialize(input)
      self.input = input

      yield(
        parse
      ) if block_given?
    end

    # Parse the provided payload
    #
    # @return [Drone::Payload] the parsed payload within model
    # @raise [Drone::InvalidJsonError] if the provided JSON is invalid
    def parse
      self.result ||= Payload.new.tap do |payload|
        PayloadRepresenter.new(
          payload
        ).from_json(
          input
        )
      end
    rescue MultiJson::ParseError
      raise InvalidJsonError
    end
  end
end
