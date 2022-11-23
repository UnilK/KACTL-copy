set ts=4 softtabstop=4 sw=4 expandtab tabpagemax=32
set ai encoding=utf-8 mouse=a clipboard=unnamedplus
filetype indent on
inoremap   <Space>
execute "set <C-S-M-w>=\ew"
inoremap <C-S-M-w> <Up>
vnoremap <C-S-M-w> <Up>
nnoremap <S-up> <Nop>
syntax on
ca Hash w !cpp -dD -P -fpreprocessed \| tr -d '[:space:]' \
 \| md5sum \| cut -c-6
