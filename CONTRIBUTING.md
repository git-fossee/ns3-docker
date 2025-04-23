# Contributing to NS-3 Docker Template

Thank you for considering contributing to this project! This document outlines the process for contributing to the NS-3 Docker Template repository.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for everyone. Please report any unacceptable behavior to the project maintainers.

## How to Contribute

### Reporting Issues

If you find a bug or have a suggestion for improvement:

1. Check if the issue already exists in the [GitHub Issues](https://github.com/OWNER/REPO/issues)
2. If not, create a new issue with a descriptive title and detailed information
3. Include steps to reproduce bugs, expected behavior, and actual behavior

### Pull Requests

1. Fork the repository
2. Create a new branch for your feature/bugfix (`git checkout -b feature/your-feature`)
3. Make your changes
4. Run tests locally (if applicable)
5. Commit your changes with clear, descriptive commit messages
6. Push your branch to your fork
7. Open a pull request to the main repository

### Pull Request Guidelines

- Keep changes focused on a single issue or feature
- Update documentation as needed
- Follow the coding style and conventions used in the project
- Make sure all tests pass
- Add tests for new features when appropriate

## Development Environment

To set up your local development environment:

1. Clone the repository
2. Build the Docker image locally: `docker build -t ns3-container-dev -f Dockerfile.ns3 .`
3. Test the Docker image: `docker run --rm -it -p 6901:6901 ns3-container-dev`

## Dockerfile Modifications

When modifying the Dockerfile:

1. Follow Docker best practices (see the [Docker documentation](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/))
2. Test your changes thoroughly
3. Make sure the container still works as expected
4. Consider the image size when adding new features

## License

By contributing, you agree that your contributions will be licensed under the same license as the original project. 