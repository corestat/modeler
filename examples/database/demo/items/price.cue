package items

import (
	D "github.com/corestat/modeler/database"
	T "github.com/corestat/modeler/database/types"
)

price: D.#Table & {
	_name: "price"
	_parent: schema._name
	columns: {
		price_id: {
			type: T.#Int
			primaryKey: true
		}
		item_id: {
			type: T.#Int
			nullable: false
		}
		price_amt: {
			type: T.#Decimal
			nullable: false
		}
	}	
}
