package com.deride

import org.apache.commons.lang.builder.HashCodeBuilder

class AppUserSecRole implements Serializable {

	AppUser appUser
	SecRole secRole

	boolean equals(other) {
		if (!(other instanceof AppUserSecRole)) {
			return false
		}

		other.appUser?.id == appUser?.id &&
			other.secRole?.id == secRole?.id
	}

	int hashCode() {
		def builder = new HashCodeBuilder()
		if (appUser) builder.append(appUser.id)
		if (secRole) builder.append(secRole.id)
		builder.toHashCode()
	}

	static AppUserSecRole get(long appUserId, long secRoleId) {
		find 'from AppUserSecRole where appUser.id=:appUserId and secRole.id=:secRoleId',
			[appUserId: appUserId, secRoleId: secRoleId]
	}

	static AppUserSecRole create(AppUser appUser, SecRole secRole, boolean flush = false) {
		new AppUserSecRole(appUser: appUser, secRole: secRole).save(flush: flush, insert: true)
	}

	static boolean remove(AppUser appUser, SecRole secRole, boolean flush = false) {
		AppUserSecRole instance = AppUserSecRole.findByAppUserAndSecRole(appUser, secRole)
		if (!instance) {
			return false
		}

		instance.delete(flush: flush)
		true
	}

	static void removeAll(AppUser appUser) {
		executeUpdate 'DELETE FROM AppUserSecRole WHERE appUser=:appUser', [appUser: appUser]
	}

	static void removeAll(SecRole secRole) {
		executeUpdate 'DELETE FROM AppUserSecRole WHERE secRole=:secRole', [secRole: secRole]
	}

	static mapping = {
		id composite: ['secRole', 'appUser']
		version false
	}
}
