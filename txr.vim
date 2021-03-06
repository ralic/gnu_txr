" VIM Syntax file for txr
" Kaz Kylheku <kaz@kylheku.com>

" INSTALL-HOWTO:
"
" 1. Create the directory .vim/syntax in your home directory and
"    put this file there.
" 2. In your .vimrc, add this command to associate *.txr files
"    with the txr filetype.
"    :au BufRead,BufNewFile *.txr set filetype=txr | set lisp
"
" If you want syntax highlighting to be on automatically (for any language)
" you need to add ":syntax on" in your .vimrc also. But you knew that already!

syn case match
syn spell toplevel

setlocal iskeyword=a-z,A-Z,48-57,!,$,&,*,+,-,<,=,>,?,\\,_,~,^

syn keyword txr_keyword contained skip fuzz trailer freeform block accept fail
syn keyword txr_keyword contained next some all none and or
syn keyword txr_keyword contained maybe cases choose gather collect coll until last end
syn keyword txr_keyword contained flatten lazy-flatten forget local merge bind set cat output
syn keyword txr_keyword contained repeat rep first last single empty mod modlast
syn keyword txr_keyword contained define try catch finally throw
syn keyword txr_keyword contained defex throw deffilter filter eof eol do

syn keyword txl_keyword contained progn prog1 let syn let* lambda call fun 
syn keyword txl_keyword contained cond if and or dwim op catch
syn keyword txl_keyword contained defvar defun inc dec set push pop flip del
syn keyword txl_keyword contained for for* dohash unwind-protect block
syn keyword txl_keyword contained return return-from gen delay
syn keyword txl_keyword contained each each* collect-each collect-each*

syn keyword txl_keyword contained cons make-lazy-cons lcons-fun car cdr
syn keyword txl_keyword contained rplaca rplacd first rest append append* list
syn keyword txl_keyword contained identity typeof atom null not consp listp
syn keyword txl_keyword contained proper-listp length-list mapcar mappend apply
syn keyword txl_keyword contained mapcar* mappend* sub-list replace-list
syn keyword txl_keyword contained reduce-left reduce-right
syn keyword txl_keyword contained second third fourth fifth sixth copy-list nreverse
syn keyword txl_keyword contained reverse ldiff flatten lazy-flatten
syn keyword txl_keyword contained memq memql memqual tree-find some
syn keyword txl_keyword contained remq remql remqual
syn keyword txl_keyword contained all none eq eql equal + - * / abs trunc mod
syn keyword txl_keyword contained expt exptmod sqrt isqrt gcd 
syn keyword txl_keyword contained floor ceil sin cos tan asin acos atan log exp
syn keyword txl_keyword contained fixnump bignump integerp floatp
syn keyword txl_keyword contained numberp zerop evenp oddp >
syn keyword txl_keyword contained zerop evenp oddp > < >= <= = max min
syn keyword txl_keyword contained search-regex match-regex regsub regexp regex-compile
syn keyword txl_keyword contained make-hash hash hash-construct gethash sethash pushhash remhash
syn keyword txl_keyword contained hash-count get-hash-userdata set-hash-userdata hashp maphash 
syn keyword txl_keyword contained hash-eql hash-equal 
syn keyword txl_keyword contained hash_keys hash_values hash_pairs hash_alist
syn keyword txl_keyword contained eval chain andf orf iff
syn keyword txl_keyword contained *stdout* *stdin* *stddebug*
syn keyword txl_keyword contained *stderr* format print pprint tostring tostringp
syn keyword txl_keyword contained make-string-input-stream
syn keyword txl_keyword contained make-string-byte-input-stream make-string-output-stream
syn keyword txl_keyword contained get-string-from-stream make-strlist-output-stream
syn keyword txl_keyword contained get-list-from-stream close-stream
syn keyword txl_keyword contained get-line get-char get-byte put-string put-line put-byte
syn keyword txl_keyword contained put-char flush-stream open-directory open-file
syn keyword txl_keyword contained open-pipe *user-package* *keyword-package* *system-package*
syn keyword txl_keyword contained make-sym gensym *gensym-counter* make-package find-package
syn keyword txl_keyword contained intern symbolp symbol-name symbol-package keywordp
syn keyword txl_keyword contained mkstring copy-str upcase-str downcase-str string-extend
syn keyword txl_keyword contained stringp lazy-stringp length-str search-str search-str-tree
syn keyword txl_keyword contained match-str match-str-tree
syn keyword txl_keyword contained sub-str cat-str split-str replace-str
syn keyword txl_keyword contained split-str-set list-str trim-str
syn keyword txl_keyword contained string-lt int-str flo-str num-str int-flo flo-int
syn keyword txl_keyword contained chrp chr-isalnum chr-isalpha
syn keyword txl_keyword contained chr-isascii chr-iscntrl chr-isdigit chr-isgraph
syn keyword txl_keyword contained chr-islower chr-isprint chr-ispunct chr-isspace chr-isupper
syn keyword txl_keyword contained chr-isxdigit chr-toupper chr-tolower chr-str
syn keyword txl_keyword contained num-chr chr-num
syn keyword txl_keyword contained chr-str-set span-str compl-span-str break-str
syn keyword txl_keyword contained vector vec-set-length vecref
syn keyword txl_keyword contained vec-push length-vec size-vec vector-list
syn keyword txl_keyword contained list-vector copy-vec sub-vec cat-vec
syn keyword txl_keyword contained replace-vec assoc assq acons acons-new
syn keyword txl_keyword contained aconsq-new alist-remove alist-nremove copy-cons
syn keyword txl_keyword contained copy-alist merge sort find set-diff length
syn keyword txl_keyword contained sub ref replace refset

