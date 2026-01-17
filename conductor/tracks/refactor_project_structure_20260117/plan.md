# Implementation Plan - Refactor Project Structure

## Phase 1: Preparation [checkpoint: c5274d8]
- [x] Task: Create Destination Directory eb546e3
    - [x] Create `cmd/sarif-to-codequality/internal`
- [x] Task: Conductor - User Manual Verification 'Phase 1: Preparation' (Protocol in workflow.md) c5274d8

## Phase 2: Migration and Refactoring
- [x] Task: Move Packages ed319d5
    - [x] Move `internal/app` to `cmd/sarif-to-codequality/internal/app`
    - [x] Move `internal/cli` to `cmd/sarif-to-codequality/internal/cli`
    - [x] Move `internal/config` to `cmd/sarif-to-codequality/internal/config`
    - [x] Move `internal/converter` to `cmd/sarif-to-codequality/internal/converter`
    - [x] Move `internal/gitlab` to `cmd/sarif-to-codequality/internal/gitlab`
    - [x] Move `internal/sarif` to `cmd/sarif-to-codequality/internal/sarif`
- [x] Task: Update Imports 8c927bf
    - [x] Update imports in `cmd/sarif-to-codequality/main.go`
    - [x] Update imports in internal packages to reference the new paths
    - [x] Verify `go.mod` and run `go mod tidy` if necessary
- [x] Task: Clean Up 256a468
    - [x] Remove the empty root `internal/` directory
- [ ] Task: Conductor - User Manual Verification 'Phase 2: Migration and Refactoring' (Protocol in workflow.md)

## Phase 3: Verification
- [ ] Task: Verify Build
    - [ ] Run `make build` and ensure the binary is created
- [ ] Task: Verify Tests
    - [ ] Run `make test` and ensure all tests pass
- [ ] Task: Verify Linting
    - [ ] Run `make lint` and fix any new issues (if any)
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Verification' (Protocol in workflow.md)
