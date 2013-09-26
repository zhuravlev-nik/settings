" Включаем несовместимость настроек с Vi
set nocompatible
" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Показывать незавершённые команды в статусбаре
set showcmd 

" Фолдинг по отсупам
set foldmethod=indent

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

"foldmethod=syntax
set foldmethod=marker
set foldmarker={{{,}}}

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - раскрыть/свернуть блок кода
nmap <F3> za
vmap <F3> zai
imap <F3> zai


" F11 - показать окно Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i


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


autocmd VimEnter * NERDTree
autocmd VimEnter * Tlist
let g:Tlist_Use_Right_Window = 1
let g:tagbar_iconchars = ['►', '▼']

"--- --

