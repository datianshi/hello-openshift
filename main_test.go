package main

import (
	"testing"
)

func TestAlwaysPass(t *testing.T) {
	if true != true {
		t.Errorf("Impossible")
	}
}
