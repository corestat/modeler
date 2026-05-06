package bigquery

import (
	B "github.com/corestat/modeler/database/base"
	T "github.com/corestat/modeler/database/bigquery/types"
)

#Columns: [Name=_]: {
	#Column
	_name: Name
}

#Column: {
	_name?: string
	B.#Base
	type: T.#Type
}