syn keyword txl_keyword contained symbol-function func-get-form func-get-env
syn keyword txl_keyword contained functionp interp-fun-p *random-state*
syn keyword txl_keyword contained make-random-state random-state-p
syn keyword txl_keyword contained random-fixnum random rand

syn keyword txl_keyword contained range range* generate repeat force
syn keyword txl_keyword contained throw throwf error match-fun url-encode url-decode
syn keyword txl_keyword contained time time-usec
syn keyword txl_keyword contained source-loc source-loc-str

syn match txr_error "@[\t ]*[*]\?[\t ]*."
syn match txr_nested_error "[^\t `]\+" contained
syn match txr_hashbang "^#!.*"
syn match txr_atat "@[ \t]*@"
syn match txr_comment "@[ \t]*[#;].*"
syn match txr_contin "@[ \t]*\\$"
syn match txr_char "@[ \t]*\\."
syn match txr_char "@[ \t]*\\x[0-9A-Fa-f]\+"
syn match txr_char "@[ \t]*\\[0-9]\+"
syn match txr_variable "@[ \t]*[*]\?[ \t]*[A-Za-z_][A-Za-z0-9_]*"
syn match txr_metanum "@[0-9]\+"
syn match txr_regdir "@[ \t]*/\(\\/\|[^/]\|\\\n\)*/"

syn match txr_chr "#\\x[A-Fa-f0-9]\+" contained
syn match txr_chr "#\\o[0-9]\+" contained
syn match txr_chr "#\\[^ \t\nA-Za-z0-9_]" contained
syn match txr_chr "#\\[A-Za-z0-9_]\+" contained
syn match txr_regex "/\(\\/\|[^/]\|\\\n\)*/" contained
syn match txl_regex "#/\(\\/\|[^/]\|\\\n\)*/" contained
syn match txr_ncomment ";.*" contained

syn match txr_ident "[:@]\?[A-Za-z0-9!$%&*+\-<=>?\\^_~]\+" contained
syn match txl_ident "[:@]\?[A-Za-z0-9!$%&*+\-<=>?\\^_~/]\+" contained
syn match txl_ident ":" contained
syn match txr_num "[+-]\?[0-9]\+" contained

syn match txr_unquote "," contained
syn match txr_splice ",\*" contained
syn match txr_quote "'" contained
syn match txr_dot "\." contained
syn match txr_dotdot "\.\." contained

syn region txr_bracevar matchgroup=Delimiter start="@[ \t]*[*]\?{" matchgroup=Delimiter end="}" contains=txr_num,txr_ident,txr_string,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_regex,txr_quasilit,txr_chr,txr_nested_error

syn region txr_directive matchgroup=Delimiter start="@[ \t]*(" matchgroup=Delimiter end=")" contains=txr_keyword,txr_string,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_quasilit,txr_num,txl_ident,txl_regex,txr_string,txr_chr,txr_quote,txr_unquote,txr_splice,txr_dot,txr_dotdot,txr_ncomment,txr_nested_error

syn region txr_list contained matchgroup=Delimiter start="#\?H\?(" matchgroup=Delimiter end=")" contains=txl_keyword,txr_string,txl_regex,txr_num,txl_ident,txr_metanum,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_quasilit,txr_chr,txr_quote,txr_unquote,txr_splice,txr_dot,txr_dotdot,txr_ncomment,txr_nested_error

syn region txr_bracket contained matchgroup=Delimiter start="\[" matchgroup=Delimiter end="\]" contains=txl_keyword,txr_string,txl_regex,txr_num,txl_ident,txr_metanum,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_quasilit,txr_chr,txr_quote,txr_unquote,txr_splice,txr_dot,txr_dotdot,txr_ncomment,txr_nested_error

syn region txr_mlist contained matchgroup=Delimiter start="@(" matchgroup=Delimiter end=")" contains=txl_keyword,txr_string,txl_regex,txr_num,txl_ident,txr_metanum,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_quasilit,txr_chr,txr_quote,txr_unquote,txr_splice,txr_dot,txr_dotdot,txr_ncomment,txr_nested_error

syn region txr_mbracket matchgroup=Delimiter start="@\[" matchgroup=Delimiter end="\]" contains=txl_keyword,txr_string,txl_regex,txr_num,txl_ident,txr_metanum,txr_list,txr_bracket,txr_mlist,txr_mbracket,txr_quasilit,txr_chr,txr_quote,txr_unquote,txr_splice,txr_dot,txr_dotdot,txr_ncomment,txr_nested_error

syn region txr_string contained oneline start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region txr_quasilit contained oneline start=+`+ skip=+\\\\\|\\`+ end=+`+ contains=txr_variable,txr_metanum,txr_bracevar,txr_mlist,txr_mbracket

hi def link txr_at Special
hi def link txr_atstar Special
hi def link txr_atat Special
hi def link txr_comment Comment
hi def link txr_ncomment Comment
hi def link txr_hashbang Preproc
hi def link txr_contin Preproc
hi def link txr_char String
hi def link txr_keyword Keyword
hi def link txl_keyword Type
hi def link txr_string String
hi def link txr_chr String
hi def link txr_quasilit String
hi def link txr_regex String
hi def link txl_regex String
hi def link txr_regdir String
hi def link txr_variable Identifier
hi def link txr_metanum Identifier
hi def link txr_ident Identifier
hi def link txl_ident Identifier
hi def link txr_num Number
hi def link txr_quote Special
hi def link txr_unquote Special
hi def link txr_splice Special
hi def link txr_dot Special
hi def link txr_dotdot Special
hi def link txr_error Error
hi def link txr_nested_error Error

let b:current_syntax = "lisp"
