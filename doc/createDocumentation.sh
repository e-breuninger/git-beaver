docker pull gitbeaver/release
rm -rf autocreated
docker run -v $PWD:/workdir gitbeaver/release main=create_docu