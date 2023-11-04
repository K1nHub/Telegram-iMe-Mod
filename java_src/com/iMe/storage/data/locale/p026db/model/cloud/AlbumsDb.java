package com.iMe.storage.data.locale.p026db.model.cloud;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
/* compiled from: AlbumsDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.cloud.AlbumsDb */
/* loaded from: classes3.dex */
public final class AlbumsDb {
    private long dialogId;
    private long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AlbumsDb) {
            AlbumsDb albumsDb = (AlbumsDb) obj;
            return this.userId == albumsDb.userId && this.dialogId == albumsDb.dialogId;
        }
        return false;
    }

    public int hashCode() {
        return (ProfileData$$ExternalSyntheticBackport0.m1018m(this.userId) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.dialogId);
    }

    public String toString() {
        return "AlbumsDb(userId=" + this.userId + ", dialogId=" + this.dialogId + ')';
    }

    public AlbumsDb(long j, long j2) {
        this.userId = j;
        this.dialogId = j2;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getDialogId() {
        return this.dialogId;
    }
}
