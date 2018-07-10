function! weeklyreport#Execute()
	let weeklyreport = "~/weeklyreports/" . strftime("%F") . ".txt"
	let template = "~/.vim/bundle/vim-weeklyreport/templates/report.txt"
	execute "edit" . weeklyreport
	execute "0r" . template
    call cursor(1, 8)
	call feedkeys('a')
endfunction
