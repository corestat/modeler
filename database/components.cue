package database

import types "corestat.github.io/cue/modeler/database/types"

#Base: {
	state?: types.#State | *"active"
	version?: types.#Version
	environment?: types.#Environment | *"production"

	_parent?: string
	_name: string
	_renamedFrom?: string
}

#Database: #Base & {
	version: types.#Version
	environment: types.#Environment
	schemas: [string]: #Schema
}

#Schema: #Base & {
	tables: [string]: #Table
	sequences?: [string]: #Sequence
}

#Sequence: #Base & {
	min: int & >= 0 | *0
	max: int & >= 0 & <= 9999999 | *9999999
	start: int & >= 0 & <= 9999999 | *0
	increment: int & >= 1 & <= 100000 | *1
	nextval?: string & *"nextval('\(_name)')" | {
		if _parent != null {"nextval('\(_parent).\(_name)')"}
	}
}

#Table: #Base & {
	columns: [string]: #Column
	indexes?: [string]: #Index
	cluster?: #Cluster
}

#Column: #Base & {
	type: types.#ColumnType
	nullable?: bool | *true
	length?: int
	precision?: int
	primaryKey?: bool
	default?: string | int | float | bool | [_] | {[string]: _}
	enum?: [string | int | float]
}

#Index: #Base & {
	columns: [string]
}

#Cluster: #Index & {
	indexName: string
}
