#!/bin/bash

export FFTW_ARCHIVE_NAME=fftw-3.3.10
export testFolderName=ectransGPUdouble_outofplace
testFolderAbsolutePath=${PWD}/${testFolderName}

mkdir ${testFolderAbsolutePath}

#== get sources and put them on workdir

# ecbuild on develop 
git clone -b develop https://github.com/ecmwf/ecbuild.git ${testFolderAbsolutePath}/ecbuild

# fckit on develop
git clone -b hotfix/0.14.2 https://github.com/ecmwf/fckit.git ${testFolderAbsolutePath}/fckit

cd ${testFolderAbsolutePath}
wget https://www.fftw.org/${FFTW_ARCHIVE_NAME}.tar.gz
tar -zvxf ${FFTW_ARCHIVE_NAME}.tar.gz
rm -f ${FFTW_ARCHIVE_NAME}.tar.gz
cd -

# fiat_dbs2 on main
git clone -b release_2.0.0_doublestack_inplace_amdmuncl01_mi210 https://github.com/npenigaud/fiat_dbs2.git ${testFolderAbsolutePath}/fiat

# ectrans_dbs2 on develop
git clone -b 1.8.0_doublestack_inplace_amdmuncl_mi210  https://github.com/npenigaud/ectrans_dbs2.git ${testFolderAbsolutePath}/ectrans



