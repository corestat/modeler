package database

import types "github.com/corestat/modeler/database/types"

#Base: {
	state?:       types.#State | *"active"
	version?:     types.#Version
	environment?: types.#Environment | *"production"
	renamedFrom?: string
}

#Database: {
	#Base
	version:     types.#Version
	environment: types.#Environment
	schemas: [string]: #Schema
}

#Schema: {
	#Base
	tables: [string]:     #Table
	sequences?: [string]: #Sequence
}

#Sequence: {
	min:       int & >=0 | *0
	max:       int & >=0 & <=9999999 | *9999999
	start:     int & >=0 & <=9999999 | *0
	increment: int & >=1 & <=100000 | *1
}

#Table: {
	#Base
	columns: #Columns
	indexes?: [string]: #Index
	cluster?: #Cluster
}

#Columns: [Name=_]: {
	_name: Name
	#Base
	type: types.#ColumnType
	primaryKey?: bool
	nullable?: bool | *true
	length?: int
	precision?: int
	default?: string | int | float | bool | [_] | {[string]: _}
	enum?: [string | int | float]
}


#Index: {
	#Base
	columns: [...string]
}

#Cluster: {
	#Index
	indexName: string
}
