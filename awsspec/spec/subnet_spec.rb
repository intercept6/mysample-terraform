require 'spec_helper'
 
describe subnet('public1-subnet') do
  it { should exist }
  it { should be_available }
  it { should belong_to_vpc('circle.ci') }
  its(:availability_zone) { should eq 'ap-northeast-1a' }
  its(:cidr_block) { should eq '10.0.1.0/24'}
  its(:map_public_ip_on_launch) { should eq true }
  it { should have_tag('Name').value('public1-subnet') }
  it { should have_tag('Environment').value('prod') }
end