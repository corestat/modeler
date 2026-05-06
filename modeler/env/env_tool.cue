package env

import (
	"tool/cli"
	"strings"
)


command: gen:  {
	print: cli.Print & {
		text: strings.Join([ for k, v in envFile {"\(k)=\(v)"}], "\n") + "\n"
	}
}