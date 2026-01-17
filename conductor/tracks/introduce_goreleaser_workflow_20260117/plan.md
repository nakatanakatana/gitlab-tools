# Implementation Plan - Introduce GoReleaser Workflow

## Phase 1: GoReleaser Configuration [checkpoint: 6606c6b]
- [x] Task: Create `.goreleaser.yaml` [d315765]
    - [ ] Define build for `sarif-to-codequality`
    - [ ] Target Linux amd64 and arm64
    - [ ] Configure changelog and GitHub Release settings
- [ ] Task: Conductor - User Manual Verification 'Phase 1: GoReleaser Configuration' (Protocol in workflow.md)

## Phase 2: GitHub Actions Workflow
- [ ] Task: Create `.github/workflows/release.yml`
    - [ ] Set trigger to push of tags `v*`
    - [ ] Use `goreleaser/goreleaser-action`
    - [ ] Configure `GITHUB_TOKEN` permissions
- [ ] Task: Conductor - User Manual Verification 'Phase 2: GitHub Actions Workflow' (Protocol in workflow.md)

## Phase 3: Final Verification
- [ ] Task: Verify GoReleaser configuration locally
    - [ ] Run `goreleaser check`
    - [ ] Run `goreleaser release --snapshot --clean` (if goreleaser is installed)
- [ ] Task: Conductor - User Manual Verification 'Phase 3: Final Verification' (Protocol in workflow.md)
