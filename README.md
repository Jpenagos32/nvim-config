- Para que la sincronizacion de la papelera entre el sistema operativo y neovim funcione correctamente
Es necesario verificar con `:checkhealth` buscando la palabra `Clipboard` que se encuentre instalada alguna herramienta.

En el caso de Ubuntu, en caso de que no exista, se debe instalar

```bash
sudo apt install xclip
```
---

- Formatters necesarios (instalarlos desde el menu de :Mason)

    - `php-cs-fixer`
    - `blade-formatter` 

## Requisitos
- Es necesario instalar NodeJs (el comando de instalación dependerá del sistema operativo)
- Es necesario instalar `fd-find` para el correcto funcionamiento de `Snacks`

```bash
sudo apt install fd-find
```

- Snacks reemplaza los siguientes pluggins:
    - telescope
    - indent_blankline.lua


- Es necesario instalar tree-sitter-cli y gcc para el correcto funcionamiento de treesiter

```
# Arch Linux
sudo pacman -S tree-sitter-cli gcc

# Ubuntu
sudo apt install tree-sitter-cli gcc

# Tambien se puede instalar de forma global mediante npm 
npm install -g tree-sitter-cli
```

## Nota

En caso de que aparezca el siguiente error

```bash
Failed to run `config` for nvim-treesitter
                                                                                                                                                      
/root/.config/nvim/lua/plugins/Treesitter.lua:10: module 'nvim-treesitter.configs' not found:                                                         
        no field package.preload['nvim-treesitter.configs']                                                                                           
        cache_loader: module 'nvim-treesitter.configs' not found                                                                                      
        cache_loader_lib: module 'nvim-treesitter.configs' not found                                                                                  
        no file './nvim-treesitter/configs.lua'                                                                                                       
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/luajit-2.1/nvim-treesitter/configs.lua'                                              
        no file '/usr/local/share/lua/5.1/nvim-treesitter/configs.lua'                                                                                
        no file '/usr/local/share/lua/5.1/nvim-treesitter/configs/init.lua'                                                                           
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/nvim-treesitter/configs.lua'                                                 
        no file '/home/runner/work/neovim/neovim/.deps/usr/share/lua/5.1/nvim-treesitter/configs/init.lua'                                            
        no file './nvim-treesitter/configs.so'                                                                                                        
        no file '/usr/local/lib/lua/5.1/nvim-treesitter/configs.so'                                                                                   
        no file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/nvim-treesitter/configs.so'                                                    
        no file '/usr/local/lib/lua/5.1/loadall.so'                                                                                                   
        no file './nvim-treesitter.so'                                                                                                                
        no file '/usr/local/lib/lua/5.1/nvim-treesitter.so'                                                                                           
        no file '/home/runner/work/neovim/neovim/.deps/usr/lib/lua/5.1/nvim-treesitter.so'                                                            
        no file '/usr/local/lib/lua/5.1/loadall.so'                                                                                                   
                                                                                                                                                      
# stacktrace:                                                                                                                                         
  - lua/plugins/Treesitter.lua:10 _in_ **config**                                                                                                     
  - vim/_editor.lua:0 _in_ **cmd**                                                                                                                    
  - lua/config/lazy.lua:25                                                                                                                            
  - init.lua:1
```
se debe ir al pluggin de treesitter y cambiar la linea que dice `local configs = require("nvim-treesitter.configs")` por `local configs = require("nvim-treesitter.config")`
(eliminar la ultima s)
