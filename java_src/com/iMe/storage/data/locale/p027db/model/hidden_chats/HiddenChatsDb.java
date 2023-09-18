package com.iMe.storage.data.locale.p027db.model.hidden_chats;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
/* compiled from: HiddenChatsDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.hidden_chats.HiddenChatsDb */
/* loaded from: classes4.dex */
public final class HiddenChatsDb {
    private final long dialogId;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HiddenChatsDb) {
            HiddenChatsDb hiddenChatsDb = (HiddenChatsDb) obj;
            return this.userId == hiddenChatsDb.userId && this.dialogId == hiddenChatsDb.dialogId;
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m724m(this.userId) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.dialogId);
    }

    public String toString() {
        return "HiddenChatsDb(userId=" + this.userId + ", dialogId=" + this.dialogId + ')';
    }

    public HiddenChatsDb(long j, long j2) {
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
