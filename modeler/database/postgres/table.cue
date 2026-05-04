package postgres

import (
	B "github.com/corestat/modeler/database/postgres/base"
	C "github.com/corestat/modeler/database/postgres/column"
)

#Tables: [Name=_]: {
	#Table
	_name: Name
}

#Table: {
	_name?: string
	B.#Base
	columns:  C.#Columns
	indexes?: C.#Indexes
	cluster?: C.#Cluster
}
