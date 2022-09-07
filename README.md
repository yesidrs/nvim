# Personal Neovim IDE Config
Configuración personal de NeoVim como IDE de desarrollo.

##Importante: los plugins basados en lua requieren de la version latest de neovim. Instala neovim directamente desde el repositorio de github, no uses apt, ya que la version que te ofrece este será la 0.5 y mínimo se requiere desde la 0.6

Dependencias necesarias:

- vim-plug (https://github.com/junegunn/vim-plug).

- RipGrep (https://github.com/BurntSushi/ripgrep).

- nodejs (https://nodejs.org/es/).

- python3 (https://www.python.org/downloads/)

- NerdFont: En la carpeta Fonts encontraras lo fuente que uso (Cascursive).

- GCC (https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support#gcc): Treesitter requiere de un compilador de C, el cual se puede instalar por medio de scoop. 

## (Linux) es necesario instalar por medio de pip la librería pynvim

## (Windows) ademas de instalar la ultima version de python se deben ejecutar los siguientes comandos:

- ```python -m pip install --user --upgrade pynvim```


## (Windows/Linux) reemplace las importaciones del archivo init.vim

En el archivo init vim encontrará los dos tipos de importaciones dependiendo del sistema operativo.


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
- coc-angular
- coc-docker
- coc-flutter-tools



## Importante

Por favor lea el archivo de maps.vim y plugins-config.vim, en ellos encuentra los shortcuts personalizados están creados en base a lo que para mi es cómodo
por ejemplo NerdTree no abre archivos con la tecla Enter sino con la letra L, por eso es importante que lea primero los shortcuts, ademas cuentan con comentarios para entender su funcionamiento.
