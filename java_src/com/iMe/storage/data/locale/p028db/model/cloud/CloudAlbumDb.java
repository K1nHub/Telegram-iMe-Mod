package com.iMe.storage.data.locale.p028db.model.cloud;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: CloudAlbumDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.cloud.CloudAlbumDb */
/* loaded from: classes3.dex */
public final class CloudAlbumDb {
    private long albumId;
    private long userId;

    public CloudAlbumDb() {
        this(0L, 0L, 3, null);
    }

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
        return (BotsDbModel$$ExternalSyntheticBackport0.m716m(this.userId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.albumId);
    }

    public String toString() {
        return "CloudAlbumDb(userId=" + this.userId + ", albumId=" + this.albumId + ')';
    }

    public CloudAlbumDb(long j, long j2) {
        this.userId = j;
        this.albumId = j2;
    }

    public /* synthetic */ CloudAlbumDb(long j, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? 0L : j2);
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getAlbumId() {
        return this.albumId;
    }
}
