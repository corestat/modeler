package postgres

import (
	B "github.com/corestat/modeler/database/base"
	T "github.com/corestat/modeler/database/postgres/types"
)

#Database: {
	B.#Base
	version:     T.#Version
	environment: T.#Environment
	schemas:     #Schemas
}
