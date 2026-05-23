all:
	git submodule init
	git submodule update
	stow --verbose --target=$$HOME --restow */

delete:
	stow --verbose --target=$$HOME --delete */

update:
	git pull
	git submodule update --remote --merge
	$(MAKE) all

pkg-backup:
	pacman -Qqe > pkglist.txt
	git add pkglist.txt
	git commit -m "chore: update package list"
