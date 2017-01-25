SUBDIRS = userid objstore

fast:
	$(foreach subdir,$(SUBDIRS),make -C $(subdir) fast && ) echo Made fast

all:
	$(foreach subdir,$(SUBDIRS),make -C $(subdir) all && ) echo Made all

clean:
	$(foreach subdir,$(SUBDIRS),make -C $(subdir) clean && ) echo Cleaned all

pre-commit:
	$(foreach subdir,$(SUBDIRS),make -C $(subdir) pre-commit && ) echo Pre-committed all

anew: clean all


