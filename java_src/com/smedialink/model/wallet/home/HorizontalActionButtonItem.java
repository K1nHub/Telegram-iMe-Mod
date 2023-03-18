package com.smedialink.model.wallet.home;

import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HorizontalActionButtonItem.kt */
/* loaded from: classes3.dex */
public final class HorizontalActionButtonItem {
    private final int iconRes;
    private final boolean isEnabled;
    private final Function0<Unit> onClickAction;
    private final int textRes;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HorizontalActionButtonItem copy$default(HorizontalActionButtonItem horizontalActionButtonItem, int i, int i2, boolean z, Function0 function0, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = horizontalActionButtonItem.iconRes;
        }
        if ((i3 & 2) != 0) {
            i2 = horizontalActionButtonItem.textRes;
        }
        if ((i3 & 4) != 0) {
            z = horizontalActionButtonItem.isEnabled;
        }
        if ((i3 & 8) != 0) {
            function0 = horizontalActionButtonItem.onClickAction;
        }
        return horizontalActionButtonItem.copy(i, i2, z, function0);
    }

    public final int component1() {
        return this.iconRes;
    }

    public final int component2() {
        return this.textRes;
    }

    public final boolean component3() {
        return this.isEnabled;
    }

    public final Function0<Unit> component4() {
        return this.onClickAction;
    }

    public final HorizontalActionButtonItem copy(int i, int i2, boolean z, Function0<Unit> onClickAction) {
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        return new HorizontalActionButtonItem(i, i2, z, onClickAction);
    }

    public String toString() {
        return "HorizontalActionButtonItem(iconRes=" + this.iconRes + ", textRes=" + this.textRes + ", isEnabled=" + this.isEnabled + ", onClickAction=" + this.onClickAction + ')';
    }

    public HorizontalActionButtonItem(int i, int i2, boolean z, Function0<Unit> onClickAction) {
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        this.iconRes = i;
        this.textRes = i2;
        this.isEnabled = z;
        this.onClickAction = onClickAction;
    }

    public /* synthetic */ HorizontalActionButtonItem(int i, int i2, boolean z, Function0 function0, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? true : z, function0);
    }

    public final int getIconRes() {
        return this.iconRes;
    }

    public final int getTextRes() {
        return this.textRes;
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
            return this.iconRes == horizontalActionButtonItem.iconRes && this.textRes == horizontalActionButtonItem.textRes && this.isEnabled == horizontalActionButtonItem.isEnabled;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.iconRes), Integer.valueOf(this.textRes), Boolean.valueOf(this.isEnabled));
    }
}
