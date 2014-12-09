#!/bin/bash

echo `pwd`
echo $PREFIX
cp /home/kimlab1/strokach/programs/archives/CGAL-4.4.tar.gz .
tar xzvf CGAL*
cd CGAL*
export GMP_LIBRARIES=$PREFIX/lib
export GMP_INCLUDE_DIR=$PREFIX/lib
export MPFR_LIBRARIES=$PREFIX/lib
export MPFR_INCLUDE_DIR=$PREFIX/lib
cmake . -DCMAKE_INSTALL_PREFIX=$PREFIX -DCGAL_CXX_FLAGS="-I$PREFIX/include" -DCGAL_MODULE_LINKER_FLAGS="-L$PREFIX/lib" -DCGAL_SHARED_LINKER_FLAGS="-L$PREFIX/lib"
unset GMP_LIBRARIES GMP_INCLUDE_DIR MPFR_LIBRARIES MPFR_INCLUDE_DIR
make
make install