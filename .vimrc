" Включаем несовместимость настроек с Vi
set nocompatible
" Показывать положение курсора всё время.
set ruler

" Включаем перенос строк (set nowrap отключает перенос строк)
set wrap
" Перенос строк по словам, а не по буквам
set linebreak
" Включаем подсветку синтаксиса
syntax on
" Показывать строку с позицией курсора
set ruler
" Показывать первую парную скобку после ввода второй
set showmatch
" Включает отображение номеров строк
" set number

" Размер табуляции
set shiftwidth=2
set softtabstop=2
set tabstop=2

"set smartindent

" Включаем подсветку выражения, которое ищется в тексте
set hlsearch
" При поиске перескакивать на найденный текст в процессе набора строки (инкрементальный поиск)
set incsearch
" Если искомое выражения содержит символы в верхнем регистре – ищет с учётом регистра, иначе – без учёта
set smartcase
" Размер истории для отмены правок
set undolevels=1000

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>


" Подстветка SQL внутри PHP строк
let php_sql_query=1

" Подстветка HTML внутри PHP строк
let php_htmlInStrings=1

" Подстветка базовых функций PHP
let php_baselib = 1

colorscheme desert
