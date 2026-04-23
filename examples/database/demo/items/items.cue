package items

import D "corestat.github.io/cue/modeler/database"

schema: D.#Schema & {
	_name: "items"
	tables: {
		(item._name): item
	}
	sequences: {
		("item_id_sequence"): itemIdSequence
	}
}

itemIdSequence: D.#Sequence & {_name: "item_id_sequence", _parent: "items"}
