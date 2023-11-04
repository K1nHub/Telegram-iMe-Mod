package com.iMe.p030ui.popupMenu;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: MenuItem.kt */
/* renamed from: com.iMe.ui.popupMenu.MenuItem */
/* loaded from: classes3.dex */
public final class MenuItem {
    private final int iconColor;
    private final int iconResId;
    private final int itemTextColor;
    private final Function0<Unit> onMenuClick;
    private final String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MenuItem) {
            MenuItem menuItem = (MenuItem) obj;
            return Intrinsics.areEqual(this.title, menuItem.title) && this.iconResId == menuItem.iconResId && this.iconColor == menuItem.iconColor && this.itemTextColor == menuItem.itemTextColor && Intrinsics.areEqual(this.onMenuClick, menuItem.onMenuClick);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.title.hashCode() * 31) + this.iconResId) * 31) + this.iconColor) * 31) + this.itemTextColor) * 31) + this.onMenuClick.hashCode();
    }

    public String toString() {
        return "MenuItem(title=" + this.title + ", iconResId=" + this.iconResId + ", iconColor=" + this.iconColor + ", itemTextColor=" + this.itemTextColor + ", onMenuClick=" + this.onMenuClick + ')';
    }

    public MenuItem(String title, int i, int i2, int i3, Function0<Unit> onMenuClick) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(onMenuClick, "onMenuClick");
        this.title = title;
        this.iconResId = i;
        this.iconColor = i2;
        this.itemTextColor = i3;
        this.onMenuClick = onMenuClick;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public /* synthetic */ MenuItem(String str, int i, int i2, int i3, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, (i4 & 4) != 0 ? Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon) : i2, (i4 & 8) != 0 ? Theme.getColor(Theme.key_actionBarDefaultSubmenuItem) : i3, function0);
    }

    public final int getIconColor() {
        return this.iconColor;
    }

    public final int getItemTextColor() {
        return this.itemTextColor;
    }

    public final Function0<Unit> getOnMenuClick() {
        return this.onMenuClick;
    }
}
