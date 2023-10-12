# wsap3825-doom

## Boot

```
setenv serverip 192.168.1.66; setenv ipaddr 192.168.1.6; tftpboot 0x3000000 uImage; bootm 0x3000000
```

## Autoboot

```
setenv boot_doom "cp.b 0xEC000000 0x3000000 0x1000000; bootm 0x3000000"
setenv bootcmd "run boot_doom"
saveenv
```
