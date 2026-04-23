package items

import (
	D "corestat.github.io/cue/modeler/database"
	T "corestat.github.io/cue/modeler/database/types"
)

#ItemColumn: D.#Column & { _parent: item._name }
#ItemIndex: D.#Index & { _parent: item._name }

item: D.#Table & {
	_name: "item"
	_parent: schema._name
	columns: {
		("item_id"): itemId
		("item_name"): itemName
		("item_desc"): itemDescription
		("item_category_id"): itemCategoryId
		("item_class_id"): itemClassId
	}
	indexes: {
		("idx_item_category_id"): itemCategoryIndex
	}
}

itemId: #ItemColumn & {
	_name: "item_id"
	type: T.#Int
	primaryKey: true
	// default: itemIdSequence.nextval
}

itemName: #ItemColumn & {
	_name: "item_name"
	type: T.#Varchar
	length: 200
	nullable: false
}

itemDescription: #ItemColumn & {
	_name: "item_description"
	type: T.#Varchar
	length: 500
}

itemCategoryId: #ItemColumn & {
	_name: "item_category_id"
	type: T.#UUID
	nullable: false
}

itemClassId: #ItemColumn & {
	_name: "item_class_id"
	type: T.#UUID
	nullable: false
}

itemCategoryIndex: #ItemIndex & {
	_name: "idx_item_category_id"
	columns: ["item_category_id", "item_class_id"]
}
