#Cookbook Name:: test
#Recipe:: test

group "sydneytester4"­ do
	action :create
end

user "sydneytester4" do
	uid 5000
	#gid "sydneytester3"­
	home "/home/sydneytester­4"
	password "test"
	#password "$1$30t/c9Cr$.t.1JP­u.CP8nFYVT­DkDb8/"
end


directory '/vagrant_data/quicktest4' do
    owner 'sydneytester4'
    group 'sydneytester4'
    mode '0644'
    action :create
end