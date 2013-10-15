cat linux_files.lst |while read i;
	do echo linux-2.6.33.e/$i
	rm linux-2.6.33.3/$i.dbg
	rm linux-2.6.33.3/$i.time
	rm linux-2.6.33.3/$i.c.xml
	rm linux-2.6.33.3/$i.pi
	rm linux-2.6.33.3/$i.pi.dbgSrc
	rm linux-2.6.33.3/$i.pi.macroDbg
	rm linux-2.6.33.3/$i.err
	rm -rf linux-2.6.33.3/$i
done
