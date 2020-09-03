#	Instructions to build and run this Dockerfile
#
#	You must build with the command
#	$ sudo docker build --tag hello .
#
#	Then run 
#	$ sudo docker run --rm -v //C/export:/usr/src/buildvts/export hello
#
#

#	1 - Install dependencies for Qt
#FROM ubuntu:bionic as dependencies
FROM stereolabs/zed:3.0-devel-jetson-jp4.2 as dependencies

RUN apt-get update && apt-get -y --no-install-recommends install \
	build-essential \
	libboost-all-dev \
	python2.7 \
	libusb-1.0-0 \
	cmake \
	pkg-config
	
#RUN apt-get clean

#	2 - QtBuild
FROM dependencies as QtBuild

RUN apt-get -y --no-install-recommends install \
	qt5-default

#	3 hello_Build
FROM QtBuild as hello

# Copy the host folder to the image under /usr/src
COPY . /usr/src/buildvts

# Specify the working directory
WORKDIR /usr/src/buildvts

# Let CMake build the software
RUN cmake . && cmake --build .

# Run the program output from the previous step
ENTRYPOINT [ "sh" ]
CMD ["./entrypoint.sh"]
