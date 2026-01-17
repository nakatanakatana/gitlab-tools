# Product Definition - sarif-to-codequality

## Overview
`sarif-to-codequality` is a CLI tool designed to convert SARIF (Static Analysis Results Interchange Format) reports into GitLab's [Code Quality report format](https://docs.gitlab.com/ja-jp/ci/testing/code_quality/#code-quality-report-format). This enables seamless integration of various security and static analysis tools into GitLab CI/CD pipelines.

## Target Users & Scenes
- **GitLab CI Pipelines:** Automatically convert security scan and static analysis results to allow viewing within GitLab's Merge Request interface.
- **Local Development:** Enable developers to manually run conversions and verify results locally before pushing to CI.

## Key Features
- **Flexible Input:** Support for reading SARIF reports from standard input or specific file paths.
- **Flexible Output:** Option to output conversion results to a specified file or standard output.
- **Multi-file Merging:** Capability to read multiple SARIF files and merge them into a single Code Quality report.
- **High-Fidelity Mapping:**
    - **Fingerprinting:** Generate appropriate fingerprints to track the same issue across multiple commits.
    - **Severity Mapping:** Accurately map SARIF levels (error, warning, note, etc.) to GitLab severity levels (blocker, critical, major, minor, info).
    - **Path Normalization:** Ensure paths are correctly converted to relative paths from the repository root.

## Future Scalability
- **Tool Suite:** Based on the repository name `gitlab-tools`, the project will be structured to accommodate additional GitLab-related tools in the future, using a subcommand-based or modular architecture.