package bigquery

import (
	B "github.com/corestat/modeler/database/base"
)

#Tables: [Name=_]: {
	#Table
	_name: Name
}

#Table: {
	_name?: string
	B.#Base
	columns:  #Columns
}
