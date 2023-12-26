locals {
    database_schemas = flatten([
        for db_key, database in var.databases : [
            for schema_key, schema in database.schemas: {
                name         = schema["name"]
                owner        = schema["owner"]
                database     = schema["database"]
                drop_cascade = schema["drop_cascade"]
                policies     = schema["policies"] != null ? schema["policies"] : []
            }
        ] if database.schemas != null
    ])
}