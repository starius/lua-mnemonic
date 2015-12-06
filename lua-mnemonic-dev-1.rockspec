-- lua-mnemonic, Return random words from the list
-- Copyright (c) 2015 Boris Nagaev
-- See the LICENSE file for terms of use.

package = "lua-mnemonic"
version = "dev-1"
source = {
    url = "git://github.com/starius/lua-mnemonic.git"
}
description = {
    summary = "Return random words from the list ",
    license = "MIT",
    homepage = "https://github.com/starius/lua-mnemonic",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['mnemonic'] = 'src/mnemonic/mnemonic.lua',
    },
    install = {
        bin = {
            "src/bin/mnemonic",
        },
    },
}
