#CC=clang-cl CFLAGS="/permissive- /DNDEBUG /DUNICODE /D_UNICODE /Iinclude /W1 /Gy /Gw- /Ob1 /Ot /Oy /sdl- /Zo- /winsdkdir /opt/winsdk/sdk /winsdkdir /opt/winsdk/sdk -fuse-ld=lld-link" cmake -DCMAKE_SYSTEM_NAME=Windows ..

      #$-D__WINDOWS_CLANG=1 \
CFLAGS="/winsdkdir /opt/winsdk/sdk  /vctoolsdir /opt/winsdk/crt" LDFLAGS="/winsdkdir:/opt/winsdk/sdk  /MANIFEST:NO /vctoolsdir:/opt/winsdk/crt" cmake -DCMAKE_SYSTEM_NAME=Windows \
      -DCMAKE_C_COMPILER=clang-cl \
      -DCMAKE_CXX_COMPILER=clang-cl \
      -DCMAKE_LINKER=lld-link \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_MT=llvm-mt \
      ..

