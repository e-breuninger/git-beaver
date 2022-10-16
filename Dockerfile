FROM gitbeaver/core:main-0.0.1
RUN mkdir /workdir
ADD setup.bvr /workdir/
ADD plugins.md /workdir/
ADD install-plugin.bvr /workdir/
RUN /gitbeaver workdir=/workdir main=setup.bvr && \
    cp /workdir/plugins.txt / && \
    rm -rf /workdir
