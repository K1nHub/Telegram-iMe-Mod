package org.fork.models;

import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.MultiPanelButton;
/* compiled from: MultiPanelButtonState.kt */
/* loaded from: classes4.dex */
public final class MultiPanelButtonState {
    private boolean isEnabled;
    private int position;
    private final MultiPanelButton type;

    public static /* synthetic */ MultiPanelButtonState copy$default(MultiPanelButtonState multiPanelButtonState, MultiPanelButton multiPanelButton, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            multiPanelButton = multiPanelButtonState.type;
        }
        if ((i2 & 2) != 0) {
            z = multiPanelButtonState.isEnabled;
        }
        if ((i2 & 4) != 0) {
            i = multiPanelButtonState.position;
        }
        return multiPanelButtonState.copy(multiPanelButton, z, i);
    }

    public final MultiPanelButton component1() {
        return this.type;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final int component3() {
        return this.position;
    }

    public final MultiPanelButtonState copy(MultiPanelButton type, boolean z, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new MultiPanelButtonState(type, z, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MultiPanelButtonState) {
            MultiPanelButtonState multiPanelButtonState = (MultiPanelButtonState) obj;
            return this.type == multiPanelButtonState.type && this.isEnabled == multiPanelButtonState.isEnabled && this.position == multiPanelButtonState.position;
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
        return "MultiPanelButtonState(type=" + this.type + ", isEnabled=" + this.isEnabled + ", position=" + this.position + ')';
    }

    public MultiPanelButtonState(MultiPanelButton type, boolean z, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.isEnabled = z;
        this.position = i;
    }

    public final MultiPanelButton getType() {
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
