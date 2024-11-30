package main

import (
	"fmt"
	"log"
	"os/exec"
)

func main() {
	fmt.Print(listPackages())
}

func listPackages() string {
	out, err := Bash(`sudo dnf repoquery --userinstalled`).Output()
	if err != nil {
		log.Fatal(err)
	}
	return string(out)
}

func Bash(c string) *exec.Cmd {
	return exec.Command("bash", "-c", c)
}
