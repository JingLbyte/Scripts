Get-Date | Out-File 'C:\Users\Administrator\Desktop\Scripts\log.txt.txt' -Append

Get-PSDrive -PSProvider FileSystem | Out-file 'C:\Users\Administrator\Desktop\Scripts\log.txt.txt' -Append
