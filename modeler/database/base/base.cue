package base

import T "github.com/corestat/modeler/database/postgres/types"

#Base: {
	state?:       T.#State | *"active"
	version?:     T.#Version
	environment?: T.#Environment | *"production"
	renamedFrom?: string
}
