Create a weekly report file from a template.

# Settings

## General
To override a default setting, add a variable definition to your vimrc.

Example:
```
	let g:wr_location = "~/myCustomDirectory"
```

Title | Default | Variable | Description
--- | --- | --- | ---
Location | ~/weeklyreports | `g:wr_location` | The directory that holds the report files.

## Filename Settings
The file name is configurable with the following variables.

Title | Default | Variable | Description
--- | --- | --- | ---
File Prefix | "" | g:wr_filenamePrefix | A prefix that is added to the beginning of each file.
File Suffix | %F | g:wr_filenameSuffix | Suffix added to each filename. See [strftime] for available values.
File Extension | txt | g:wr_filenameExt | File extension

## Template
There are a few settings that can be configured for the templates.

Title | Default | Variable
--- | --- | ---
Template Directory | {Plugin Install Dir}/templates | g:wr_templateDirectory
Default Template | highLow.txt | g:wr_defaultTemplate

[strftime]: http://vimdoc.sourceforge.net/htmldoc/eval.html#strftime()
