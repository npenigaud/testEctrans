#!/bin/bash

export testFolderName=ectransGPUdouble
testFolderAbsolutePath=${PWD}/${testFolderName}

mkdir ${testFolderAbsolutePath}

#== get sources and put them on workdir

# ecbuild on develop 
git clone -b develop https://github.com/ecmwf/ecbuild.git ${testFolderAbsolutePath}/ecbuild

# fckit on develop
git clone -b hotfix/0.14.2 https://github.com/ecmwf/fckit.git ${testFolderAbsolutePath}/fckit


# fiat_dbs2 on main
git clone -b release_2.0.0_doublestack https://github.com/npenigaud/fiat_dbs2.git ${testFolderAbsolutePath}/fiat

# ectrans_dbs2 on develop
git clone -b 1.8.0_doublestack  https://github.com/npenigaud/ectrans_dbs2.git ${testFolderAbsolutePath}/ectrans



