base: xorg audio fonts utils config
graphical: xorg dwm slstatus lightdm

all: system apps amdgpu
system: base graphical

config:
	@./install powerlevel10k
	@ln -srf zshrc ~/.zshrc
	@ln -srf vimrc ~/.vimrc
	@ln -srf aliasrc ~/.aliasrc

xorg:
	@./install xorg
	@ln -srf xinitrc ~/.xinitrc
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

yay:
	@./install yay_install

lightdm: yay
	@./install lightdm

apps: yay
	@./install apps
