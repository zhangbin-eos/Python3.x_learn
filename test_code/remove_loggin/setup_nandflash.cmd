cd /home/root
tftp -g -r nandflash.tar 192.168.20.127
rm /nandflash/* -rf
rm /nandflash/.[!.]* -rf

cd /nandflash
tar -xf /home/root/nandflash.tar
sleep 1

echo "lig_ifcfg eth0 IP 192.168.20.135 " > /nandflash/run.d/U02zbconfig.sh
echo "lig_ifcfg eth0 MAC 00:50:56:27:BB:CC " >> /nandflash/run.d/U02zbconfig.sh
echo "syslog_stop -s && syslog_start -s 192.168.20.127" >> /nandflash/run.d/U02zbconfig.sh

echo "rm /nandflash/run.d/U02zbconfig.sh " >> /nandflash/run.d/U02zbconfig.sh
echo "34" > /nandflash/lib/.liblig_matrix.debug

reboot
exit

