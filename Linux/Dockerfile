FROM ubuntu
LABEL author="Naveen S R" github="nkpro2000sr" \
      maintainer="srnaveen2k@yahoo.com"
COPY multipy /

# install dependencies
RUN apt-get -y update && apt-get -y upgrade &&\
    apt-get install -y git curl

# install pyenv
RUN curl "https://gist.githubusercontent.com/nkpro2000sr/53049a2372a6e2ba2cc779b98b33c975/raw/pyenv_setup.sh" 2>/dev/null >setup_pyenv.sh && \
    sh setup_pyenv.sh

RUN rm setup_pyenv.sh && \
    pyenv update && \
    eval "pyenv install $(echo $(cat /multipy) | sed -r "s/ / \&\& pyenv install /g")" && \
    pyenv rehash && \
    eval "pyenv global $(echo $(cat /multipy))"
