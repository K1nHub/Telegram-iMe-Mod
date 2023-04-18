package com.iMe.storage.data.locale.p027db.model.bookmarks;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BookmarksDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.bookmarks.BookmarksDb */
/* loaded from: classes3.dex */
public final class BookmarksDb {
    private final long dialogId;
    private final List<Integer> messageIds;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BookmarksDb) {
            BookmarksDb bookmarksDb = (BookmarksDb) obj;
            return Intrinsics.areEqual(this.messageIds, bookmarksDb.messageIds) && this.dialogId == bookmarksDb.dialogId && this.userId == bookmarksDb.userId;
        }
        return false;
    }

    public int hashCode() {
        return (((this.messageIds.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.dialogId)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.userId);
    }

    public String toString() {
        return "BookmarksDb(messageIds=" + this.messageIds + ", dialogId=" + this.dialogId + ", userId=" + this.userId + ')';
    }

    public BookmarksDb(List<Integer> messageIds, long j, long j2) {
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
