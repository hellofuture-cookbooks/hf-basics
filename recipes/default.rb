#
# Cookbook Name:: hf-basics
# Recipe:: default
#
# Copyright 2013, Hello Future Ltd
#
# All rights reserved - Do Not Redistribute
#

include_recipe "fail2ban"
include_recipe "ntp" 
include_recipe "firewall"
include_recipe "mosh"

firewall_rule "ssh" do
  port 22
  action :allow
end

firewall_rule "mosh" do
  protocol :udp
  port_range 60000..61000
  action :allow
end

firewall_rule "http/https" do
  protocol :tcp
  ports [ 80, 443 ]
  action :allow
end

firewall "ufw" do
  action :enable
end
