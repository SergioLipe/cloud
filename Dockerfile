# Step 1: Use the official PHP image with Apache
FROM php:8.1-apache

# Step 2: Set the working directory in the container
WORKDIR /var/www/html

# Step 3: Copy the PHP application files to the container
COPY . .

# Step 4: Install any additional PHP extensions, if needed
# Uncomment and adjust the following line to install extensions
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Step 5: Expose port 80 to access the app
EXPOSE 80

# Step 6: Start Apache in the foreground
CMD ["apache2-foreground"]
