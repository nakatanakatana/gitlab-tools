# Implementation Plan - sarif-to-codequality Core

## Phase 1: Project Scaffolding [checkpoint: 8a8625c]
- [x] Task: Initialize Go module and project structure f902d4e
    - [x] Run `go mod init github.com/nakatanakatana/gitlab-tools`
    - [x] Create `cmd/sarif-to-codequality` and `internal/` directories
    - [x] Create `Makefile` with build, test, and lint targets
- [x] Task: Setup development tools c598639
    - [x] Install `golangci-lint` (if not present) and configure it
- [x] Task: Conductor - User Manual Verification 'Phase 1: Project Scaffolding' (Protocol in workflow.md) 8a8625c

## Phase 2: Domain Models and Data Structures [checkpoint: cf836d7]
- [x] Task: Define SARIF and Code Quality data structures 364278d
    - [x] Create `internal/sarif` for SARIF models
    - [x] Create `internal/gitlab` for Code Quality models
- [x] Task: Write tests for JSON unmarshaling/marshaling 364278d
- [x] Task: Implement basic unmarshaling for SARIF and marshaling for Code Quality 364278d
- [x] Task: Conductor - User Manual Verification 'Phase 2: Domain Models and Data Structures' (Protocol in workflow.md) cf836d7

## Phase 3: Core Conversion Logic (TDD) [checkpoint: dae3997]
- [x] Task: Implement Severity Mapping b78e68d
    - [x] Write tests for severity mapping (including custom overrides)
    - [x] Implement mapping logic in `internal/converter`
- [x] Task: Implement Fingerprinting 8bd544f
    - [x] Write tests for stable fingerprint generation
    - [x] Implement fingerprinting logic
- [x] Task: Implement Path Normalization 5442199
    - [x] Write tests for path relativization
    - [x] Implement normalization logic
- [x] Task: Implement Core Converter 588dc92
    - [x] Write tests for full SARIF to Code Quality conversion
    - [x] Implement the main conversion function
- [x] Task: Conductor - User Manual Verification 'Phase 3: Core Conversion Logic (TDD)' (Protocol in workflow.md) dae3997

## Phase 4: CLI Interface and Integration
- [x] Task: Implement Configuration Loading 7acaf00
    - [x] Use `github.com/caarlos0/env` to load config
- [x] Task: Implement CLI Argument Parsing 8e5b80b
    - [x] Use `flag` package for input/output paths and flags
- [x] Task: Implement Stdin/Stdout and File Handling f6b616e
    - [x] Implement logic to read from multiple files or stdin
    - [x] Implement merging logic for multiple inputs
- [ ] Task: Final Integration Test
    - [ ] Write end-to-end tests using golden files (`gotest.tools/v3`)
- [ ] Task: Conductor - User Manual Verification 'Phase 4: CLI Interface and Integration' (Protocol in workflow.md)
