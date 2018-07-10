function! weeklyreport#Execute(...)
	" Template Variables
	let g:wr_templateDirectory = get(g:, "wr_templateDirectory", "~/.vim/bundle/vim-weeklyreport/templates/")
	let g:wr_defaultTemplate = get(g:, 'wr_defaultTemplate', "highLow.txt") 

	" Location
	let g:wr_location = get(g:, 'wr_location', "~/weeklyreports/") 
	
	" Filename Variables
	let g:wr_filenamePrefix = get(g:, 'wr_filenamePrefix', "") 
	let g:wr_filenameSuffix = get(g:, 'wr_filenameSuffix', "%F") 
	let g:wr_filenameExt = get(g:, 'wr_filenameExt', "txt") 

	" Create folder if not exists
	" if !isdirectory(g:wr_location)
		" call mkdir(g:wr_location)

	let l:filePath = g:wr_location . g:wr_filenamePrefix . strftime(g:wr_filenameSuffix) . "." . g:wr_filenameExt 
	let l:chosenTemplate = get(a:, 1, g:wr_defaultTemplate)
	let l:template  = g:wr_templateDirectory . l:chosenTemplate 

	execute "edit" . filePath
	execute "0r" . template
    call cursor(1, 8)
	call feedkeys('a')
endfunction
