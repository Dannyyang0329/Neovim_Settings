# Neovim_Settings

## Structure
```
.
└── nvim
    ├── init.lua                         -- starting config file of neovim
    └── lua
        ├── core                         -- directory contains base configuration of neovim
        │   ├── event.lua                -- autocmd event settings
        │   ├── global.lua               -- global module
        │   ├── init.lua                 -- core file
        │   ├── mapping.lua              -- neovim key mapping 
        │   ├── options.lua              -- neovim settings
        │   └── pack.lua                 -- key mapping module & loading mapping
        ├── keymap                       -- directory contains keybindings of plugins.
        │   ├── bind.lua                 -- bind module
        │   └── init.lua                 -- plugins key mapping
        └── modules
            ├── completion               -- directory contains code completion's configuration
            │   ├── config.lua
            │   ├── efm
            │   │   └── formatters
            │   │       └── rustfmt.lua
            │   ├── formatting.lua
            │   ├── lsp.lua
            │   └── plugins.lua
            ├── editor                   -- directory contains plugins' configuration about editing
            │   ├── config.lua
            │   └── plugins.lua
            ├── lang                     -- directory contains plugins' configuration about specific language
            │   ├── config.lua
            │   └── plugins.lua
            ├── tools                    -- directory contains telescope and its extensions' configuration
            │   ├── config.lua
            │   └── plugins.lua
            └── ui                       -- directory contains plugins' configuration about ui
                ├── config.lua
                └── plugins.lua          
```
