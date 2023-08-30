package com.iMe.storage.data.locale.p027db.model.recent_chats;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
/* compiled from: HistoryDialogDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.recent_chats.HistoryDialogDb */
/* loaded from: classes3.dex */
public final class HistoryDialogDb {
    private final long creationDate;
    private final long dialogId;
    private final boolean isPinned;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HistoryDialogDb) {
            HistoryDialogDb historyDialogDb = (HistoryDialogDb) obj;
            return this.userId == historyDialogDb.userId && this.dialogId == historyDialogDb.dialogId && this.creationDate == historyDialogDb.creationDate && this.isPinned == historyDialogDb.isPinned;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.userId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.dialogId)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.creationDate)) * 31;
        boolean z = this.isPinned;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m724m + i;
    }

    public String toString() {
        return "HistoryDialogDb(userId=" + this.userId + ", dialogId=" + this.dialogId + ", creationDate=" + this.creationDate + ", isPinned=" + this.isPinned + ')';
    }

    public HistoryDialogDb(long j, long j2, long j3, boolean z) {
        this.userId = j;
        this.dialogId = j2;
        this.creationDate = j3;
        this.isPinned = z;
    }

    public final long getUserId() {
        return this.userId;
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    public final long getCreationDate() {
        return this.creationDate;
    }

    public final boolean isPinned() {
        return this.isPinned;
    }
}
