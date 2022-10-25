FROM gitbeaver/core:main-0.0.1
RUN mkdir /workdir
COPY setup.bvr plugins.md install-plugin.bvr /workdir/
RUN /gitbeaver workdir=/workdir main=setup && \
    cp /workdir/plugins.txt / && \
    rm -rf /workdir
COPY run.bvr /workdir/
ENTRYPOINT ["/gitbeaver", "workdir=/workdir", "main=run"]