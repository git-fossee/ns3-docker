# Security Policy

## Supported Versions

This project uses continuous deployment. Security updates are applied to the latest version only.

| Version | Supported          |
| ------- | ------------------ |
| latest  | :white_check_mark: |
| < latest| :x:                |

## Vulnerability Scanning

The NS-3 Docker container is automatically scanned for vulnerabilities using Trivy during the CI/CD pipeline. Results are available in the GitHub Security tab of this repository.

## Reporting a Vulnerability

If you discover a security vulnerability within this project, please follow these steps:

1. **Do Not** disclose the vulnerability publicly (no GitHub issues)
2. Email the project maintainers directly or use GitHub's private vulnerability reporting feature
3. Include detailed information about the vulnerability and steps to reproduce it
4. If possible, suggest a fix or mitigation

We take security issues seriously and will respond as quickly as possible. Once the vulnerability has been confirmed, we will:

1. Acknowledge receipt of your report
2. Work on a fix and test it
3. Release a patch and publicly disclose the issue (with proper credit to the reporter)

## Security Best Practices

When using this container:

1. Keep the image updated to the latest version
2. Don't expose the container ports to the public internet without proper authentication
3. Consider using Docker's security features such as read-only filesystems and dropping capabilities
4. Never use the container with elevated privileges unless absolutely necessary 