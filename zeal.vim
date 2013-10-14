if !has('python')
    echo 'zeal.vim requires python support'
endif

py << EOF
import dbus
def zeal_send(term):
    try:
        session_dbus = dbus.SessionBus()
        zeal_object = session_dbus.get_object('com.zeal', '/')
        zeal_object.search(term)
    except:
        print 'zeal: error sending search'
    return None
EOF

"
" search for user specified string
"
    function! zeal#search(term)
    exe 'py zeal_send("' . a:term  . '")'
endfunction

"
" commands
"
command! -nargs=* ZealSearch call zeal#search(<f-args>)
command! ZealSearchCword call zeal#search(expand('<cword>'))
