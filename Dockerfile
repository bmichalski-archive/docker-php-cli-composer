FROM bmichalski/php-cli:5.6

RUN \
  mkdir /home/r/bin && \
  #Fixing permissions
  chown -R r:r /home/r/bin && \
  su - r -c "curl -sS https://getcomposer.org/installer | php -- --install-dir=/home/r/bin" && \
  mv /home/r/bin/composer.phar /home/r/bin/composer
