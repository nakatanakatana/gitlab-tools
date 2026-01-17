# Specification - Refactor Project Structure

## Overview
Currently, the packages under `internal/` (`app`, `cli`, `config`, `converter`, `gitlab`, `sarif`) are specific to the `sarif-to-codequality` tool. To keep the root directory clean and accommodate future tools in the project, these packages will be moved to a tool-specific directory: `cmd/sarif-to-codequality/internal/`.

## Functional Requirements
- Move all subdirectories under the root `internal/` to `cmd/sarif-to-codequality/internal/`.
- Update all `import` statements in Go files to reflect the new directory structure.
- Ensure that the existing functionality remains intact after the move.
- Remove the root `internal/` directory once the migration is complete.

## Non-Functional Requirements
- Maintain existing package names (e.g., `package app`).
- Do not modify the core logic or test contents during the migration.
- Ensure `make build`, `make test`, and `make lint` work correctly with the new structure.

## Acceptance Criteria
- `go build ./cmd/sarif-to-codequality` succeeds, and the resulting binary functions as expected.
- `go test ./...` passes for all tests.
- The root `internal/` directory is successfully removed.

## Out of Scope
- Renaming existing packages.
- Adding new features or fixing existing bugs.
- Modifying directory structures other than `cmd/sarif-to-codequality` and the root `internal/`.
