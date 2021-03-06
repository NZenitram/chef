apt_update 'Update the apt cache daily' do
  frequency 86-400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end
