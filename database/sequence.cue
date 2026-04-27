package database

#Sequences: [Name=_]: {
	#Sequence
	_name: Name
}

#Sequence: {
	_name?: string
	#Base
	min:       int & >=0 | *0
	max:       int & >=0 & <=9999999 | *9999999
	start:     int & >=0 & <=9999999 | *0
	increment: int & >=1 & <=100000 | *1
}
