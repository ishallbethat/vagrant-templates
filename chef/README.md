### Chef Server Setup
### Chef Nodes Setup


#### when a user is created, private key is saved to ~/<private key>
> chef-server-ctl user-create chefadmin admin admin admin@admin.com '12345678' --filename chefadmin.pem
> chefadmin.pem is saved to /home/vagrant
#### when a organization is created, validator key is saved to ~/<validator key>
> chef-server-ctl org-create short_name 'organization' --association_user chefadmin --filename organization-validator.pem
> organization-validator.pem is saved to /home/vagrant
