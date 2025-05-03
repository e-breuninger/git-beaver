docker pull gitbeaver/release:$1
rm -rf doc/autocreated
docker run -v $PWD/doc:/workdir gitbeaver/release:$1 main=create_docu