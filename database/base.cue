package database

import T "github.com/corestat/modeler/database/types"

#Base: {
	state?:       T.#State | *"active"
	version?:     T.#Version
	environment?: T.#Environment | *"production"
	renamedFrom?: string
}

#Database: {
	#Base
	version:     T.#Version
	environment: T.#Environment
	schemas:     #Schemas
}
