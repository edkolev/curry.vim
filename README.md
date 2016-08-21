# curry.vim

Helpers for writing Haskell in Vim, without *any* dependencies.

### Insert mode mappings

* i_CTRL-Y to insert function name, twice to insert `= undefined`

### Motions

* `]]` go to next function type declaration

* `[[` previous function type declaration

### Example

* Pressing `<control-y>` in insert mode will add the function name defined above. Pressing it again will insert `= undefined`

![screen shot 2016-08-21 at 20 04 31](https://cloud.githubusercontent.com/assets/1532071/17838625/8cbe2240-67da-11e6-8a27-441be8dcfb54.png)
![screen shot 2016-08-21 at 20 04 35](https://cloud.githubusercontent.com/assets/1532071/17838627/8cbe8a82-67da-11e6-8a53-6bfa79fa02eb.png)
![screen shot 2016-08-21 at 20 04 40](https://cloud.githubusercontent.com/assets/1532071/17838626/8cbe896a-67da-11e6-858e-8b667c78ab13.png)

### Installation

- plug `Plug 'edkolev/curry.vim'`
- pathogen `git clone https://github.com/edkolev/curry.vim ~/.vim/bundle/curry.vim`

