FROM debian:latest
LABEL version="0.1"
LABEL maintaner="Mr.13"
LABEL description="FirefoxESR and GeckoDriver for headless tests using python3 and selenium"
RUN apt-get update && apt-get install -y python3 python3-pip iceweasel wget
RUN pip3 install selenium
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.22.0/geckodriver-v0.22.0-arm7hf.tar.gz && tar -xzvf geckodriver-v0.22.0-arm7hf.tar.gz
RUN cp geckodriver /usr/local/bin/geckodriver && chmod +x /usr/local/bin/geckodriver