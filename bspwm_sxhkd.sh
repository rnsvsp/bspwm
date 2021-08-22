# Make update and upgrade on System
sudo apt update && sudo apt upgrade -y

# Install the bspwm and sxhkd packages
sudo apt install bpwm sxhkd git curl wget gnome-terminal -y

# Create the folders to put config files
cd ~/ && mkdir -p .config/{bspwm,sxhkd}
cd ~/Downloads && git clone https://github.com/rnsvsp/bspwm.git && cd bspwm
cp bspwmrc ~/.config/bspwm/ && cp sxhkdrc ~/.config/sxhkd/
chmod +x ~/.config/bspwm/bspwmrc ~/.config/sxhkd/sxhkdrc

# Create the xsessionrc file and make it executable
echo -e "#!/bin/bash\nexec bspwm" >> ~/.xsessionrc
