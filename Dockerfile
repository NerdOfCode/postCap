# Base image
FROM ruby:2.6.5

# Setup environment variables that will be available to the instance
ENV APP_HOME /production

# Installation of dependencies
RUN apt-get update -qq \
  && apt-get install -y \
      # Needed for certain gems
    build-essential \
    sqlite3 \
    nodejs\
    npm \
  && apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf \
    /var/lib/apt \
    /var/lib/dpkg \
    /var/lib/cache \
    /var/lib/log


# Create a directory for our application
# and set it as the working directory
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Add our Gemfile
# and install gems

COPY Gemfile Gemfile.lock package.json yarn.lock ./
ADD Gemfile* $APP_HOME/
ADD package.json $APP_HOME/

RUN bundle install

RUN npm install -g yarn

# Copy over our application code
ADD . $APP_HOME

RUN yarn install --check-files

# Run our app
CMD rails s -p 30000 -b 0.0.0.0
