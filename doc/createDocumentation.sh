docker pull gitbeaver/release:main
rm -rf doc/autocreated
docker run -v $PWD/doc:/workdir gitbeaver/release:main main=create_docu