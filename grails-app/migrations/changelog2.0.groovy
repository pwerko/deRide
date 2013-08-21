databaseChangeLog = {

	changeSet(author: "sergio.gonzalez (generated)", id: "1377122023012-1") {
		createTable(tableName: "usuario_bi_image") {
			column(name: "usuario_bi_image_id", type: "bigint")

			column(name: "image_id", type: "bigint")

			column(name: "bi_image_idx", type: "varchar(255)")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1377122023012-2") {
		dropNotNullConstraint(columnDataType: "bigint", columnName: "usuario_id", tableName: "usuario_rides")
	}
}
