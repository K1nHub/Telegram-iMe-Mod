package com.iMe.model.wallet;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BottomSheetMenuItem.kt */
/* loaded from: classes4.dex */
public final class BottomSheetMenuItem {
    private final Function0<Unit> action;
    private final int icon;
    private final boolean isAvailable;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BottomSheetMenuItem copy$default(BottomSheetMenuItem bottomSheetMenuItem, int i, String str, Function0 function0, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = bottomSheetMenuItem.icon;
        }
        if ((i2 & 2) != 0) {
            str = bottomSheetMenuItem.title;
        }
        if ((i2 & 4) != 0) {
            function0 = bottomSheetMenuItem.action;
        }
        if ((i2 & 8) != 0) {
            z = bottomSheetMenuItem.isAvailable;
        }
        return bottomSheetMenuItem.copy(i, str, function0, z);
    }

    public final int component1() {
        return this.icon;
    }

    public final String component2() {
        return this.title;
    }

    public final Function0<Unit> component3() {
        return this.action;
    }

    public final boolean component4() {
        return this.isAvailable;
    }

    public final BottomSheetMenuItem copy(int i, String title, Function0<Unit> action, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(action, "action");
        return new BottomSheetMenuItem(i, title, action, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BottomSheetMenuItem) {
            BottomSheetMenuItem bottomSheetMenuItem = (BottomSheetMenuItem) obj;
            return this.icon == bottomSheetMenuItem.icon && Intrinsics.areEqual(this.title, bottomSheetMenuItem.title) && Intrinsics.areEqual(this.action, bottomSheetMenuItem.action) && this.isAvailable == bottomSheetMenuItem.isAvailable;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.icon * 31) + this.title.hashCode()) * 31) + this.action.hashCode()) * 31;
        boolean z = this.isAvailable;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "BottomSheetMenuItem(icon=" + this.icon + ", title=" + this.title + ", action=" + this.action + ", isAvailable=" + this.isAvailable + ')';
    }

    public BottomSheetMenuItem(int i, String title, Function0<Unit> action, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(action, "action");
        this.icon = i;
        this.title = title;
        this.action = action;
        this.isAvailable = z;
    }

    public /* synthetic */ BottomSheetMenuItem(int i, String str, Function0 function0, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, str, function0, (i2 & 8) != 0 ? true : z);
    }

    public final int getIcon() {
        return this.icon;
    }

    public final String getTitle() {
        return this.title;
    }

    public final Function0<Unit> getAction() {
        return this.action;
    }

    public final boolean isAvailable() {
        return this.isAvailable;
    }
}
