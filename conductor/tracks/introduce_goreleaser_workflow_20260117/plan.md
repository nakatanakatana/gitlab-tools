# Implementation Plan - Introduce GoReleaser Workflow

## Phase 1: GoReleaser Configuration [checkpoint: 6606c6b]
- [x] Task: Create `.goreleaser.yaml` [d315765]
    - [ ] Define build for `sarif-to-codequality`
    - [ ] Target Linux amd64 and arm64
    - [ ] Configure changelog and GitHub Release settings
- [ ] Task: Conductor - User Manual Verification 'Phase 1: GoReleaser Configuration' (Protocol in workflow.md)

## Phase 2: GitHub Actions Workflow [checkpoint: 99949b1]
- [x] Task: Create `.github/workflows/release.yml` [cc82b8e]
    - [ ] Set trigger to push of tags `v*`
    - [ ] Use `goreleaser/goreleaser-action`
    - [ ] Configure `GITHUB_TOKEN` permissions
- [x] Task: Conductor - User Manual Verification 'Phase 2: GitHub Actions Workflow' (Protocol in workflow.md)

## Phase 3: Final Verification
- [x] Task: Verify GoReleaser configuration locally [a724df5]
    - [ ] Run `goreleaser check`
    - [ ] Run `goreleaser release --snapshot --clean` (if goreleaser is installed)
- [x] Task: Conductor - User Manual Verification 'Phase 3: Final Verification' (Protocol in workflow.md)
