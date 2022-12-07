FROM gitbeaver/core:main
RUN mkdir /workdir
COPY setup.bvr plugins.md install-plugin.bvr /workdir/
RUN /gitbeaver workdir=/workdir main=setup && \
    cp /workdir/plugins.txt / && \
    rm -rf /workdir
COPY run.bvr /workdir/
#TODO this can go, just for develop
ENV GOOGLE_APPLICATION_CREDENTIALS /secret/terraform-service-account.json
ENTRYPOINT ["/gitbeaver", "workdir=/workdir", "main=run"]