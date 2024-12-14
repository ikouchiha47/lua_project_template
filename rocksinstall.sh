#!/bin/bash

lib="$1"; shift
rest="$@"
version="${LUA_VERSION:-5.1}"
installer="${INSTALLER:-rocks}"

if [[ "$lib" == "help" ]]; then
    cat <<EOF
USAGE: ./rocksinstall [OPTIONS] LIBRARY [ADDITIONAL_ARGS]

DESCRIPTION:
Install Lua libraries via LuaRocks or clone Git repositories

ENVIRONMENT VARIABLES:
LUA_VERSION        Lua version (default: 5.1)
INSTALLER Installation method (default: rocks)
- rocks: Install via LuaRocks
- git: Clone from Git repository

LUAROCKS INSTALLATION MODE:
Basic usage:
./rocksinstall library_name

Examples:
./rocksinstall luasocket
./rocksinstall luasocket 3.0-1
LUA_VERSION=5.3 ./rocksinstall luasocket

GIT REPOSITORY CLONING:
INSTALLER=git ./rocksinstall repository_url destination_directory

Example:
INSTALLER=git ./rocksinstall https://github.com/example/library.git my_library

NOTES:
- Requires LuaRocks for rock installations
- Requires Git for repository cloning
- Additional arguments can customize installation
EOF
exit 0
fi

if [[ "$installer" == "rocks" ]]; then
    echo "luarocks install --tree lua/lua_modules --lua-version=$version $lib --force $rest"

    if [[ -z "$rest" ]]; then
        luarocks install --tree lua/lua_modules --lua-version="$version" "$lib" --force
    else
        luarocks install --tree lua/lua_modules "$rest" --lua-version=5.1 "$lib" --force
    fi

    exit 0
fi

if [[ "$installer" == "git" && ! -z "$rest" ]]; then
    echo "git clone $lib $rest"
    git clone "$lib" "$rest"
fi

