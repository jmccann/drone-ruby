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

  let(:valid_input) do
    "{\"vargs\": {\"name\": \"johndoe\"}}"
  end

  let(:invalid_input) do
    "{\"vargs\": {}"
  end

  context "with valid input" do
    it "returns a plugin" do
      instance = subject.new(
        valid_input
      )

      expect(
        instance
      ).to(
        be_a(
          Drone::Plugin
        )
      )
    end

    it "returns a payload" do
      instance = subject.new(
        valid_input
      ).parse

      expect(
        instance
      ).to(
        be_a(
          Drone::Payload
        )
      )
    end

    context "passed a block" do
      it "returns a payload" do
        subject.new(valid_input) do |p|
          $stdout.puts "name: #{p.vargs.name}"
        end

        expect(
          $stdout.string
        ).to(
          match(
            "name: johndoe"
          )
        )
      end
    end
  end

  context "with broken input" do
    it "raises an exception" do
      expect do
        subject.new(
          invalid_input
        ).parse
      end.to(
        raise_error(
          Drone::InvalidJsonError
        )
      )
    end
  end
end
