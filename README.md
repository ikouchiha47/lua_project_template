# lua plugin project template

A project template for lua projects, with lua rocks.

This is made with writing neovim plugins locally, but
later generalized it for most projects.

For neovim support, a lua template in provided.
It works with lazy-nvim.

## usage

```shell
git clone https://github.com/ikouchiha47/lua_project_template.git ${PROJECT_DIR}`
cd ${PROJECT_DIR}
```

## components

### `Makefile`

Set up luarocks.

The default setup uses lua `5.1`. use the appropriate version

### rocksinstall.sh

Install script wrapper over `luarocks`, Makes install
to proper directory easier.

#### Usage

```shell
./rocksinstall.sh lua-hashings --server=https://luarocks.org/dev
```

Install From git to a particluar folder

```shell
NS=git ./rocksinstall.sh https://github.com/mpeterv/sha1.git lua/lua_modules/lib/lua/5.1/sha2

# for more

./rocksinstall.sh help
```

### neovim plugin integration

- Edit the plugin.template.lua file
- Provided the plugin `name`
- Write the setup. An example implementation is provided.
- Run the script. `./plugit ${filename}.lua`
- This should generate a `lua` file with the file name.
- Put it in your neovim `plugin/` directory, or whatever.

## project structure

```log
.
├── lua
│   ├── app.lua
│   ├── lua_modules
│   └── README.md
├── Makefile
├── plugin
│   └── init.lua
├── README.md
└── rocksinstall.sh
```
