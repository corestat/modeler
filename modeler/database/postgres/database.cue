package postgres

import B "github.com/corestat/modeler/database/base"


#Database: {
	B.#Base
	version:     B.#Version
	environment: B.#Environment
	schemas:     #Schemas
}
