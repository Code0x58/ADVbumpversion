FROM themattrix/tox-base

RUN apt-get update && apt-get install -y git-core mercurial

RUN git config --global user.email "bumpversion_test@example.org"
RUN git config --global user.name "Bumpversion Test"

# prevent *.pyc files
ENV PYTHONDONTWRITEBYTECODE = 1

WORKDIR /code
COPY . .
CMD tox
