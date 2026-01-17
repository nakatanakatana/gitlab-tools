# Specification - Introduce GoReleaser Workflow

## Overview
Introduce a release automation workflow using GoReleaser and GitHub Actions. This will allow for automatic building and publishing of binaries whenever a new version tag is pushed to the repository.

## Functional Requirements
- Create a GoReleaser configuration file (`.goreleaser.yaml`) to define the build and release process.
- Implement a GitHub Actions workflow (`.github/workflows/release.yml`) to trigger the release process.
- Support cross-compilation for Linux (amd64 and arm64 architectures).
- Automatically create a GitHub Release with the compiled binaries and changelog.

## Non-Functional Requirements
- The binaries should be statically linked.
- The workflow should securely handle the `GITHUB_TOKEN` for publishing releases.
- Ensure the GoReleaser configuration aligns with the existing project structure (e.g., `cmd/sarif-to-codequality`).

## Acceptance Criteria
- Pushing a tag (e.g., `v0.1.0`) triggers the "Release" GitHub Action.
- The workflow successfully builds binaries for Linux/amd64 and Linux/arm64.
- A GitHub Release is created containing the artifacts and an automatically generated changelog.

## Out of Scope
- Building for macOS or Windows.
- Docker image publishing.
- Binary signing (GPG/Cosign).
