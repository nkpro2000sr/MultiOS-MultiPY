FROM ubuntu:18.04
LABEL author="Naveen S R" github="nkpro2000sr" \
      maintainer="srnaveen2k@yahoo.com"
COPY MultiPy /

# install dependencies
RUN apt-get -y update && apt-get -y upgrade && \
    apt-get install -y git curl gcc make build-essential apt-utils \
    libssl1.0-dev libreadline-dev zlib1g-dev libbz2-dev libsqlite3-dev libffi-dev

# install pyenv
RUN curl "https://gist.githubusercontent.com/nkpro2000sr/53049a2372a6e2ba2cc779b98b33c975/raw/pyenv_setup.sh" 2>/dev/null >setup_pyenv.sh && \
    sh setup_pyenv.sh
ENV PATH /root/.pyenv/shims:/root/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV PYENV_ROOT /root/.pyenv

# install python
RUN rm setup_pyenv.sh && \
    eval "$(pyenv init -)" && \
    eval "$(pyenv virtualenv-init -)" && \
    eval "pyenv install $(echo $(cat /MultiPy) | sed -r "s/ / \&\& pyenv install /g")" && \
    pyenv rehash && \
    eval "pyenv global $(echo $(cat /MultiPy))"

# setup image
RUN mkdir -p /home/user/hostcwd && \
    LatestPython=python$(pyenv versions --bare|grep -oP "^[[:digit:]].[[:digit:]]"|sort|tail -1) && \
    $LatestPython -m pip install --upgrade pip && \ 
    $LatestPython -m pip install --upgrade tox pytest
WORKDIR /hostcwd
CMD pyenv versions && tox --version
