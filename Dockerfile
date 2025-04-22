# Generate the site with Pelican
FROM docker.io/library/python:3.12-alpine AS builder

RUN /usr/sbin/adduser -g python -D python

USER python
RUN /usr/local/bin/python -m venv /home/python/venv

ENV PATH="/home/python/venv/bin:${PATH}" \
    PYTHONDONTWRITEBYTECODE="1" \
    PYTHONUNBUFFERED="1"

COPY --chown=python:python requirements.txt config.py config-container.py content themes plugins /home/python/docker-pelican/

#COPY --chown=python:python requirements.txt /home/python/docker-pelican/requirements.txt
#COPY --chown=python:python config.py /home/python/docker-pelican/config.py
#COPY --chown=python:python config-container.py /home/python/docker-pelican/config-container.py
#COPY --chown=python:python content /home/python/docker-pelican/content
#COPY --chown=python:python themes /home/python/docker-pelican/themes
#COPY --chown=python:python plugins /home/python/docker-pelican/plugins

WORKDIR /home/python/docker-pelican

RUN /home/python/venv/bin/pip install --no-cache-dir --requirement requirements.txt
#RUN /home/python/venv/bin/activate
RUN /home/python/venv/bin/pelican content -o container -s config-container.py
#RUN /home/python/venv/bin/activate

# Create the container using nginx and the generated content
FROM docker.io/library/nginx:latest

COPY --from=builder /home/python/docker-pelican/container/ /usr/share/nginx/html/
