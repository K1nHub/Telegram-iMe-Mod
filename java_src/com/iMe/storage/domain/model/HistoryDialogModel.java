package com.iMe.storage.domain.model;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
/* compiled from: HistoryDialogModel.kt */
/* loaded from: classes3.dex */
public final class HistoryDialogModel {
    private long creationDate;
    private final long dialogId;
    private boolean isPinned;

    public static /* synthetic */ HistoryDialogModel copy$default(HistoryDialogModel historyDialogModel, long j, long j2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = historyDialogModel.dialogId;
        }
        long j3 = j;
        if ((i & 2) != 0) {
            j2 = historyDialogModel.creationDate;
        }
        long j4 = j2;
        if ((i & 4) != 0) {
            z = historyDialogModel.isPinned;
        }
        return historyDialogModel.copy(j3, j4, z);
    }

    public final long component1() {
        return this.dialogId;
    }

    public final long component2() {
        return this.creationDate;
    }

    public final boolean component3() {
        return this.isPinned;
    }

    public final HistoryDialogModel copy(long j, long j2, boolean z) {
        return new HistoryDialogModel(j, j2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HistoryDialogModel) {
            HistoryDialogModel historyDialogModel = (HistoryDialogModel) obj;
            return this.dialogId == historyDialogModel.dialogId && this.creationDate == historyDialogModel.creationDate && this.isPinned == historyDialogModel.isPinned;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1020m = ((ProfileData$$ExternalSyntheticBackport0.m1020m(this.dialogId) * 31) + ProfileData$$ExternalSyntheticBackport0.m1020m(this.creationDate)) * 31;
        boolean z = this.isPinned;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m1020m + i;
    }

    public String toString() {
        return "HistoryDialogModel(dialogId=" + this.dialogId + ", creationDate=" + this.creationDate + ", isPinned=" + this.isPinned + ')';
    }

    public HistoryDialogModel(long j, long j2, boolean z) {
        this.dialogId = j;
        this.creationDate = j2;
        this.isPinned = z;
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    public final long getCreationDate() {
        return this.creationDate;
    }

    public final void setCreationDate(long j) {
        this.creationDate = j;
    }

    public final boolean isPinned() {
        return this.isPinned;
    }

    public final void setPinned(boolean z) {
        this.isPinned = z;
    }
}
