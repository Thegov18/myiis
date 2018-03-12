powershell_script 'install IIS' do
  code 'add-WindowsFeature Web-server'
end

file 'c:\inetpub\wwwroot\Default.htm' do
content '<h1>Hello, World! and Mita</h1>'
end

service 'w3svc' do
  action [ :enable, :start ]
end
