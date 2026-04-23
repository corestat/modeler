package demo

import (
	D "corestat.github.io/cue/modeler/database"
	T "corestat.github.io/cue/modeler/database/types"
	items "corestat.github.io/cue/modeler/examples/database/demo/items"
)

demoDatabase: D.#Database & {
	_name: "demo_database"
	version: T.#Version & {version: "1.0.0"}
	environment: "production"
	schemas: {
		("items"): items.schema
	}
}
