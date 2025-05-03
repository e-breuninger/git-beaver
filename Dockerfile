FROM gitbeaver/core:0.2.6
RUN mkdir /workdir
COPY setup.bvr plugins.md install-plugin.bvr /workdir/
RUN /gitbeaver workdir=/workdir main=setup && \
    cp /workdir/plugins.txt / && \
    rm -rf /workdir
COPY run.bvr cloneGit.bvr cloneSourceRepo.bvr /workdir/
ENTRYPOINT ["/gitbeaver", "workdir=/workdir", "main=run"]