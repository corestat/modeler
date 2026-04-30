package items

import (
	D "github.com/corestat/modeler/database"
	C "github.com/corestat/modeler/database/column"
)

itemTable: D.#Table & {
	columns: {
		item_id:   C.#PrimaryKey & C.#Int
		item_name: C.#NotNullable & C.#Varchar
		item_desc: C.#Varchar & {length: 1000}
		item_status: C.#NotNullable & C.#Varchar & {
			length:  30
			default: "active"
			enum: ["active", "inactive", "discontinued"]
		}
		item_category_id: C.#NotNullable & C.#UUID
		item_class_id:    C.#NotNullable & C.#UUID
		created_ts:       C.#NotNullable & C.#Timestamp
		updated_ts:       C.#NotNullable & C.#Timestamp
		locked_ts:        C.#TimestampND
	}
	indexes: {
		idx_item_category_id: {
			columns: ["item_category_id", "item_class_id"]
		}
	}
	cluster: {
		idx_item_category_cluster: {
			columns: ["item_category_id"]
		}
	}
}
