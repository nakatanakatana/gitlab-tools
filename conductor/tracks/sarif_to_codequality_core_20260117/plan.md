# Implementation Plan - sarif-to-codequality Core

## Phase 1: Project Scaffolding [checkpoint: 8a8625c]
- [x] Task: Initialize Go module and project structure f902d4e
    - [x] Run `go mod init github.com/nakatanakatana/gitlab-tools`
    - [x] Create `cmd/sarif-to-codequality` and `internal/` directories
    - [x] Create `Makefile` with build, test, and lint targets
- [x] Task: Setup development tools c598639
    - [x] Install `golangci-lint` (if not present) and configure it
- [x] Task: Conductor - User Manual Verification 'Phase 1: Project Scaffolding' (Protocol in workflow.md) 8a8625c

## Phase 2: Domain Models and Data Structures
- [x] Task: Define SARIF and Code Quality data structures 364278d
    - [x] Create `internal/sarif` for SARIF models
    - [x] Create `internal/gitlab` for Code Quality models
- [ ] Task: Write tests for JSON unmarshaling/marshaling
- [ ] Task: Implement basic unmarshaling for SARIF and marshaling for Code Quality
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Domain Models and Data Structures' (Protocol in workflow.md)

## Phase 3: Core Conversion Logic (TDD)
- [ ] Task: Implement Severity Mapping
    - [ ] Write tests for severity mapping (including custom overrides)
    - [ ] Implement mapping logic in `internal/converter`
- [ ] Task: Implement Fingerprinting
    - [ ] Write tests for stable fingerprint generation
    - [ ] Implement fingerprinting logic
- [ ] Task: Implement Path Normalization
    - [ ] Write tests for path relativization
    - [ ] Implement normalization logic
- [ ] Task: Implement Core Converter
    - [ ] Write tests for full SARIF to Code Quality conversion
    - [ ] Implement the main conversion function
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Core Conversion Logic (TDD)' (Protocol in workflow.md)

## Phase 4: CLI Interface and Integration
- [ ] Task: Implement Configuration Loading
    - [ ] Use `github.com/caarlos0/env` to load config
- [ ] Task: Implement CLI Argument Parsing
    - [ ] Use `flag` package for input/output paths and flags
- [ ] Task: Implement Stdin/Stdout and File Handling
    - [ ] Implement logic to read from multiple files or stdin
    - [ ] Implement merging logic for multiple inputs
- [ ] Task: Final Integration Test
    - [ ] Write end-to-end tests using golden files (`gotest.tools/v3`)
- [ ] Task: Conductor - User Manual Verification 'Phase 4: CLI Interface and Integration' (Protocol in workflow.md)
