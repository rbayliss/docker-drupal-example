Docker Drupal Example
=====================

This example application shows one way you can run Drupal within Docker.  It includes a Varnish frontend, Apache/PHP 5.5 web server, MySQL 5.6 database server, and an Apache Solr 5.0 search database.

The Drupal site  lives inside of the `drupal/` folder in this directory.  This directory is mounted into the web server container, so changes made to files should happen in real-time.

We're using Docker Compose for this application to manage all of the containers at once.  If you have both Docker and Docker Compose installed, you can bring the app up by running `docker-compose up -d` in this directory.

Once the container is brought up, you should run the install.sh script (assuming you want to start from a scratch Drupal install), which will create the site.  The command to trigger this shell script to run INSIDE the container is:

```
docker exec -it `docker-compose ps -q web`  /install.sh
```