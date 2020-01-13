FROM fedora:28

LABEL MAINTAINER="Martin Styk <mastyk@redhat.com>"

RUN dnf install wget git python2-pylint python-sqlalchemy TurboGears python-flask python-itsdangerous python-webassets python-passlib python-TurboMail python-xmltramp python-alembic python-rdflib python-daemon python-lockfile python2-qpid-proton python-markdown python-bugzilla python-gevent python-mock python2-requests python-prettytable python2-devel python2-decorator -y
RUN pip install -U astroid && pip install -U configparser && pip install -U backports.functools-lru-cache==1.5

CMD ["/bin/bash"]
