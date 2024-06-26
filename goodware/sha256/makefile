#should use the -cl version of clang as we are linking against visual studio libraries
CC:=clang-cl
#we want to use lld-link to line up with what visual studio expects / does
#when inline with compiler one would use -fuse-ld=$(LLD)
LLD:=lld-link
#we want to use llvm-lib to make an msvc compatibile library
LIB:=llvm-lib
#named variable with base directory we are storing our LLVM passes in
LLVMPASSDIR:=/opt/winsdk/llvm-passes
#output directory info
OUTPUTDIR:=bin
BASEOBJDIR=obj
OUTPUTNAME:=sha256
OUTPUTEXT=.exe
#populate this with the libraries you are using
LIBRARIES:= kernel32.lib user32.lib

CFLAGS:=/permissive- /DNDEBUG /DUNICODE /D_UNICODE /Iinclude /W1 /Gy /Gw-  /Ob1 /Ot /Oy /sdl- /Zo-
#link must come after filenames and Cflags
LDFLAGS:=/DEBUG:NONE /DYNAMICBASE /GUARD:NO /MANIFEST:EMBED /OPT:NOREF /SUBSYSTEM:CONSOLE

#out of tree optimizer passes
LLVMOPT:=

WINSDK:=/winsdkdir /opt/winsdk/sdk
VCTOOL:=/vctoolsdir /opt/winsdk/crt

WINSDKLINK:=/winsdkdir:/opt/winsdk/sdk
VCTOOLLINK:=/vctoolsdir:/opt/winsdk/crt

SRC:= $(wildcard src/*.c)
SRC += $(wildcard src/*.cpp)

ifneq ($(filter obfbogus,$(MAKECMDGOALS)),)
LLVMOPT+= -Xclang -fpass-plugin=$(LLVMPASSDIR)/libBogusControlFlow.so
endif

ifneq ($(filter obfflat,$(MAKECMDGOALS)),)
LLVMOPT+= -Xclang -fpass-plugin=$(LLVMPASSDIR)/libFlattening.so
endif

ifneq ($(filter obfindirect,$(MAKECMDGOALS)),)
LLVMOPT+= -Xclang -fpass-plugin=$(LLVMPASSDIR)/libIndirectCall.so
endif

ifneq ($(filter obfmba,$(MAKECMDGOALS)),)
LLVMOPT+= -Xclang -fpass-plugin=$(LLVMPASSDIR)/libMBAObfuscation.so
endif

ifneq ($(filter obfstr,$(MAKECMDGOALS)),)
LLVMOPT+= -Xclang -fpass-plugin=$(LLVMPASSDIR)/libStringObfuscation.so
endif

ifneq ($(filter 32bit,$(MAKECMDGOALS)),)
CFLAGS+= -m32
OBJDIR:=$(BASEOBJDIR)32
OUTPUTNAME:=$(OUTPUTNAME)_32
else
OBJDIR:=$(BASEOBJDIR)64
OUTPUTNAME:=$(OUTPUTNAME)_64
endif

OBJFILES_C:= $(SRC:src/%.c=$(OBJDIR)/%.obj)
OBJFILES:=$(OBJFILES_C:src/%.cpp=$(OBJDIR)/%.obj)

all: build

# Pattern rule for .c files
$(OBJDIR)/%.obj: src/%.c
	$(CC) $(WINSDK) $(VCTOOL) $(LLVMOPT) $< $(CFLAGS) /c /Fo$@

# Pattern rule for .cpp files (if you have C++ sources)
$(OBJDIR)/%.obj: src/%.cpp
	$(CC) $(WINSDK) $(VCTOOL) $(LLVMOPT) $< $(CFLAGS) /std:c++17 /c /Fo$@


build: setup $(OBJFILES)
	$(LLD) $(WINSDKLINK) $(VCTOOLLINK) $(OBJFILES) $(LDFLAGS) /OUT:$(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT)  $(LIBRARIES) 

print-src:
	@echo $(SRC)

print-obj:
	@echo $(OBJFILES_C)

.PHONY: setup obfflat obfindirect obfmba obfstr 32bit obfbogus

setup:
	mkdir -p $(BASEOBJDIR)32
	mkdir -p $(BASEOBJDIR)64
	mkdir -p bin

all-tests:
	make part-clean
	make all obfbogus
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_bogus$(OUTPUTEXT)
	make part-clean
	make all obfflat
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_flat$(OUTPUTEXT)
	make part-clean
	make all obfindirect
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_indirect$(OUTPUTEXT)
	make part-clean
	make all obfmba
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_mba$(OUTPUTEXT)
	make part-clean
	make all obfstr
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_str$(OUTPUTEXT)
	make part-clean
	make all obfbogus obfflat obfindirect obfmba obfstr
	mv $(OUTPUTDIR)/$(OUTPUTNAME)$(OUTPUTEXT) $(OUTPUTDIR)/$(OUTPUTNAME)_all$(OUTPUTEXT)
	make part-clean
	make all
	make part-clean
	

part-clean:
	rm -f $(BASEOBJDIR)32/*
	rm -f $(BASEOBJDIR)64/*


clean:
	rm -f $(BASEOBJDIR)32/*
	rm -f $(BASEOBJDIR)64/*
	rm -f bin/*


	
