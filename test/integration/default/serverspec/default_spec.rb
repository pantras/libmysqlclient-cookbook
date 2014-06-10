require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

case os[:family]
when 'Ubuntu', 'Debian'
  package = "libmysqlclient-dev"
end


describe package(package) do
  it { should be_installed }
end
