docker pull gitbeaver/release
rm -rf doc/autocreated
docker run -v $PWD/doc:/workdir gitbeaver/release main=create_docu