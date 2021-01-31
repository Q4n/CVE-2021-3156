ALL:
	gcc exploit.c -o exploit
	gcc -Os -Wall -Wextra -fPIC -shared inject.c -o libnss_X/X.so.2
	sudo gdb -q ./exploit -ex="iii"
