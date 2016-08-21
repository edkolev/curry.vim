# curry.vim

Helpers for writing Haskell in Vim, without *any* dependencies.

### Insert mode mappings

* i_CTRL-Y to insert function name, twice to insert `= undefined`

### Motions

* `]]` go to next function type declaration

* `[[` previous function type declaration

### Example

* Pressing `<control-y>` in insert mode will add the function name defined above. Pressing it again will insert `= undefined`

![9](https://cloud.githubusercontent.com/assets/1532071/17838793/2277f84e-67de-11e6-86b2-a90649ef926e.gif)

### Installation

- plug `Plug 'edkolev/curry.vim'`
- pathogen `git clone https://github.com/edkolev/curry.vim ~/.vim/bundle/curry.vim`

