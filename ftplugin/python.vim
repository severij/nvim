highlight breakpoint ctermbg=darkred guibg=darkred
match breakpoint /breakpoint/
nnoremap <Leader>bp Oimport pdb; pdb.set_trace() # breakpoint<Esc>
nnoremap <Leader>sbp /breakpoint<CR>
