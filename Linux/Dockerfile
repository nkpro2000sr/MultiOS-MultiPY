FROM ubuntu
LABEL author="Naveen S R" github="nkpro2000sr" \
      maintainer="srnaveen2k@yahoo.com"
COPY multipy /
RUN curl --help
RUN curl https://gist.githubusercontent.com/nkpro2000sr/53049a2372a6e2ba2cc779b98b33c975/raw/pyenv_setup.sh 2>/dev/null >setup_pyenv.sh && \
    sh setup_pyenv.sh
RUN rm setup_pyenv.sh && \
    eval "pyenv install $(echo $(cat /multipy) | sed -r "s/ / \&\& pyenv install /g")" && \
    eval "pyenv global $(echo $(cat /multipy))"
