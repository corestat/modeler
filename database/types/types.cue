package types

#Environment: "production" | "development" | "local" | "planned"

#State: "active" | "planned" | "deprecated" | "ignored"

#Timezone: "UTC" | "GMT" |
	"US/Pacific" | "US/Mountain" | "US/Central" | "US/Eastern" |
	"US/Arizona" | "US/Hawaii" | "US/Alaska" |
	"America/Boise" | "America/Phoenix" | "America/Denver" | "America/Los_Angeles" |
	"America/Chicago" | "America/New_York" | "America/Anchorage" | "Pacific/Honolulu"


#DataType: "int" | "bigint" | "decimal" | "varchar" | "boolean" | "date" | "timestamp" | "uuid" | "text" | "bytea"
#ArrayType: "int[]" | "bigint[]" | "decimal[]" | "varchar[]" | "boolean[]" | "date[]" | "timestamp[]" | "uuid[]" | "text[]" | "bytea[]"
#ColumnType: #DataType | #ArrayType

#Command: {
	_language: string
	_command: string
	command: "\(_language)::\(_command)"
}
