FROM tianon/centos
MAINTAINER E Camden Fisher <fish@fishnix.net>
EXPOSE 8080

RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
ADD docker/install_ruby.sh /tmp/
RUN /tmp/install_ruby.sh

RUN gem update --system --no-document
RUN gem install bundler --no-ri --no-rdoc

ADD . /opt/sinatra_bootstrap
RUN cd /opt/sinatra_bootstrap && bundle install

CMD cd /opt/sinatra_bootstrap && bundle exec unicorn -c config/unicorn.rb -E docker