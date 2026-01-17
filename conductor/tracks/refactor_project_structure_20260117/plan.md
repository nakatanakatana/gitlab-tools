# Implementation Plan - Refactor Project Structure

## Phase 1: Preparation
- [x] Task: Create Destination Directory eb546e3
    - [x] Create `cmd/sarif-to-codequality/internal`
- [ ] Task: Conductor - User Manual Verification 'Phase 1: Preparation' (Protocol in workflow.md)

## Phase 2: Migration and Refactoring
- [ ] Task: Move Packages
    - [ ] Move `internal/app` to `cmd/sarif-to-codequality/internal/app`
    - [ ] Move `internal/cli` to `cmd/sarif-to-codequality/internal/cli`
    - [ ] Move `internal/config` to `cmd/sarif-to-codequality/internal/config`
    - [ ] Move `internal/converter` to `cmd/sarif-to-codequality/internal/converter`
    - [ ] Move `internal/gitlab` to `cmd/sarif-to-codequality/internal/gitlab`
    - [ ] Move `internal/sarif` to `cmd/sarif-to-codequality/internal/sarif`
- [ ] Task: Update Imports
    - [ ] Update imports in `cmd/sarif-to-codequality/main.go`
    - [ ] Update imports in internal packages to reference the new paths
    - [ ] Verify `go.mod` and run `go mod tidy` if necessary
- [ ] Task: Clean Up
    - [ ] Remove the empty root `internal/` directory
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Migration and Refactoring' (Protocol in workflow.md)

## Phase 3: Verification
- [ ] Task: Verify Build
    - [ ] Run `make build` and ensure the binary is created
- [ ] Task: Verify Tests
    - [ ] Run `make test` and ensure all tests pass
- [ ] Task: Verify Linting
    - [ ] Run `make lint` and fix any new issues (if any)
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Verification' (Protocol in workflow.md)
