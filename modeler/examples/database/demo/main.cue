package demo

import (
	D "github.com/corestat/modeler/database/postgres"
	T "github.com/corestat/modeler/database/postgres/types"
	items "github.com/corestat/modeler/examples/database/demo/items"
)

demoDatabase: D.#Database & {
	_name: "demo_database"
	version: T.#Version & {version: "1.0.0"}
	environment: "production"
	schemas: {
		("items"): items.schema
	}
}
