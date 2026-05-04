package types

#FileExtension:      "csv" | "csv.gz" | "parquet" | "sql" | "json" | "yml" | "yaml" | "txt"
#FilePackagePattern: "^[\\w\\-]+(\\.)?([\\w\\-]+\\.)+(csv|csv\\.gz|parquet|sql|json|yml|yaml|txt)$"
#FilePathPattern:    "^(/\\w[\\w\\-]*/|[\\w\\-]+/)+([\\w\\-]+\\.(csv|csv\\.gz|parquet|sql|json|yml|yaml|txt))?$"

#FileObject: {
	name:      string
	extension: #FileExtension
	directory: string & =~#FilePathPattern
}

#File: #FileObject | (string & =~#FilePathPattern) | (string & =~#FilePackagePattern)
