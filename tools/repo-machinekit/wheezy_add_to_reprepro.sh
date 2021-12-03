#!/bin/bash -e

. version.sh

base="/var/www/html/rcn-ee.us/repos/"
outgoing="/var/www/html/farm/outgoing"

run () {
	changes_file=$(ls ${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/ | grep changes)

	if [ ! "x${changes_file}" = "x" ] ; then
		if [ -f ${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/${changes_file} ] ; then
			wfile="${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/${changes_file}"
			reprepro -b ${repo} -C main include ${suite} ${wfile}
		fi
	fi
}

dist="debian"
suite="wheezy"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}-machinekit/"
	deb_arch="armhf"
	run
fi
#
