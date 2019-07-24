!#/usr/local/bin/zsh
diskutil list external
echo "enter disk:"
read diskNum
echo "enter format:"
read partitionFormat
echo "enter partition Name"
read partitionName

echo "start format!"

diskutil partitionDisk $diskNum 1 MBR $partitionFormat $partitionName 0
#diskutil partitionDisk disk2 1 MBR ExFAT adata 0


diskutil unmountDisk $diskNum

 