FROM ubuntu
LABEL author="Naveen S R" github="nkpro2000sr" \
      maintainer="srnaveen2k@yahoo.com"
COPY multipy /
RUN 'setup_pyenv="https://gist.githubusercontent.com/nkpro2000sr/53049a2372a6e2ba2cc779b98b33c975/raw/pyenv_setup.sh" && \
    curl $setup_pyenv 2>/dev/null | sh && \
    export PYENV_ROOT="$HOME/.pyenv" && \
    export PATH="$PYENV_ROOT/bin:$PATH" && \
    eval "$(pyenv init -)" && \
    eval "pyenv install $(echo $(cat /multipy) | sed -r "s/ / \&\& pyenv install /g")" && \
    eval "pyenv global $(echo $(cat /multipy))"'
# because RUN * is executed as /bin/sh -c *
