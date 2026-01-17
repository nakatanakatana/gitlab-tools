package config

import (
	"os"
	"testing"

	"gotest.tools/v3/assert"
)

func TestLoad(t *testing.T) {
	os.Setenv("BASE_DIR", "/root")
	defer os.Unsetenv("BASE_DIR")

	cfg, err := Load()
	assert.NilError(t, err)
	assert.Equal(t, cfg.BaseDir, "/root")
}
