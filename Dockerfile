FROM cimg/ruby:3.0.3
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" && echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/circleci/.profile && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && sudo apt-get install build-essential && brew install allure
