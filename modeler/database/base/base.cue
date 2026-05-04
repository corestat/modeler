package base

#Environment: "production" | "development" | "local" | "planned"

#State: "active" | "planned" | "deprecated" | "ignored"

#Version: {
	version:           string
	minimumSupported?: string
	maximumSupported?: string
}


#Base: {
	state?:       #State | *"active"
	version?:     #Version
	environment?: #Environment | *"production"
	renamedFrom?: string
}
