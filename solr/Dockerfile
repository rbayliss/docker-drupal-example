
FROM makuk66/docker-solr:5.0

RUN mkdir -p /opt/solr/server/solr/drupal/data
ADD conf/ /opt/solr/server/solr/drupal/conf/
ADD core.properties /opt/solr/server/solr/drupal/core.properties

#RUN chown -R $SOLR_USER:$SOLR_USER /opt/solr/server/solr/drupal