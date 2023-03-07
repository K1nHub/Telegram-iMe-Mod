package org.fork.models.backup;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: MultiPanelButtonStateBackup.kt */
/* loaded from: classes4.dex */
public final class MultiPanelButtonStateBackup {
    private boolean isEnabled;
    private int position;
    private final String type;

    public static /* synthetic */ MultiPanelButtonStateBackup copy$default(MultiPanelButtonStateBackup multiPanelButtonStateBackup, String str, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = multiPanelButtonStateBackup.type;
        }
        if ((i2 & 2) != 0) {
            z = multiPanelButtonStateBackup.isEnabled;
        }
        if ((i2 & 4) != 0) {
            i = multiPanelButtonStateBackup.position;
        }
        return multiPanelButtonStateBackup.copy(str, z, i);
    }

    public final String component1() {
        return this.type;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final int component3() {
        return this.position;
    }

    public final MultiPanelButtonStateBackup copy(String type, boolean z, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MultiPanelButtonStateBackup(type, z, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MultiPanelButtonStateBackup) {
            MultiPanelButtonStateBackup multiPanelButtonStateBackup = (MultiPanelButtonStateBackup) obj;
            return Intrinsics.areEqual(this.type, multiPanelButtonStateBackup.type) && this.isEnabled == multiPanelButtonStateBackup.isEnabled && this.position == multiPanelButtonStateBackup.position;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.position;
    }

    public String toString() {
        return "MultiPanelButtonStateBackup(type=" + this.type + ", isEnabled=" + this.isEnabled + ", position=" + this.position + ')';
    }

    public MultiPanelButtonStateBackup(String type, boolean z, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.isEnabled = z;
        this.position = i;
    }

    public final String getType() {
        return this.type;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }
}
