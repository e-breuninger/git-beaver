FROM gitbeaver/core:0.2.2
RUN mkdir /workdir
COPY setup.bvr plugins.md install-plugin.bvr /workdir/
RUN /gitbeaver workdir=/workdir main=setup && \
    cp /workdir/plugins.txt / && \
    rm -rf /workdir
COPY run.bvr cloneGit.bvr cloneSourceRepo.bvr /workdir/
COPY git/.gitconfig /root/.gitconfig
ENTRYPOINT ["/gitbeaver", "workdir=/workdir", "main=run"]