FROM gcr.io/google.com/cloudsdktool/cloud-sdk
RUN apt-get update && apt-get -y install wget && \
    wget "https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u242-b08_openj9-0.18.1/OpenJDK8U-jdk_x64_linux_openj9_8u242b08_openj9-0.18.1.tar.gz" && \
    tar -xf OpenJDK8U-jdk_x64_linux_openj9_8u242b08_openj9-0.18.1.tar.gz && \
    rm OpenJDK8U-jdk_x64_linux_openj9_8u242b08_openj9-0.18.1.tar.gz && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
ENV PATH="/jdk8u242-b08/bin:${PATH}"