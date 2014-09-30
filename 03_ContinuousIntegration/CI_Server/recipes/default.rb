magic_shell_environment 'PATH' do
  value '$PATH:/usr/local/sbin:/usr/sbin:/sbin:/home/vagrant/bin'
end

execute "setting-path" do
  command "echo \"export PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin:/home/vagrant/bin\" > /etc/profile.d/setglobal.sh"
  action :run
end

package "jenkins" do
  source "/Installers/jenkins-1.582-1.1.noarch.rpm"
end

service "jenkins" do
  action [:start, :enable]
end