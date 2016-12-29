function torch_activate()
  set -gx TORCH_INSTALL_DIR $HOME
  set -gx LUA_PATH $TORCH_INSTALL_DIR'/.luarocks/share/lua/5.1/?.lua;'$TORCH_INSTALL_DIR'/.luarocks/share/lua/5.1/?/init.lua;'$TORCH_INSTALL_DIR'/torch/install/share/lua/5.1/?.lua;'$TORCH_INSTALL_DIR'/torch/install/share/lua/5.1/?/init.lua;./?.lua;'$TORCH_INSTALL_DIR'/torch/install/share/luajit-2.1.0-beta1/?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua'
  set -gx LUA_CPATH $TORCH_INSTALL_DIR'/.luarocks/lib/lua/5.1/?.so;'$TORCH_INSTALL_DIR'/torch/install/lib/lua/5.1/?.so;./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so'
  set -gx LD_LIBRARY_PATH $TORCH_INSTALL_DIR/torch/install/lib $LD_LIBRARY_PATH
  set -gx DYLD_LIBRARY_PATH $TORCH_INSTALL_DIR/torch/install/lib $DYLD_LIBRARY_PATH
  set -gx LUA_CPATH $TORCH_INSTALL_DIR'/torch/install/lib/?.so;' $LUA_CPATH
  set -gx fish_user_paths $TORCH_INSTALL_DIR/torch/install/bin $fish_user_paths
end
