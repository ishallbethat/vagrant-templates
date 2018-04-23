wget https://packages.chef.io/files/stable/chef-server/12.17.33/ubuntu/16.04/chef-server-core_12.17.33-1_amd64.deb
dpkg -i chef-server-core_12.17.33-1_amd64.deb
chef-server-ctl reconfigure
chef-server-ctl user-create chefadmin admin admin admin@admin.com '12345678' --filename chefadmin.pem
chef-server-ctl org-create short_name 'myorganization' --association_user chefadmin --filename organization-validator.pem
chef-server-ctl install chef-manage
chef-server-ctl reconfigure
chef-manage-ctl reconfigure --accept-license
chef-server-ctl install opscode-push-jobs-server
chef-server-ctl reconfigure
opscode-push-jobs-server-ctl reconfigure
chef-server-ctl install opscode-reporting
chef-server-ctl reconfigure
opscode-reporting-ctl reconfigure 
