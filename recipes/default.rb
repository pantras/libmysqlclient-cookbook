#
# Cookbook Name:: libmysqlclient-cookbook
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

node['libmysqlclient']['cookbooks'].each do |cookbook|
  include_recipe cookbook
end

remote_file '/tmp/mysql-common_5.8+1.0.4_all.deb' do
  source 'http://launchpadlibrarian.net/353280751/mysql-common_5.8+1.0.4_all.deb'
end

remote_file '/tmp/libmysqlclient20_5.7.27-0ubuntu0.18.04.1_amd64.deb' do
  source 'http://launchpadlibrarian.net/434319442/libmysqlclient20_5.7.27-0ubuntu0.18.04.1_amd64.deb'
end

remote_file '/tmp/libmysqlclient-dev_5.7.27-0ubuntu0.18.04.1_amd64.deb' do
  source 'http://launchpadlibrarian.net/434319424/libmysqlclient-dev_5.7.27-0ubuntu0.18.04.1_amd64.deb'
end

bash 'manually install libmsqlclient-dev 5.7.27 and its dependencies' do
  cwd '/tmp'
  code <<-END
    dpkg -i mysql-common_5.8+1.0.4_all.deb
    dpkg -i libmysqlclient20_5.7.27-0ubuntu0.18.04.1_amd64.deb
    dpkg -i libmysqlclient-dev_5.7.27-0ubuntu0.18.04.1_amd64.deb
  END
end
