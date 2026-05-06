package env

#Environment: string & ("local" | "dev" | "prod")
#Path: =~"^(\\$\\{[a-zA-Z0-9_]+\\}|[a-zA-Z0-9./_-])+$"


envFile: {
	APP_HOME: #Path & "${HOME}"
	PROJECT: #Path & "github.albertsons.com/avel101/ssia-archiver"
	APP_PATH: #Path & "${APP_HOME}/${PROJECT}"
	TOKEN_PATH: #Path & "${APP_PATH}/.tokens"
	COMMON_PATH: #Path & "${APP_HOME}/.common"
	DATA_PATH: #Path & "${APP_PATH}/.data"
	CONFIG_PATH: #Path & "${APP_PATH}/.config"
	GOOGLE_APPLICATION_CREDENTIALS: #Path & "${COMMON_PATH}/gcp/bq.json"
}

