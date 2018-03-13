powershell_script 'install IIS' do
  code 'add-WindowsFeature Web-server'
end

template 'c:\inetpub\wwwroot\Default.htm' do
  source 'Default.htm.erb'
end

service 'w3svc' do
  action [ :enable, :start ]
end
