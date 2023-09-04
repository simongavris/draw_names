# Draw Random Name Web Application

## Overview

This is a web application that allows you to draw a random name from a list. It is designed to run as a Docker Compose service and uses Traefik 2 as a reverse proxy for routing web traffic.

## Prerequisites

Before you can use this application, make sure you have the following prerequisites installed on your system:

- Docker
- Docker Compose

## Getting Started

1. Clone this repository to your local machine.

   ```bash
   git clone https://github.com/simongavris/draw_names.git
   ```

2. Change to the project directory:

   ```bash
   cd draw-random-name-app
   ```

3. Customize the domain (optional):

   If you want to use a custom domain to access the application, create a `docker-compose.override.yml` file and specify the domain in the override file. For example:

   ```yaml
   version: '3'

   services:
     draw_random_name:
       labels:
         - "traefik.http.routers.draw_random_name.rule=Host(`customdomain.com`)" # Replace with your custom domain
   ```

   Replace `customdomain.com` with your desired domain.

4. Build and start the application using Docker Compose:

   ```bash
   docker-compose up -d
   ```

   This command will build the application and start it as a service. Traefik will handle routing web traffic to the application.

5. Access the application:

   Open a web browser and navigate to the specified domain (e.g., `http://yourdomain.com`) to access the "Draw Random Name" application.

## Stopping the Application

To stop the application and remove the containers, use the following command:

```bash
docker-compose down
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
