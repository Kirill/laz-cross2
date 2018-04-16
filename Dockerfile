# Pull base image.
FROM krak/laz-cross1

# Add building scripts
ADD config.sh /
ADD build.tools.sh /

# Build the cross tools
RUN \
    chmod +x /config.sh && \
    sleep 3 && \
    chmod +x /build.tools.sh && \
    sleep 3 && \
    /build.tools.sh

# Define default command.
CMD ["bash"]