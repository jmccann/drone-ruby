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

module Drone
  class InvalidJsonError < StandardError
  end

  autoload :Version,
    File.expand_path("../drone/version", __FILE__)

  autoload :Client,
    File.expand_path("../drone/client", __FILE__)

  autoload :Plugin,
    File.expand_path("../drone/plugin", __FILE__)

  autoload :Vargs,
    File.expand_path("../drone/models/vargs", __FILE__)

  autoload :VargsRepresenter,
    File.expand_path("../drone/models/vargs_representer", __FILE__)

  autoload :Build,
    File.expand_path("../drone/models/build", __FILE__)

  autoload :BuildRepresenter,
    File.expand_path("../drone/models/build_representer", __FILE__)

  autoload :Key,
    File.expand_path("../drone/models/key", __FILE__)

  autoload :KeyRepresenter,
    File.expand_path("../drone/models/key_representer", __FILE__)

  autoload :Netrc,
    File.expand_path("../drone/models/netrc", __FILE__)

  autoload :NetrcRepresenter,
    File.expand_path("../drone/models/netrc_representer", __FILE__)

  autoload :Repo,
    File.expand_path("../drone/models/repo", __FILE__)

  autoload :RepoRepresenter,
    File.expand_path("../drone/models/repo_representer", __FILE__)

  autoload :System,
    File.expand_path("../drone/models/system", __FILE__)

  autoload :SystemRepresenter,
    File.expand_path("../drone/models/system_representer", __FILE__)

  autoload :Workspace,
    File.expand_path("../drone/models/workspace", __FILE__)

  autoload :WorkspaceRepresenter,
    File.expand_path("../drone/models/workspace_representer", __FILE__)

  autoload :Payload,
    File.expand_path("../drone/models/payload", __FILE__)

  autoload :PayloadRepresenter,
    File.expand_path("../drone/models/payload_representer", __FILE__)
end
