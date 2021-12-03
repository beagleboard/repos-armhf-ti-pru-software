#!/bin/bash

dl_src () {
	if [ -d ./common/ ] ; then
		rm -rf ./common/
	fi

	git clone -b master git://git.ti.com/pru-software-support-package/pru-software-support-package.git ./common/
	cd ./common/
	git checkout v5.9.0 -b tmp || true
	cd ../

	if [ -d ./common/.git/ ] ; then
		rm -rf ./common/.git/
	fi

	if [ -f common/.gitignore  ] ; then
		rm -r common/.gitignore
	fi
}

dl_src
