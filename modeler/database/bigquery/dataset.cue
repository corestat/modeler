package bigquery

import B "github.com/corestat/modeler/database/base"

#Datasets: [Name=_]: {
	#Dataset
	_name: Name
}

#Dataset: {
	_name?: string
	B.#Base
	tables: #Tables
	views: #Views
}
