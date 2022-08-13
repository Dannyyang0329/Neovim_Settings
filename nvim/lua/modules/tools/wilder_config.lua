vim.cmd([[
call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('pipeline', [wilder#branch(
	\ wilder#cmdline_pipeline({
    \   'use_python': 0,
    \   'fuzzy': 1,
    \   'fuzzy_filter': wilder#lua_fzy_filter()
    \ }),
	\ wilder#vim_search_pipeline(), [
    \   wilder#check({_, x -> empty(x)}),
    \   wilder#history(),
    \   wilder#result({'draw': [{_, x -> ' ' . x}]})
	\ ])])
call wilder#set_option('renderer', wilder#renderer_mux({
        \ ':': wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
        \     'border': 'rounded',
        \     'highlights': { 'border': 'Normal', },
        \     'highlighter': wilder#lua_fzy_highlighter(),
        \     'left': [wilder#popupmenu_devicons()],
        \     'right': [' ', wilder#popupmenu_scrollbar()]
        \ })),
        \ '/': wilder#wildmenu_renderer({
        \     'highlighter': wilder#lua_fzy_highlighter(),
        \     'apply_incsearch_fix': v:true,
        \ })
	\ }))
]])
