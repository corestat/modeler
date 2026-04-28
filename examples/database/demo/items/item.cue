package items

import (
	D "github.com/corestat/modeler/database"
	C "github.com/corestat/modeler/database/column"
)

itemTable: D.#Table & {
	columns: {
		item_id: C.#PrimaryKey & C.#Int
		item_name: C.#NotNullable & C.#Varchar & {length: 200}
		item_desc: C.#Varchar & {length: 500}
		item_status: C.#NotNullable & C.#Varchar & {
			length:  30
			default: "active"
			enum: ["active", "inactive", "discontinued"]
		}
		item_category_id: C.#NotNullable & C.#UUID
		item_class_id:    C.#NotNullable & C.#UUID
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
