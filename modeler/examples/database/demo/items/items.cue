package items

import D "github.com/corestat/modeler/database"

schema: D.#Schema & {
	_name: "items"
	tables: {
		item:  itemTable
		price: priceTable
	}
	sequences: {
		item_id_sequence: D.#Sequence
	}
}
