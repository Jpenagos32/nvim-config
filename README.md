- Para que la sincronizacion de la papelera entre el sistema operativo y neovim funcione correctamente
Es necesario verificar con `:checkhealth` buscando la palabra `Clipboard` que se encuentre instalada alguna herramienta.

En el caso de Ubuntu, en caso de que no exista, se debe instalar

```bash
sudo apt install xclip
```
---

- Tambien es necesario instalar con Mason el formatter para PHP `php-cs-fixer`

- Es necesario instalar `fd-find` para el correcto funcionamiento de `Snacks`

```bash
sudo apt install fd-find
```

- Snacks reemplaza los siguientes pluggins:
    - telescope
    - indent_blankline.lua
