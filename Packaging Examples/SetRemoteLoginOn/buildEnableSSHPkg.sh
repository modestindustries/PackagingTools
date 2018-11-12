#!/bin/bash

pkgname="EnableSSH"
version="1.0"
install_location="/"
identifier="com.example.${pkgname}"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --nopayload \
	--identifier "${identifier}" \
	--version "${version}" \
	--scripts "${projectfolder}/scripts" \
	--install-location "${install_location}" \
	"${projectfolder}/${pkgname}-${version}.pkg"
