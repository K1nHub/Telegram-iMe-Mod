package com.iMe.storage.data.locale.p026db.model.cloud;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
/* compiled from: CloudAlbumDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.cloud.CloudAlbumDb */
/* loaded from: classes3.dex */
public final class CloudAlbumDb {
    private long albumId;
    private long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CloudAlbumDb) {
            CloudAlbumDb cloudAlbumDb = (CloudAlbumDb) obj;
            return this.userId == cloudAlbumDb.userId && this.albumId == cloudAlbumDb.albumId;
        }
        return false;
    }

    public int hashCode() {
        return (ProfileData$$ExternalSyntheticBackport0.m1018m(this.userId) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.albumId);
    }

    public String toString() {
        return "CloudAlbumDb(userId=" + this.userId + ", albumId=" + this.albumId + ')';
    }

    public CloudAlbumDb(long j, long j2) {
        this.userId = j;
        this.albumId = j2;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getAlbumId() {
        return this.albumId;
    }
}
