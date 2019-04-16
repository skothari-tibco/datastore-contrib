# MongoDb
This activity allows you to Get, Insert, Update and Delete a document in MongoDb database.

## Installation

### Flogo CLI
```bash
flogo install github.com/project-flogo/datastore-contrib/activity/mongodb
```

## Configuration

### Settings:
| Name     | Type   | Description
|:---      | :---   | :---    
| uri      | string | The MongoDB connection URI
| method   | string | The method type (DELETE, INSERT, UPDATE or REPLACE)

### Input: 

| Name       | Type   | Description
| :---       | :---   | :---
| dbName     | string | The name of the database    
| collection | string | The collection to work on    
| keyName    | string | The name of the key to use when looking up an object (used in DELETE, UPDATE, and REPLACE)    
| keyValue   | string | The value of the key to use when looking up an object (used in DELETE, UPDATE, and REPLACE)    
| data       | object | The bson document to insert in mongodb

## Example
The below example allows you to configure the activity to reply and set the output values to literals "name" (a string) and 2 (an integer).

```json
{
  "id": "flogo-mongodb",
  "name": "MongoDb",
  "description": "MongoDb Activity",
  "activity": {
    "ref": "github.com/project-flogo/datastore-contrib/activity/mongodb",
    "settings": {
      "uri" : "localhost:27017"
    },
    "input" : {
        "dbname" : "test",
        "collection" : "example",
        "method" : "INSERT",
        "keyname" : "foo",
        "keyvalue" : "bar"
    }
  }
}
```