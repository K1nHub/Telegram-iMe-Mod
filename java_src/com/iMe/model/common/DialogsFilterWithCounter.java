package com.iMe.model.common;
/* compiled from: DialogsFilterWithCounter.kt */
/* loaded from: classes4.dex */
public final class DialogsFilterWithCounter {
    private final int dialogsCount;
    private final int filterId;

    public static /* synthetic */ DialogsFilterWithCounter copy$default(DialogsFilterWithCounter dialogsFilterWithCounter, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = dialogsFilterWithCounter.filterId;
        }
        if ((i3 & 2) != 0) {
            i2 = dialogsFilterWithCounter.dialogsCount;
        }
        return dialogsFilterWithCounter.copy(i, i2);
    }

    public final int component1() {
        return this.filterId;
    }

    public final int component2() {
        return this.dialogsCount;
    }

    public final DialogsFilterWithCounter copy(int i, int i2) {
        return new DialogsFilterWithCounter(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DialogsFilterWithCounter) {
            DialogsFilterWithCounter dialogsFilterWithCounter = (DialogsFilterWithCounter) obj;
            return this.filterId == dialogsFilterWithCounter.filterId && this.dialogsCount == dialogsFilterWithCounter.dialogsCount;
        }
        return false;
    }

    public int hashCode() {
        return (this.filterId * 31) + this.dialogsCount;
    }

    public String toString() {
        return "DialogsFilterWithCounter(filterId=" + this.filterId + ", dialogsCount=" + this.dialogsCount + ')';
    }

    public DialogsFilterWithCounter(int i, int i2) {
        this.filterId = i;
        this.dialogsCount = i2;
    }

    public final int getFilterId() {
        return this.filterId;
    }

    public final int getDialogsCount() {
        return this.dialogsCount;
    }
}
