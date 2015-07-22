FROM wolfitem/baseimage
MAINTAINER wolfitem <wei.wu86@hotmail.com>

RUN apt-get update

RUN apt-get install -y unzip
RUN curl 'https://dl.google.com/dl/android/studio/ide-zips/1.2.1.1/android-studio-ide-141.1903250-linux.zip' > /tmp/studio.zip && unzip -d /opt /tmp/studio.zip && rm /tmp/studio.zip

# Install X11
RUN apt-get install -y x11-apps

# Install prerequisites
RUN apt-get install -y openjdk-7-jdk lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6

# Install other useful tools
RUN apt-get install -y gradle

# Clean up
RUN apt-get clean
RUN apt-get purge

# Set up USB device debugging (device is ID in the rules files)
#RUN echo ""> 51-android.rules
#ADD 51-android.rules /etc/udev/rules.d
#RUN chmod a+r /etc/udev/rules.d/51-android.rules

USER developer

CMD /opt/android-studio/bin/studio.sh
