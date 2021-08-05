## https://www.techbeatly.com/2020/12/configure-your-windows-host-to-manage-by-ansible.html
$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)
powershell.exe -ExecutionPolicy ByPass -File $file

# If you are facing any SSL/TLS issues while downloading files, please check the TLS version you have configured. You can also use TLS1.2 explicitly as below. 
# [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12