package com.smedialink.model.hint;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HintModel.kt */
/* loaded from: classes3.dex */
public final class HintModel {
    private final boolean autoHide;
    private final String text;
    private final boolean topArrow;
    private final int type;

    public static /* synthetic */ HintModel copy$default(HintModel hintModel, String str, int i, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = hintModel.text;
        }
        if ((i2 & 2) != 0) {
            i = hintModel.type;
        }
        if ((i2 & 4) != 0) {
            z = hintModel.topArrow;
        }
        if ((i2 & 8) != 0) {
            z2 = hintModel.autoHide;
        }
        return hintModel.copy(str, i, z, z2);
    }

    public final String component1() {
        return this.text;
    }

    public final int component2() {
        return this.type;
    }

    public final boolean component3() {
        return this.topArrow;
    }

    public final boolean component4() {
        return this.autoHide;
    }

    public final HintModel copy(String text, int i, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new HintModel(text, i, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HintModel) {
            HintModel hintModel = (HintModel) obj;
            return Intrinsics.areEqual(this.text, hintModel.text) && this.type == hintModel.type && this.topArrow == hintModel.topArrow && this.autoHide == hintModel.autoHide;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.text.hashCode() * 31) + this.type) * 31;
        boolean z = this.topArrow;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.autoHide;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "HintModel(text=" + this.text + ", type=" + this.type + ", topArrow=" + this.topArrow + ", autoHide=" + this.autoHide + ')';
    }

    public HintModel(String text, int i, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.text = text;
        this.type = i;
        this.topArrow = z;
        this.autoHide = z2;
    }

    public /* synthetic */ HintModel(String str, int i, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 6 : i, (i2 & 4) != 0 ? true : z, (i2 & 8) != 0 ? true : z2);
    }

    public final String getText() {
        return this.text;
    }

    public final int getType() {
        return this.type;
    }

    public final boolean getTopArrow() {
        return this.topArrow;
    }

    public final boolean getAutoHide() {
        return this.autoHide;
    }
}
