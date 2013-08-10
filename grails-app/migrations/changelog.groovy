databaseChangeLog = {

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-1") {
		createTable(tableName: "app_user") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "app_userPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "account_expired", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "account_locked", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "enabled", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "password_expired", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "username", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "class", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "birthday", type: "datetime")

			column(name: "city", type: "varchar(255)")

			column(name: "country", type: "varchar(255)")

			column(name: "date_created", type: "datetime")

			column(name: "email", type: "varchar(255)")

			column(name: "email_alerts", type: "bit")

			column(name: "email_confirm", type: "bit")

			column(name: "email_format", type: "integer")

			column(name: "facebook_connect", type: "bit")

			column(name: "gender", type: "integer")

			column(name: "last_login", type: "datetime")

			column(name: "last_name", type: "varchar(255)")

			column(name: "last_updated", type: "datetime")

			column(name: "marital_status", type: "integer")

			column(name: "mob_phone", type: "varchar(255)")

			column(name: "mob_phone_confirm", type: "bit")

			column(name: "name", type: "varchar(255)")

			column(name: "news_letter", type: "bit")

			column(name: "number", type: "varchar(255)")

			column(name: "ocupation", type: "integer")

			column(name: "phone", type: "varchar(255)")

			column(name: "smoker", type: "bit")

			column(name: "street", type: "varchar(255)")

			column(name: "title_type", type: "integer")

			column(name: "vehicle_id", type: "bigint")

			column(name: "zip_code", type: "varchar(255)")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-2") {
		createTable(tableName: "app_user_sec_role") {
			column(name: "sec_role_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "app_user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-3") {
		createTable(tableName: "bi_images") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "bi_imagesPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "data", type: "longblob") {
				constraints(nullable: "false")
			}

			column(name: "type", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-4") {
		createTable(tableName: "content") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "contentPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "author", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "focus_keyword", type: "longtext")

			column(name: "image_alt", type: "varchar(255)")

			column(name: "image_link", type: "varchar(255)")

			column(name: "intro_text", type: "longtext") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "meta_description", type: "longtext")

			column(name: "robots", type: "varchar(255)")

			column(name: "seo_title", type: "varchar(255)")

			column(name: "sitewide", type: "bit")

			column(name: "slug", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "status", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "title", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-5") {
		createTable(tableName: "content_bi_image") {
			column(name: "content_bi_image_id", type: "bigint")

			column(name: "image_id", type: "bigint")

			column(name: "bi_image_idx", type: "varchar(255)")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-6") {
		createTable(tableName: "content_paragraph") {
			column(name: "content_paragraphs_id", type: "bigint")

			column(name: "paragraph_id", type: "bigint")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-7") {
		createTable(tableName: "content_tags") {
			column(name: "content_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "tag_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-8") {
		createTable(tableName: "paragraph") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "paragraphPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "headline", type: "longtext") {
				constraints(nullable: "false")
			}

			column(name: "image_alt", type: "varchar(255)")

			column(name: "text", type: "longtext") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-9") {
		createTable(tableName: "paragraph_bi_image") {
			column(name: "paragraph_bi_image_id", type: "bigint")

			column(name: "image_id", type: "bigint")

			column(name: "bi_image_idx", type: "varchar(255)")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-10") {
		createTable(tableName: "ride") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "ridePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "creator_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "destination", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "destination_lat", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "destination_long", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "detour", type: "integer")

			column(name: "duration", type: "datetime")

			column(name: "exclusive_women", type: "bit")

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "luggage_size", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "music_allowed", type: "bit")

			column(name: "origin", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "origin_lat", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "origin_long", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "price", type: "double precision") {
				constraints(nullable: "false")
			}

			column(name: "route_type", type: "integer")

			column(name: "seats", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "smoking_allowed", type: "bit")

			column(name: "type", type: "integer") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-11") {
		createTable(tableName: "sec_role") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "sec_rolePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "authority", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-12") {
		createTable(tableName: "tag") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "tagPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "slug", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-13") {
		createTable(tableName: "usuario_facebook") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "usuario_facebPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "access_token", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "access_token_expires", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "uid", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-14") {
		createTable(tableName: "usuario_languages") {
			column(name: "usuario_id", type: "bigint")

			column(name: "languages_string", type: "varchar(255)")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-15") {
		createTable(tableName: "usuario_rides") {
			column(name: "ride_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "usuario_id", type: "bigint")

			column(name: "creator_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-16") {
		createTable(tableName: "vehiculo") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "vehiculoPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "ac", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "color", type: "varchar(255)")

			column(name: "confort", type: "integer")

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "emissions", type: "double precision")

			column(name: "fabricante", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "license", type: "varchar(255)")

			column(name: "mileage", type: "double precision")

			column(name: "modelo", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "seats", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "type", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "year", type: "integer") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-17") {
		addPrimaryKey(columnNames: "sec_role_id, app_user_id", constraintName: "app_user_sec_PK", tableName: "app_user_sec_role")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-18") {
		addPrimaryKey(columnNames: "content_id, tag_id", tableName: "content_tags")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-19") {
		addPrimaryKey(columnNames: "usuario_id, creator_id", tableName: "usuario_rides")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-33") {
		createIndex(indexName: "FK459C57299171CB7B", tableName: "app_user") {
			column(name: "vehicle_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-34") {
		createIndex(indexName: "email_uniq_1375987281518", tableName: "app_user", unique: "true") {
			column(name: "email")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-35") {
		createIndex(indexName: "username_uniq_1375987281513", tableName: "app_user", unique: "true") {
			column(name: "username")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-36") {
		createIndex(indexName: "FK9BDA5FFA78686F75", tableName: "app_user_sec_role") {
			column(name: "app_user_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-37") {
		createIndex(indexName: "FK9BDA5FFAE96467F5", tableName: "app_user_sec_role") {
			column(name: "sec_role_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-38") {
		createIndex(indexName: "slug_uniq_1375987281540", tableName: "content", unique: "true") {
			column(name: "slug")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-39") {
		createIndex(indexName: "FKEFCF75281763BE00", tableName: "content_paragraph") {
			column(name: "content_paragraphs_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-40") {
		createIndex(indexName: "FKEFCF75283F9CE4F2", tableName: "content_paragraph") {
			column(name: "paragraph_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-41") {
		createIndex(indexName: "FK31949C1F2777FF72", tableName: "content_tags") {
			column(name: "tag_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-42") {
		createIndex(indexName: "FK31949C1F43B22312", tableName: "content_tags") {
			column(name: "content_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-43") {
		createIndex(indexName: "FK3568F845821534", tableName: "ride") {
			column(name: "creator_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-44") {
		createIndex(indexName: "authority_uniq_1375987281557", tableName: "sec_role", unique: "true") {
			column(name: "authority")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-45") {
		createIndex(indexName: "FK9D058CB7C31EFF93", tableName: "usuario_facebook") {
			column(name: "user_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-46") {
		createIndex(indexName: "uid_uniq_1375987281559", tableName: "usuario_facebook", unique: "true") {
			column(name: "uid")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-47") {
		createIndex(indexName: "FKC79A244A8143AAF2", tableName: "usuario_languages") {
			column(name: "usuario_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-48") {
		createIndex(indexName: "FK4D45722A6B39C1C2", tableName: "usuario_rides") {
			column(name: "ride_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-49") {
		createIndex(indexName: "FK4D45722A760CEE0E", tableName: "usuario_rides") {
			column(name: "creator_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-50") {
		createIndex(indexName: "FK4D45722A8143AAF2", tableName: "usuario_rides") {
			column(name: "usuario_id")
		}
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-20") {
		addForeignKeyConstraint(baseColumnNames: "vehicle_id", baseTableName: "app_user", constraintName: "FK459C57299171CB7B", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "vehiculo", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-21") {
		addForeignKeyConstraint(baseColumnNames: "app_user_id", baseTableName: "app_user_sec_role", constraintName: "FK9BDA5FFA78686F75", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "app_user", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-22") {
		addForeignKeyConstraint(baseColumnNames: "sec_role_id", baseTableName: "app_user_sec_role", constraintName: "FK9BDA5FFAE96467F5", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "sec_role", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-23") {
		addForeignKeyConstraint(baseColumnNames: "content_paragraphs_id", baseTableName: "content_paragraph", constraintName: "FKEFCF75281763BE00", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "content", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-24") {
		addForeignKeyConstraint(baseColumnNames: "paragraph_id", baseTableName: "content_paragraph", constraintName: "FKEFCF75283F9CE4F2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "paragraph", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-25") {
		addForeignKeyConstraint(baseColumnNames: "content_id", baseTableName: "content_tags", constraintName: "FK31949C1F43B22312", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "content", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-26") {
		addForeignKeyConstraint(baseColumnNames: "tag_id", baseTableName: "content_tags", constraintName: "FK31949C1F2777FF72", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "tag", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-27") {
		addForeignKeyConstraint(baseColumnNames: "creator_id", baseTableName: "ride", constraintName: "FK3568F845821534", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "app_user", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-28") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "usuario_facebook", constraintName: "FK9D058CB7C31EFF93", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "app_user", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-29") {
		addForeignKeyConstraint(baseColumnNames: "usuario_id", baseTableName: "usuario_languages", constraintName: "FKC79A244A8143AAF2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "app_user", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-30") {
		addForeignKeyConstraint(baseColumnNames: "creator_id", baseTableName: "usuario_rides", constraintName: "FK4D45722A760CEE0E", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "ride", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-31") {
		addForeignKeyConstraint(baseColumnNames: "ride_id", baseTableName: "usuario_rides", constraintName: "FK4D45722A6B39C1C2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "ride", referencesUniqueColumn: "false")
	}

	changeSet(author: "sergio.gonzalez (generated)", id: "1375987281671-32") {
		addForeignKeyConstraint(baseColumnNames: "usuario_id", baseTableName: "usuario_rides", constraintName: "FK4D45722A8143AAF2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "app_user", referencesUniqueColumn: "false")
	}

	include file: 'changelog1.0.groovy'
}
