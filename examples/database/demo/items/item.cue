package items

import (
	D "github.com/corestat/modeler/database"
	T "github.com/corestat/modeler/database/types"
)

#ItemIndex: D.#Index & {_parent: item._name}

item: D.#Table & {
	_name:   "item"
	_parent: schema._name
	columns: {
		item_id: {
			type: T.#Int
			primaryKey: true
		}
		item_name: {
			type: T.#Varchar
			length: 200
			nullable: false
		}
		item_desc: {
			type: T.#Varchar
			length: 500
		}
		item_category_id: {
			type: T.#UUID
			nullable: false
		}
		item_class_id: {
			type: T.#UUID
			nullable: false
		}
	}
	indexes: {
		("idx_item_category_id"): itemCategoryIndex
	}
}

itemCategoryIndex: #ItemIndex & {
	_name: "idx_item_category_id"
	columns: ["item_category_id", "item_class_id"]
}
