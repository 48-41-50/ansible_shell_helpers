# Makefile for ansible_inventory_helpers

.PHONY: install

INSTALL_PREFIX=/usr/local/bin

all:
	@echo "Please choose a target: "install" or "uninstall"
	@echo "Ex: sudo make install"

install:
	@install -m 0755 -o root -g root -t $(INSTALL_PREFIX) ./inv_ip ./invssh

uninstall:
	@rm -f $(INSTALL_PREFIX)/inv_ip $(INSTALL_PREFIX)/invssh
