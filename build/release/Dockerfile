FROM throwtheswitch/drsurly-course2-base:1.1.0

MAINTAINER Michael Karlesky <michael@karlesky.net>


##
## Copy assets for inclusion in image
##

COPY assets/gems              /assets/gems
COPY assets/course            /usr/local/bin
COPY assets/awesomesauce2.zip /home/drsurly/awesomesauce2.zip

RUN chmod +x /usr/local/bin/course


# Install Ceedling, CMock, Unity
RUN set -ex \
  # Prevent documentation installation taking up space
  echo -e "---\ngem: --no-ri --no-rdoc\n...\n" > .gemrc \
  # Install Ceedling and related gems
  && gem install --force --local /assets/gems/*.gem \
  # Cleanup
  && rm -rf /assets \
  && rm .gemrc


RUN mkdir /lab

# ENTRYPOINT set in base image

WORKDIR /lab

ARG USER_ID

ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user

RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

USER user
