# Eviz: Observability Stack for Email Servers, Linux, and Web Servers

## Overview
Eviz is an observability stack tailored for monitoring email servers, Linux systems, and web servers. It provides powerful tools for collecting, visualizing, and analyzing metrics and logs, enabling administrators to gain insights into the performance, health, and security of their infrastructure.

## Features
- **Email Server Monitoring:** Monitor key metrics such as email throughput, delivery rates, bounce rates, and queue sizes.
- **Linux System Monitoring:** Track system resource usage, network activity, disk I/O, CPU load, and memory utilization.
- **Web Server Monitoring:** Monitor web server response times, request rates, error rates, and server resource consumption.
- **Dashboard Customization:** Create custom dashboards tailored to your specific monitoring needs.
- **Alerting and Notification:** Set up alerts based on predefined thresholds or anomalies and receive notifications via email, SMS, or other channels.
- **Log Management:** Centralize logs from email servers, Linux systems, and web servers for analysis and troubleshooting.

## Getting Started
Follow these steps to set up Eviz and start monitoring your infrastructure:


1. Prerequisites
    - Install Docker
    - Install Docker Compose
2. Clone this repository to your local machine:
```
   git clone <repository_url>
```
   Navigate to the project directory:
```
    cd <project_directory>
```
4. Customize Variables (if needed):
      If your application requires any environment variables, you can customize them in the .config file. Make sure to set appropriate values for your environment.
5. Start the Application:
     Run the following command to start the application using Docker Compose:
```
    docker-compose up -d
```
7. Stopping the Application:
      To stop the application and remove the containers, you can press Ctrl + C in the terminal where docker-compose up is running. Alternatively, you can run:
```
    docker-compose down
```
## Documentation
For detailed documentation, including installation instructions, configuration options, and usage guides, refer to the [Eviz documentation](https://docs.eviz.io/).

## Support and Feedback
For support or feedback, please contact our team at support@eviz.io or open an issue on [GitHub](https://github.com/eviz/eviz/issues).

## License
Eviz is licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0). See the [LICENSE](LICENSE) file for more details.

## Contributions
Eviz welcomes contributions from the community. To contribute, please follow these steps:
- Fork the Eviz repository on [GitHub](https://github.com/jadcloudtech/eviz).
- Create a new branch for your feature or bug fix.
- Make your changes and commit them with clear and descriptive commit messages.
- Push your changes to your fork.
- Submit a pull request to the main Eviz repository.

Your contributions help improve Eviz for everyone. Thank you for your support!
