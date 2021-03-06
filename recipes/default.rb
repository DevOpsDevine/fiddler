#
# Author:: me
# Cookbook Name:: fiddler
# Recipe:: default
#
# Copyright:: Copyright (c) 2014 Daptiv Solutions LLC.
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

include_recipe 'dotnetframework'

source_url = node['fiddler']['url']

windows_package 'Fiddler' do
  checksum node['fiddler']['checksum']
  source source_url
  action :install
end
