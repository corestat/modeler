package database

import T "github.com/corestat/modeler/database/types"

#Columns: [Name=_]: {
	#Column
	_name: Name
}

#Column: {
	_name?: string
	#Base
	type:        T.#ColumnType
	primaryKey?: bool
	nullable?:   bool | *true
	length?:     int
	precision?:  int
	default?: string | int | float | bool | [_] | {[string]: _}
	enum?: [...string | int | float]
}

#Indexes: [Name=_]: {
	#Index
	_name: Name
}

#Index: {
	#Base
	columns: [...string]
}

#Cluster: [Name=_]: {
	#Index
	_name: Name
}
