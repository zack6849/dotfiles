function mount_windows
	sudo mkdir -p /run/media/zack/Windows/
sudo chown zack:zack /run/media/zack/Windows/
sudo mount /dev/sda3 /run/media/zack/Windows/ -o uid=1000 -o gid=1000
end
