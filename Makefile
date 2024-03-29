base: xorg audio fonts utils config
graphical: xorg dwm slstatus lightdm

all: system apps amdgpu
system: base graphical

config:
	@./install powerlevel10k
	@ln -srf zshrc ~/.zshrc
	@ln -srf vimrc ~/.vimrc
	@ln -srf vim ~/.vim
	@ln -srf xbindkeysrc ~/.xbindkeysrc
	@ln -srf aliasrc ~/.aliasrc
	@./install zsh_plugins

xorg:
	@./install xorg
	@ln -srf xprofile ~/.xprofile

amdgpu:
	@./install amdgpu

fonts:
	@./install fonts

audio:
	@./install audio

utils:
	@./install utils

dwm:
	@./install dwm

slstatus:
	@./install slstatus

nvm:
	@./install nvm_install

nnn:
	@./install nnn_install

yay:
	@./install yay_install

lightdm: yay
	@./install lightdm

apps: yay
	@./install apps
