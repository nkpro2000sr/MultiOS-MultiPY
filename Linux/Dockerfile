FROM ubuntu
LABEL author="Naveen S R" github="nkpro2000sr"
LABEL maintainer="srnaveen2k@yahoo.com"
RUN setup_pyenv="https://gist.githubusercontent.com/nkpro2000sr/53049a2372a6e2ba2cc779b98b33c975/raw/pyenv_setup.sh" && curl $setup_pyenv 2>/dev/null | sh
RUN eval "py install $(echo $(cat multipy) | sed -r "s/ / \&\& py install /g")" && eval "py global $(echo $(cat multipy))"
