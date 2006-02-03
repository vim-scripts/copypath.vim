" copypath.vim : Copy current editing file path to clipboard.
"
" Name Of File: copypath.vim
" Maintainer:   omi taku <mail@nanasi.jp>
" URL:          http://nanasi.jp/
" Script URL:   http://www.vim.org/scripts/script.php?script_id=1456
" Last Change:  2006/02/04
" Version:      0.1.2
"
" Installation:
"    1. Copy the copypath.vim script to
"       $HOME/vimfiles/plugin or $HOME/.vim/plugin directory directory.
"       Refer to ':help add-plugin', ':help add-global-plugin' and ':help runtimepath'
"       for more details about Vim plugins.
"    2. Restart Vim.
"    3. To run this script, Vim needs to be compiled with "+clipboard" option.
"
" Usage:
"    This script adds two new command ":CopyPath" and ":CopyFileName".
"    You can use the ":CopyPath" command to copy file path to clipboard,
"    and you can use the ":CopyFileName" command to copy file name to clipboard.
"
"    :CopyPath
"        copy current editing file full path to clipboard.
"
"    :CopyFileName
"        copy current editing file name to clipboard.
"
"
" Note:
"    o  To run this script, Vim needs to be compiled with "+clipboard" option.
"
"
" History:
"    0.1.2   o  document is updaed.
"    0.1.1   o  fix bug.
"    0.1     o  Initial upload.


" if plugin is already loaded then, not load plugin.
if exists("loaded_copypath")
	finish
endif
let loaded_copypath = 1

function CopyPath()
	let @*=expand('%:p')
endfunction

function CopyFileName()
	let @*=expand('%:t')
endfunction

command! -nargs=0 CopyPath call CopyPath()
command! -nargs=0 CopyFileName call CopyFileName()

