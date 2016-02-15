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

require "spec_helper"
require "stringio"

describe Drone::Plugin do
  subject { ::Drone::Plugin }

  before do
    $stdout = StringIO.new
    $stderr = StringIO.new
  end

  after do
    $stdout = STDOUT
    $stderr = STDERR
  end

  context "with valid input" do
    it "returns a payload" do
      expect(
        subject.new("{}").parse
      ).to(
        be_a(
          Drone::Payload
        )
      )
    end

    context "passed a block" do
      it "returns a payload" do
        payload = subject.new('{"vargs": {"name": "johndoe"}}').parse.tap do |p|
          puts "name: #{p.vargs.name}"
        end

        expect(payload).to be_a Drone::Payload
        expect($stdout.string).to match "name: johndoe"
      end

      it "returns a plugin" do
        plugin = subject.new('{"vargs": {"name": "johndoe"}}') do |p|
          puts "name: #{p.vargs.name}"
        end

        expect(plugin).to be_a Drone::Plugin
        expect($stdout.string).to match "name: johndoe"
      end
    end
  end

  context "with broken input" do
    it "raises an exception" do
      expect do
        subject.new("{").parse
      end.to(
        raise_error(
          Drone::InvalidJsonError
        )
      )
    end
  end
end
