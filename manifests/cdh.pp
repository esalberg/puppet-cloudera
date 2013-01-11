#
#  Copyright (c) 2011, Cloudera, Inc. All Rights Reserved.
#
#  Cloudera, Inc. licenses this file to you under the Apache License,
#  Version 2.0 (the "License"). You may not use this file except in
#  compliance with the License. You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  This software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
#  CONDITIONS OF ANY KIND, either express or implied. See the License for
#  the specific language governing permissions and limitations under the
#  License.
#

class cloudera::cdh (
  $ensure         = $cloudera::params::ensure,
  $autoupgrade    = $cloudera::params::autoupgrade,
  $service_ensure = $cloudera::params::service_ensure,
) inherits cloudera::params {
  # Validate our booleans
  validate_bool($autoupgrade)

  class { 'cloudera::cdh::bigtop':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::hadoop':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::hue::plugins':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::hbase':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::hive':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::oozie':
#    ensure         => $ensure,
#    autoupgrade    => $autoupgrade,
#    service_ensure => $service_ensure,
  }
  class { 'cloudera::cdh::pig':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
  class { 'cloudera::cdh::zookeeper':
#    ensure      => $ensure,
#    autoupgrade => $autoupgrade,
  }
}
