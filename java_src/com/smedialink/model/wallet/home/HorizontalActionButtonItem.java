package com.smedialink.model.wallet.home;

import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HorizontalActionButtonItem.kt */
/* loaded from: classes3.dex */
public final class HorizontalActionButtonItem {
    private final int iconResId;
    private final boolean isEnabled;
    private final Function0<Unit> onClickAction;
    private final String text;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalActionButtonItem copy$default(HorizontalActionButtonItem horizontalActionButtonItem, int i, String str, boolean z, Function0 function0, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = horizontalActionButtonItem.iconResId;
        }
        if ((i2 & 2) != 0) {
            str = horizontalActionButtonItem.text;
        }
        if ((i2 & 4) != 0) {
            z = horizontalActionButtonItem.isEnabled;
        }
        if ((i2 & 8) != 0) {
            function0 = horizontalActionButtonItem.onClickAction;
        }
        return horizontalActionButtonItem.copy(i, str, z, function0);
    }

    public final int component1() {
        return this.iconResId;
    }

    public final String component2() {
        return this.text;
    }

    public final boolean component3() {
        return this.isEnabled;
    }

    public final Function0<Unit> component4() {
        return this.onClickAction;
    }

    public final HorizontalActionButtonItem copy(int i, String text, boolean z, Function0<Unit> onClickAction) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        return new HorizontalActionButtonItem(i, text, z, onClickAction);
    }

    public String toString() {
        return "HorizontalActionButtonItem(iconResId=" + this.iconResId + ", text=" + this.text + ", isEnabled=" + this.isEnabled + ", onClickAction=" + this.onClickAction + ')';
    }

    public HorizontalActionButtonItem(int i, String text, boolean z, Function0<Unit> onClickAction) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        this.iconResId = i;
        this.text = text;
        this.isEnabled = z;
        this.onClickAction = onClickAction;
    }

    public /* synthetic */ HorizontalActionButtonItem(int i, String str, boolean z, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, (i2 & 4) != 0 ? true : z, function0);
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final String getText() {
        return this.text;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final Function0<Unit> getOnClickAction() {
        return this.onClickAction;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(HorizontalActionButtonItem.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.smedialink.model.wallet.home.HorizontalActionButtonItem");
            HorizontalActionButtonItem horizontalActionButtonItem = (HorizontalActionButtonItem) obj;
            return this.iconResId == horizontalActionButtonItem.iconResId && Intrinsics.areEqual(this.text, horizontalActionButtonItem.text) && this.isEnabled == horizontalActionButtonItem.isEnabled;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.iconResId), this.text, Boolean.valueOf(this.isEnabled));
    }
}
