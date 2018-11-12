#!/bin/bash

pkgname="SourceCodePro"
version="2.030d"
install_location="/"
identifier="com.example.${pkgname}"

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

projectfolder=$(dirname "$0")

pkgbuild --root "${projectfolder}/payload" \
	--identifier "${identifier}" \
	--version "${version}" \
	--scripts "${projectfolder}/scripts" \
	--info "${projectfolder}/PackageInfo.xml" \
	--install-location "${install_location}" \
	--sign "Mac Developer: dev@example.com (WJSZAJHC29)" \
	"${projectfolder}/${pkgname}-${version}.pkg"
