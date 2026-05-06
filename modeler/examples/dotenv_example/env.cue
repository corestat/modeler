package env

import E "github.com/corestat/modeler/dotenv"

envFile: E.#EnvFile & {
	ENV: E.#Environment & "local"
	APP_HOME: E.#Path & "${HOME}"
	PROJECT: E.#Path & "github.com/myorg/my-project"
	APP_PATH: E.#Path & "${APP_HOME}/${PROJECT}"
	TOKEN_PATH: E.#Path & "${APP_PATH}/.tokens"
	COMMON_PATH: E.#Path & "${APP_HOME}/.common"
	DATA_PATH: E.#Path & "${APP_PATH}/.data"
	CONFIG_PATH: E.#Path & "${APP_PATH}/.config"
	GOOGLE_APPLICATION_CREDENTIALS: E.#Path & "${COMMON_PATH}/gcp/bq.json"
	AZURE_CLIENT_ID: E.#UUID & "f47ac10b-58cc-4372-a567-0e02b2c3d479"
	AZURE_CLIENT_SECRET: string & "a3f8c2d1e9b7045f~6a2c8d4e1f9b3+a7c2e5d8=01"
	AZURE_TENANT_ID: E.#UUID & "9b2e1c8d-3f45-4a7b-b6e0-1d5f8c2a9e73"
	AZURE_AUTH_FLOW_TYPE: string & "authorization"
	AZURE_GRAPH_URL: E.#URL & "https://graph.microsoft.com/v1.0"
}