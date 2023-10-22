package com.iMe.storage.data.locale.p026db.model.music;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PlaylistsDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.music.PlaylistsDb */
/* loaded from: classes3.dex */
public final class PlaylistsDb {
    private final long dialogId;
    private final List<Integer> messageIds;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlaylistsDb) {
            PlaylistsDb playlistsDb = (PlaylistsDb) obj;
            return Intrinsics.areEqual(this.messageIds, playlistsDb.messageIds) && this.dialogId == playlistsDb.dialogId && this.userId == playlistsDb.userId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.messageIds.hashCode() * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.dialogId)) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.userId);
    }

    public String toString() {
        return "PlaylistsDb(messageIds=" + this.messageIds + ", dialogId=" + this.dialogId + ", userId=" + this.userId + ')';
    }

    public PlaylistsDb(List<Integer> messageIds, long j, long j2) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        this.messageIds = messageIds;
        this.dialogId = j;
        this.userId = j2;
    }

    public final List<Integer> getMessageIds() {
        return this.messageIds;
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    public final long getUserId() {
        return this.userId;
    }
}
