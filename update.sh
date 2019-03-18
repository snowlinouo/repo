echo "開始重新壓縮deb"
dpkg-scanpackages -m . /dev/null >Packages
echo "完成壓縮deb"
rm ./Packages.bz2
echo "刪除Paackages.bz2"
bzip2 -fks Packages
echo "重新產生Paackages.bz2完成"