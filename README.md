<p align="center"><b>Eviz:  Observability Stack for Email Servers, Linux, and Web Servers.</b></p>

<h4 align="center">
    <a href="https://github.com/multiaccess/eviz/discussions">Discussions</a> 
</h4>

<h4 align="center">

[![Docker Image CI](https://github.com/multiaccess/eviz/actions/workflows/container-release.yaml/badge.svg)](https://github.com/multiaccess/eviz/actions/workflows/container-release.yaml)
[![Go Report Card](https://goreportcard.com/badge/github.com/multiaccess/eviz)](https://goreportcard.com/report/github.com/multiaccess/eviz)


[![Price](https://img.shields.io/badge/price-FREE-0098f7.svg)](https://github.com/multiaccess/eviz/blob/main/LICENSE)
[![Discussions](https://badgen.net/badge/icon/discussions?label=open)](https://github.com/multiaccess/eviz/discussions)
[![Code of Conduct](https://badgen.net/badge/icon/code-of-conduct?label=open)](./code-of-conduct.md)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

</h4>

<hr>


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
   git clone https://github.com/jadcloudtech/eviz.git
```

3. Navigate to the project directory:
```
    cd eviz
```

4. Customize Variables (if needed):
      
      - If your application requires any environment variables, you can customize them in the .config file. Make sure to set appropriate values for your environment.

      - Update the GF_SERVER_ROOT_URL to proper DNS name or IP in .env file

5. Start the Application:
     Run the following command to start the application using Docker Compose:
```
    source .env
    mkdir /data    #loki data location
    chmod -R 777 /data
    docker network create eviz-network
    docker-compose up -d
```
7. Stopping the Application:
      To stop the application and remove the containers, you can press Ctrl + C in the terminal where docker-compose up is running. Alternatively, you can run:
```
    docker-compose down
```
## Documentation
For detailed documentation, including installation instructions, configuration options, and usage guides, refer to the [Eviz documentation](https://docs.multiaccess.io/eviz).

## Support and Feedback
For support or feedback, please contact our team at support@multiaccess.io or open an issue on [GitHub](https://github.com/eviz/eviz/issues).

## License
Eviz is licensed under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0). See the [LICENSE](LICENSE) file for more details.

## Contributions
Eviz welcomes contributions from the community. To contribute, please follow these steps:
- Fork the Eviz repository on [GitHub](https://github.com/multiaccess/eviz).
- Create a new branch for your feature or bug fix.
- Make your changes and commit them with clear and descriptive commit messages.
- Push your changes to your fork.
- Submit a pull request to the main Eviz repository.

Your contributions help improve Eviz for everyone. Thank you for your support!
