version=`cat VERSION`

(cd acceleration-a; docker build . -t acca:$version;)
(cd acceleration-calc; docker build . -t acccalc:$version)
(cd acceleration-dv; docker build . -t accdv:$version)
