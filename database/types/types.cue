package types

#Environment: "production" | "development" | "local" | "planned"

#State: "active" | "planned" | "deprecated" | "ignored"

#Timezone: "UTC" | "GMT" |
	"US/Pacific" | "US/Mountain" | "US/Central" | "US/Eastern" |
	"US/Arizona" | "US/Hawaii" | "US/Alaska" |
	"America/Boise" | "America/Phoenix" | "America/Denver" | "America/Los_Angeles" |
	"America/Chicago" | "America/New_York" | "America/Anchorage" | "Pacific/Honolulu"



#Int: string & "int"
#BigInt: string & "bigint"
#Decimal: string & "decimal"
#Varchar: string & "varchar"
#Boolean: string & "boolean"
#Date: string & "date"
#Timestamp: string & "timestamp"
#UUID: string & "uuid"
#Text: string & "text"
#Bytea: string & "bytea"

#IntArray: string & "int[]"
#BigIntArray: string & "bigint[]"
#DecimalArray: string & "decimal[]"
#VarcharArray: string & "varchar[]"
#BooleanArray: string & "boolean[]"
#DateArray: string & "date[]"
#TimestampArray: string & "timestamp[]"
#UUIDArray: string & "uuid[]"
#TextArray: string & "text[]"
#ByteaArray: string & "bytea[]"

#DataType: #Int | #BigInt | #Decimal | #Varchar | #Boolean | #Date | #Timestamp | #UUID | #Text | #Bytea
#ArrayType: #IntArray | #BigIntArray | #DecimalArray | #VarcharArray | #BooleanArray | #DateArray | #TimestampArray | #UUIDArray | #TextArray | #ByteaArray
#ColumnType: #DataType | #ArrayType

#EmptyArray: "{}"

#Command: {
	_language: string
	_command: string
	command: "\(_language)::\(_command)"
}
