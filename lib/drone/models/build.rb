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
  class Build
    include Virtus.model

    attribute :id, Integer
    attribute :number, Integer
    attribute :event, String
    attribute :status, String
    attribute :deploy_to, String
    attribute :commit, String
    attribute :branch, String
    attribute :ref, String
    attribute :refspec, String
    attribute :remote, String
    attribute :title, String
    attribute :message, String
    attribute :link, String
    attribute :author, String
    attribute :author_avatar, String
    attribute :author_email, String
    attribute :timestamp, Time
    attribute :enqueued_at, Time
    attribute :created_at, Time
    attribute :started_at, Time
    attribute :finished_at, Time
  end
end
