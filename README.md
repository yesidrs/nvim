# Personal NEOVIM IDE Config
Configuracion personal de NeoVim como IDE de desarrollo, configurado principalmente para desarrollo web con javascript, typescript, Angular, react y svelte. Configurado para desarrollo movil con Flutter. Cuenta con algunos snippets para los lenguajes y frameworks ya mencionados.

Algunas instalaciones externas son necesarias tales como:

- vim-plug (https://github.com/junegunn/vim-plug).

- the_silver_searcher (https://github.com/ggreer/the_silver_searcher).

- nodejs (https://nodejs.org/es/).

- python3 (https://www.python.org/downloads/)

- Nerdfont (https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts): es necesario para los iconos, en lo personal uso la fuente FiraCode Medium.
  
  
## (Windows) ademas de instalar la ultima version de python se deben ejecutar los siguientes comandos:

- ```python -m pip install --user --upgrade pynvim```
- ```python -m pip install --user --upgrade neovim```


## (Windows) reemplaze las importaciones del archivo init.vim

Las importaciones por defecto están escritas para linux/macOS.

- so C:\Users\Your-User\AppData\Local\nvim\maps.vim
- so C:\Users\Your-User\AppData\Local\nvim\plugins.vim
- so C:\Users\Your-User\AppData\Local\nvim\plugin-config.vim

## Posibles errores

### vim-matchtag
El plugin causará un error que no nos permitira escribir tranquilos, para solucionarlo debe dirigirse a la ruta del plugin:

- Linux: ~/.vim/plugged/vim-matchtag
- Windows: C:\Users\Your-User\.vim\vim-matchtag

dentro de la carpta vim-matchtag nos dirigimos a la carpeta plugin y abrimos el archivo matchtag.vim. buscamos las lineas de codigo numero 43 y 44, por ultimo las comentamos y guardamos los cambios.


### FZF (Solo Windows)

Para el correcto funcionamiento de la ventana preview del buscador fzf es necesario en windows ejecutar los siguienes comandos en la terminal:

```choco install git.install --params "/GitAndUnixToolsOnPath"```


## Instalaciones COC (no es necesario instalar todas solo las que necesites)

Obligatorias para web:
- coc-css
- coc-emmet
- coc-html
- coc-json
- coc-tsserver
- coc-prettier
- coc-snippets

Opcionales:
- coc-tabnine
- coc-svelte
- coc-angular
- coc-docker
- coc-flutter-tools



## Importante

Porfavor lea el archivo de maps.vim y plugins-config.vim, en ellos encuentra los shorcuts personalizados estan creados en base a lo que para mi es comodo
por ejemplo NerdTree no abre archivos con la tecla Enter sino con la letra L, por eso es importante que lea primero los shorcuts, ademas cuentan con comentarios para entender su funcionamiento.
