package com.iMe.storage.domain.model.music;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PlaylistModel.kt */
/* loaded from: classes3.dex */
public final class PlaylistModel {
    private final long dialogId;
    private final ArrayList<Integer> messageIds;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlaylistModel copy$default(PlaylistModel playlistModel, ArrayList arrayList, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = playlistModel.messageIds;
        }
        if ((i & 2) != 0) {
            j = playlistModel.dialogId;
        }
        return playlistModel.copy(arrayList, j);
    }

    public final ArrayList<Integer> component1() {
        return this.messageIds;
    }

    public final long component2() {
        return this.dialogId;
    }

    public final PlaylistModel copy(ArrayList<Integer> messageIds, long j) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        return new PlaylistModel(messageIds, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlaylistModel) {
            PlaylistModel playlistModel = (PlaylistModel) obj;
            return Intrinsics.areEqual(this.messageIds, playlistModel.messageIds) && this.dialogId == playlistModel.dialogId;
        }
        return false;
    }

    public int hashCode() {
        return (this.messageIds.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m716m(this.dialogId);
    }

    public String toString() {
        return "PlaylistModel(messageIds=" + this.messageIds + ", dialogId=" + this.dialogId + ')';
    }

    public PlaylistModel(ArrayList<Integer> messageIds, long j) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        this.messageIds = messageIds;
        this.dialogId = j;
    }

    public final ArrayList<Integer> getMessageIds() {
        return this.messageIds;
    }

    public final long getDialogId() {
        return this.dialogId;
    }
}
