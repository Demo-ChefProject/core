#Changes made in portal-exe.properties
=begin
liferay_work_dir = "#{liferay_install_loc}/MC3"
liferay_install_loc = node['nc4']['liferay']['install_location']
liferay_portal_dir = "#{liferay_install_loc}/MC3/portal-exe.properties"
liferay_max_size = node['nc4']['max_size']


template "#{apache_httpd_conf}/httpd-vhost.conf" do
  source 'httpd-vhosts.conf.erb'
  variables( :server_name => apache_server_name )
  action :create
end
=end

template 'C:\NC4\MC3\portal-exe.properties' do
  source 'portal-ext.properties.erb'
  variables({
    :max_size => -1,
  #  :work_dir => apache_work_dir
    })
  action :create
end
