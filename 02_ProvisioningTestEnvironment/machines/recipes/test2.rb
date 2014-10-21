#Cookbook Name:: test
#Recipe:: test

 #group "sydneytester5"­ do
# 	action :create
# end

 user 'sydneytester5' do
    home '/home/sydneytester5'
    shell '/bin/bash'
    password '$1$hdt9AgF0$nJNdBgzkfHZKNlyhPa2Bd/'
 end


# We need to create a directory outside the shared folder,
# as Vagrant sometimes takes over ownership and permissions
 directory '/quickquote5' do
    owner 'sydneytester5'
    group 'sydneytester5'
    mode '0644'
    action :create
 end