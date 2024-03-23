1.Prerequisites:
    * An Apache2 webserver installed and configured.
    * Domain name pointed to the server's IP address.
    * SSH access to your server.
    * Administrative privileges (sudo access).
    
2.Setting Up Virtual Hosts (Recommended)
   Create the directory for your_domain as follows:
      sudo mkdir /var/www/your_domain
   Next, assign ownership of the directory to the user you’re currently signed in as with the $USER environment variable:
       sudo chown -R $USER:$USER /var/www/your_domain
   To ensure that your permissions are correct and allow the owner to read, write, and execute the files while granting only read and execute permissions to groups and others, you can input the following command:
       sudo chmod -R 755 /var/www/your_domain
  Next, create a sample index.html page using nano/vim or your favorite editor:
      sudo nano /var/www/your_domain/index.html 
  Inside, add the following sample HTML:

    <html>
    <head>
        <title>Welcome to Your_domain!</title>
    </head>
    <body>
        <h1>Success!  The your_domain virtual host is working!</h1>
    </body>
</html>  

3. Generating Let's Encrypt Certificate for Apache2 Webserver
   Update Package List:
          sudo apt update
   The list of modules to be enabled:
          a2enmod proxy
          a2enmod proxy_http
          a2enmod proxy_ajp 
          a2enmod rewrite
          a2enmod deflate
          a2enmod headers
          a2enmod proxy_balancer
          a2enmod proxy_connect
          a2enmod proxy_html
          sudo a2enmod ssl
    After running this command, you'll need to restart Apache for the changes to take effect:      
         sudo systemctl restart apache2
    
   Install Certbot:
         sudo apt install certbot python3-certbot-apache
   Generate SSL Certificate:
      sudo certbot --apache -d your_domain.com
           Replace your_domain.com with your actual domain name.
   After making changes to the Apache configuration, restart Apache to apply the changes:
      sudo systemctl restart apache2

4. Creating a virtual host file with the correct directives.
       Open the Apache configuration file for your website. This is typically located in /etc/apache2/sites-available/ directory.
    For example:    sudo vi /etc/apache2/sites-available/your_domain.conf
      Replace your_domain.conf with the actual configuration file name of your website.
    Inside this, add the following config which redirects your https domain to http,

<VirtualHost monit.naivedayam.com:443>
    ServerName monit.naivedayam.com
    ServerAlias www.monit.naivedayam.com

    DocumentRoot /var/www/domain.com

    SSLEngine on 
    SSLCertificateFile /etc/letsencrypt/live/domain.com/fullchain.pem
    SSLCertificateKeyFile /etc/letsencrypt/live/domain.com/privkey.pem


    <Directory /var/www/yourdomain.com>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>


    #RewriteEngine on
    #RewriteRule ^/$ /grafana [R,L]

    # ProxyPass for Grafana
    ProxyPreserveHost On
    ProxyPass "/" "http://localhost:3002/"
    ProxyPassReverse "/" "http://localhost:3002/"
</VirtualHost>


<VirtualHost yourdomain.com:80>
    ProxyPreserveHost On
    ServerName yourdomain.com
    
    ProxyPass "/" "http://localhost:3002/"
    ProxyPassReverse "/" "http://localhost:3002/"
   
     #Additional configuration for your main site can go here

    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined

    # Redirect HTTP to HTTPS
    RewriteEngine On
    RewriteCond %{HTTPS} off
    RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
</VirtualHost>
 
   Replace http://localhost:3002/ with your path to you application.
 
After making changes to the Apache configuration, restart Apache to apply the changes:
      sudo systemctl restart apache2

5.Test the web-server:
     Open a web browser and visit your website using https://your_domain.com or http://your_domain.com.
