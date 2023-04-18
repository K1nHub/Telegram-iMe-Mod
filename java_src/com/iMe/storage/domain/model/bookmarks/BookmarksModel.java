package com.iMe.storage.domain.model.bookmarks;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BookmarksModel.kt */
/* loaded from: classes3.dex */
public final class BookmarksModel {
    private final long dialogId;
    private final ArrayList<Integer> messageIds;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BookmarksModel copy$default(BookmarksModel bookmarksModel, ArrayList arrayList, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            arrayList = bookmarksModel.messageIds;
        }
        if ((i & 2) != 0) {
            j = bookmarksModel.dialogId;
        }
        return bookmarksModel.copy(arrayList, j);
    }

    public final ArrayList<Integer> component1() {
        return this.messageIds;
    }

    public final long component2() {
        return this.dialogId;
    }

    public final BookmarksModel copy(ArrayList<Integer> messageIds, long j) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        return new BookmarksModel(messageIds, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BookmarksModel) {
            BookmarksModel bookmarksModel = (BookmarksModel) obj;
            return Intrinsics.areEqual(this.messageIds, bookmarksModel.messageIds) && this.dialogId == bookmarksModel.dialogId;
        }
        return false;
    }

    public int hashCode() {
        return (this.messageIds.hashCode() * 31) + BotsDbModel$$ExternalSyntheticBackport0.m702m(this.dialogId);
    }

    public String toString() {
        return "BookmarksModel(messageIds=" + this.messageIds + ", dialogId=" + this.dialogId + ')';
    }

    public BookmarksModel(ArrayList<Integer> messageIds, long j) {
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
