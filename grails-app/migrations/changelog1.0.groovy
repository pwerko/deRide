databaseChangeLog = {

	changeSet(author: "sergio.gonzalez (generated)", id: "1376133638266-1") {
		dropNotNullConstraint(columnDataType: "bigint", columnName: "usuario_id", tableName: "usuario_rides")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1376133638266-2") {
		createIndex(indexName: "slug_uniq_1376133637485", tableName: "tag", unique: "true") {
			column(name: "slug")
		}
	}
}
