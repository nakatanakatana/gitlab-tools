# Tech Stack - sarif-to-codequality

## Core Language & Runtime
- **Go:** Latest stable version.
- **Dependency Management:** Go modules (`go.mod`).

## Configuration & CLI
- **Environment Variables:** `github.com/caarlos0/env` for loading configurations from environment variables, ensuring compatibility with GitLab CI/CD.
- **Command Line Interface:** Built-in `flag` package for simple and robust CLI argument parsing.

## Data Processing
- **JSON Handling:** Built-in `encoding/json` for parsing SARIF input and generating GitLab Code Quality output.

## Testing & Quality Assurance
- **Testing Framework:** Built-in `testing` package.
- **Test Utilities:** `gotest.tools/v3` for advanced assertions and golden file testing.
- **Static Analysis:** `golangci-lint` with a strict configuration to maintain high code quality standards.

## Build & Automation
- **Task Runner:** `Makefile` for standardizing development tasks such as building, testing, and linting.
- **Deployment:** Self-contained, statically linked Go binaries for easy distribution.
- **Release Automation:** `GoReleaser` for building and publishing binaries, integrated with `GitHub Actions` for automated releases on tag pushes.
