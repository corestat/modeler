package database

import (
	B "github.com/corestat/modeler/database/base"
	T "github.com/corestat/modeler/database/types"
)

#Database: {
	B.#Base
	version:     T.#Version
	environment: T.#Environment
	schemas:     #Schemas
}
