package items

import (
	D "github.com/corestat/modeler/database"
	T "github.com/corestat/modeler/database/types"
)

itemTable: D.#Table & {
	columns: {
		item_id: D.#PrimaryKey & {
			type: T.#Int
		}
		item_name: D.#NotNullable & {
			type:   T.#Varchar
			length: 200
		}
		item_desc: {
			type:   T.#Varchar
			length: 500
		}
		item_status: D.#NotNullable & {
			type:    T.#Varchar
			length:  30
			default: "active"
			enum: ["active", "inactive", "discontinued"]
		}
		item_category_id: D.#NotNullable & {
			type: T.#UUID
		}
		item_class_id: D.#NotNullable & {
			type: T.#UUID
		}
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
