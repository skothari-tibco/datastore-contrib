module main

go 1.12

require (
	github.com/project-flogo/contrib/activity/log v0.9.0
	github.com/project-flogo/core v0.9.4
	github.com/project-flogo/datastore-contrib/mongodb latest

	github.com/project-flogo/flow v0.9.4
)

replace github.com/project-flogo/datastore-contrib/mongodb => github.com/skothari-tibco/datastore-contrib/mongodb test_mod