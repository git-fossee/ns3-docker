FROM kasmweb/core-ubuntu-focal:1.15.0

USER root

ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME

######### Customize Container Here ###########

# Install dependencies
COPY packages.txt $HOME/packages.txt
RUN apt-get update && \
   xargs -a $HOME/packages.txt apt-get install -y && \
   apt-get clean && \
   rm -rf /var/lib/apt/lists/*


RUN mkdir -p /home/kasm-user/Desktop /home/kasm-user/Uploads


# Download, extract and install

######### End Customizations ###########

RUN chown 1000:0 $HOME
RUN $STARTUPDIR/set_user_permission.sh $HOME

ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000

# Set up environment