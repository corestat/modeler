package column


import (
	B "github.com/corestat/modeler/database/base"
	T "github.com/corestat/modeler/database/types"
)

#Columns: [Name=_]: {
	#Column
	_name: Name
}

#Column: {
	_name?: string
	B.#Base
	type:        T.#ColumnType
	primaryKey?: bool
	nullable?:   bool | *true
	length?:     int
	precision?:  int
	default?: string | int | float | bool | [_] | {[string]: _}
	enum?: [...string | int | float]
}

#NotNullable: #Column & {
	nullable: false
}

#PrimaryKey: #Column & {
	primaryKey: true
	nullable:   false
}

#Int: #Column & {
	type: T.#Int
}

#BigInt: #Column & {
	type: T.#BigInt
}

#Decimal: #Column & {
	type: T.#Decimal
	length: int
	precision: int
}

#Varchar: #Column & {
	type: T.#Varchar
	length?: int | *500
}

#Boolean: #Column & {
	type: T.#Boolean
}

#Date: #Column & {
	type: T.#Date
}

#Timestamp: #Column & {
	type: T.#Timestamp
	default?: string | *"postgres::TIMEZONE('UTC', CURRENT_TIMESTAMP(0))"
}

#UUID: #Column & {
	type: T.#UUID
}

#Text: #Column & {
	type: T.#Text
}

#Bytea: #Column & {
	type: T.#Bytea
}

#IntArray: #Column & {
	type: T.#IntArray
	default?: string | *T.#EmptyArray
}

#BigIntArray: #Column & {
	type: T.#BigIntArray
	default?: string | *T.#EmptyArray
}

#DecimalArray: #Column & {
	type: T.#DecimalArray
	default?: string | *T.#EmptyArray
}

#VarcharArray: #Column & {
	type: T.#VarcharArray
	default?: string | *T.#EmptyArray
}

#BooleanArray: #Column & {
	type: T.#BooleanArray
	default?: string | *T.#EmptyArray
}

#DateArray: #Column & {
	type: T.#DateArray
	default?: string | *T.#EmptyArray
}

#TimestampArray: #Column & {
	type: T.#TimestampArray
	default?: string | *T.#EmptyArray
}

#UUIDArray: #Column & {
	type: T.#UUIDArray
	default?: string | *T.#EmptyArray
}

#TextArray: #Column & {
	type: T.#TextArray
	default?: string | *T.#EmptyArray
}

#ByteaArray: #Column & {
	type: T.#ByteaArray
	default?: string | *T.#EmptyArray
}

#Indexes: [Name=_]: {
	#Index
	_name: Name
}

#Index: {
	B.#Base
	columns: [...string]
}

#Cluster: [Name=_]: {
	#Index
	_name: Name
}
