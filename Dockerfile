FROM cimg/ruby:3.0.3

RUN sudo apt-get update && sudo apt-get install build-essential curl file git ruby-full locales --no-install-recommends -y && sudo rm -rf /var/lib/apt/lists/*

RUN sudo useradd -m -s /bin/bash linuxbrew

USER linuxbrew
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

USER root
ENV PATH="/home/linuxbrew/.linuxbrew/bin:${PATH}"


RUN brew install allure

RUN brew -v

CMD ["bash"]
