require 'spec_helper'
 
describe vpc('circle.ci') do
  it { should exist }
  it { should be_available }
  its(:cidr_block) { should eq '10.0.0.0/16' }
  #its(:dhcp_options_id) { should eq 'dopt-XXXXXXXX' }
  #it { should have_route_table('circle.ci-private-ap-northeast-1a') }
  #it { should have_route_table('circle.ci-private-ap-northeast-1c') }
  #it { should have_route_table('circle.ci-public') }
  #it { should have_network_acl('acl-XXXXXXXX') }
  it { should have_tag('Name').value('circle.ci') }
  it { should have_tag('Environment').value('prod') }
end