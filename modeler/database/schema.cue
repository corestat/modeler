package database

import B "github.com/corestat/modeler/database/base"

#Schemas: [Name=_]: {
	#Schema
	_name: Name
}

#Schema: {
	_name?: string
	B.#Base
	tables:     #Tables
	sequences?: #Sequences
}
