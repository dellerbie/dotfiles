set nolist

let g:go_version_warning = 0
let g:go_fmt_command = "goimports"

nmap <leader>b :GoBuild<cr>
nmap <leader>r :GoRun<cr>
nmap <leader>t :GoTest<cr>
nmap <leader>d :GoDef<cr>

" Build/Test on save.
augroup auto_go
  autocmd!
  autocmd BufWritePost *.go :GoBuild
  autocmd BufWritePost *_test.go :GoTest
augroup end
