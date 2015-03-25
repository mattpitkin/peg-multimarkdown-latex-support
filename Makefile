# make file to install these files in /usr/share/texmf/tex/latex/mmd
# (this is where LaTeX lives on Ubuntu)
# This needs to be run with sudo

default:
	echo "Making directory /usr/share/texmf/tex/latex/mmd if it does not exist"
	mkdir -p /usr/share/texmf/tex/latex/mmd
	echo "Copying files to /usr/share/texmf/tex/latex/mmd"
	cp *.tex *.sty /usr/share/texmf/tex/latex/mmd
	echo "Running ls-R to update LaTeX path"
	cd /usr/local/share/texmf/
	mktexlsr
	
