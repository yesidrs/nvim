# Personal NEOVIM IDE Config
Configuracion personal de NeoVim como IDE de desarrollo.

##Importante: los plugins basados en lua requieren de la version latest de neovim. Instala neovim directamente desde el repositorio de github, no uses apt, ya que la version que te ofrece este será la 0.5 y minimo se requiere desde la 0.6

Dependencias necesarias:

- vim-plug (https://github.com/junegunn/vim-plug).

- RipGrep (https://github.com/BurntSushi/ripgrep).

- nodejs (https://nodejs.org/es/).

- python3 (https://www.python.org/downloads/)

- Nerdfont (https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts): es necesario para los iconos, en lo personal uso la fuente FiraCode Medium.


## (linux) es necesario instalar por medio de pip la libreria pynvim

## (Windows) ademas de instalar la ultima version de python se deben ejecutar los siguientes comandos:

- ```python -m pip install --user --upgrade pynvim```
- ```python -m pip install --user --upgrade neovim```


## (Windows) reemplaze las importaciones del archivo init.vim

Las importaciones por defecto están escritas para linux/macOS.

- so C:\Users\Your-User\AppData\Local\nvim\maps.vim
- so C:\Users\Your-User\AppData\Local\nvim\plugins.vim
- so C:\Users\Your-User\AppData\Local\nvim\plugin-config.vim
- so C:\Users\Your-User\AppData\Local\nvim\lua-configs.lua



## Instalaciones COC (no es necesario instalar todas solo las que necesites)

web:
- coc-css
- coc-emmet
- coc-html
- coc-json
- coc-tsserver
- coc-prettier
- coc-snippets

Opcionales:
- coc-tabnine
- coc-angular
- coc-docker
- coc-flutter-tools



## Importante

Porfavor lea el archivo de maps.vim y plugins-config.vim, en ellos encuentra los shorcuts personalizados estan creados en base a lo que para mi es comodo
por ejemplo NerdTree no abre archivos con la tecla Enter sino con la letra L, por eso es importante que lea primero los shorcuts, ademas cuentan con comentarios para entender su funcionamiento.
