function goToVimrc {
	cd C:\Users\yomam\AppData\Local\nvim
	nvim .
}

Set-Alias nvimrc goToVimrc

function goToPowerShellProfile {
	cd C:\Users\yomam\Documents\WindowsPowerShell
	nvim .
}

Set-Alias psp1 goToPowerShellProfile

Set-Alias c clear

function goToProjects {
	cd C:\Users\yomam\Documents\Projects
	nvim .
}

Set-Alias nvim-p goToProjects
