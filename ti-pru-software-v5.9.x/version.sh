#!/bin/bash -e

#http://git.ti.com/gitweb/?p=pru-software-support-package/pru-software-support-package.git;a=summary

package_name="ti-pru-software-v5.9"
debian_pkg_name="${package_name}"
package_version="5.9.0-git20210907.0"
package_source=""
src_dir=""

git_repo=""
git_sha=""
reprepro_dir="t/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-0"
debian_untar=""
debian_patch=""

clear_changelog="enable"

bullseye_version="~bullseye+20211203"
