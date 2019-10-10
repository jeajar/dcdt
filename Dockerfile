FROM ubuntu:18.04

RUN apt update && apt install -y wget sudo ruby ruby-dev
RUN wget https://raw.githubusercontent.com/jeajar/digital_cinema_tools_distribution/master/digital-cinema-tools-setup && bash digital-cinema-tools-setup
RUN exec ${SHELL}
RUN ln -s /root/.digital_cinema_tools/.bin/* /bin
RUN gem install nokogiri ttfunk
