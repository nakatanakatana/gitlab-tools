# Product Guidelines - sarif-to-codequality

## Development Principles
- **Test-Driven Development (TDD):** Prioritize writing tests before implementation to ensure high reliability and clear specifications.
- **Strict Static Analysis:** Adhere to Go best practices and maintain code quality by using tools like `golangci-lint` with strict configurations.

## User Experience (UX) & Interface
- **Unix Philosophy:** Design the tool to be simple and composable. Use standard input (stdin) and standard output (stdout) as the primary interfaces.
- **Silent by Default:** Do not output unnecessary information to stdout to ensure the conversion result can be easily piped to other tools or redirected to files.

## Robustness & Security
- **Strict Input Validation:** Implement thorough validation for all input data to prevent crashes or unexpected behavior when processing malformed or malicious SARIF files.
- **Secrets Protection:** Ensure that no sensitive information from the input data is inadvertently leaked through error messages or logs.

## Operational Standards
- **Standard Error for Diagnostics:** Send all error messages, warnings, and diagnostic information to standard error (stderr). Keep stdout reserved exclusively for the successfully converted output.
- **Single Binary Distribution:** Leverage Go's capability to produce self-contained, statically linked binaries to simplify deployment and execution across different environments without external dependencies.
