# Specification - sarif-to-codequality Core

## Overview
Develop a Go-based CLI tool named `sarif-to-codequality` that converts Static Analysis Results Interchange Format (SARIF) reports into GitLab's Code Quality report format. This tool is designed to integrate seamlessly into GitLab CI pipelines and local development workflows.

## Requirements

### Input Support
- Read SARIF reports from standard input (stdin).
- Read SARIF reports from specified file paths.
- Support merging multiple SARIF input files into a single output report.

### Output Support
- Write the converted Code Quality report to standard output (stdout) by default.
- Support writing the output to a specified file path.

### Mapping Logic
- **Basic Mapping:** Convert SARIF results (file path, line numbers, descriptions) to GitLab Code Quality items.
- **Fingerprinting:** Generate unique and stable fingerprints for each issue to allow tracking across commits.
- **Severity Mapping:** Map SARIF severity levels (error, warning, note, etc.) to GitLab's levels (blocker, critical, major, minor, info). This mapping should be customizable via environment variables or CLI flags.
- **Path Normalization:** Normalize file paths to be relative to the repository root for consistent reporting in GitLab.

### Technical Constraints
- **Language:** Go (latest stable).
- **Configuration:** Load settings using `github.com/caarlos0/env`.
- **Testing:** Use `gotest.tools/v3` for assertions and golden file testing.
- **Architecture:** Modular structure with logic separated into `internal/`.
- **UX:** Silent by default, errors to stderr, single binary distribution.

## Success Criteria
- The tool successfully converts various valid SARIF files into GitLab-compatible JSON.
- The output passes GitLab's internal validation for Code Quality reports.
- Test coverage meets or exceeds 80%.
- Statically linked binaries can be built and run without external dependencies.
