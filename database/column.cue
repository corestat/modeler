package database

import types "github.com/corestat/modeler/database/types"

#Column: [Name=_]: {
	name: Name
	type: types.#ColumnType
	primaryKey?: bool
	nullable?: bool | *true
	length?: int
	precision?: int
	default?: string | int | float | bool | [_] | {[string]: _}
	enum?: [string | int]
}