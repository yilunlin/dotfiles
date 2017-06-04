if exists("b:current_syntax")
  finish
endif

syn region log_string       start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string       start=/"/ end=/"/ skip=/\\./
syn match  log_number       '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match   log_debug       '\c\<DEBUG\>'
syn match   log_info        '\c\<\w*\<\(INFO\\|NOTICE\)\>'
syn match   log_error       '\c\<\w*\(ERR\|FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\|EXCEPTION\|CRITICAL\)\>'
syn match   log_warning     '\c\<\w*\(WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\)\>'


syn match   log_date        '\c\<\(Mon\|Tue\|Wed\|Thr\|Fri\|Sat\|Sun\)\>'
syn match   log_date        '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syn match   log_date        '\d\{4}-\d\d-\d\d'

syn match   log_time        '\d\d:\d\d:\d\d\s*'
syn match   log_time        '\d\d:\d\d:\d\d\.\d*\s*'
syn match   log_time        '\c\d\d:\d\d:\d\d\(\.\d\+\)\=\([+-]\d\d:\d\d\|Z\)'
syn match   log_time        '\[\s*\d\+\.\d\+\]'

syn match   log_ip          '\d\+\.\d\+\.\d\+\.\d\+'
syn match   log_URL         '\w\+://\S\+'
syn match   log_mac         '\<\x\x\([-:]\x\x\)\{5}\s*'

hi def link log_string      String
hi def link log_number      Number
hi def link log_date        Keyword
hi def link log_time        Operator
hi def link log_debug       String
hi def link log_info        ModeMsg
hi def link log_error       ErrorMsg
hi def link log_warning     WarningMsg
hi def link log_URL         Underlined
hi def link log_ip          Keyword
hi def link log_mac         Keyword


let b:current_syntax = "log"
