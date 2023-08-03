package com.fxn.parser;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MenuItem.kt */
/* loaded from: classes.dex */
public final class MenuItem {
    private boolean badgeVisible;
    private final boolean checked;
    private int custom_font;
    private int disabled_icon_color;
    private final boolean enabled;
    private float horizontal_padding;
    private final int icon;
    private final int iconColor;
    private float icon_padding;
    private float icon_size;

    /* renamed from: id */
    private final int f181id;
    private int tabBackground;
    private final CharSequence title;
    private float title_size;
    private float vertical_padding;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MenuItem) {
            MenuItem menuItem = (MenuItem) obj;
            return this.f181id == menuItem.f181id && Intrinsics.areEqual(this.title, menuItem.title) && this.icon == menuItem.icon && this.enabled == menuItem.enabled && this.iconColor == menuItem.iconColor && this.checked == menuItem.checked;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.f181id * 31) + this.title.hashCode()) * 31) + this.icon) * 31;
        boolean z = this.enabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (((hashCode + i) * 31) + this.iconColor) * 31;
        boolean z2 = this.checked;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "MenuItem(id=" + this.f181id + ", title=" + ((Object) this.title) + ", icon=" + this.icon + ", enabled=" + this.enabled + ", iconColor=" + this.iconColor + ", checked=" + this.checked + ')';
    }

    public MenuItem(int i, CharSequence title, int i2, boolean z, int i3, boolean z2) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f181id = i;
        this.title = title;
        this.icon = i2;
        this.enabled = z;
        this.iconColor = i3;
        this.checked = z2;
        this.tabBackground = -7829368;
        this.disabled_icon_color = -7829368;
    }

    public /* synthetic */ MenuItem(int i, CharSequence charSequence, int i2, boolean z, int i3, boolean z2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, charSequence, i2, z, i3, (i4 & 32) != 0 ? false : z2);
    }

    public final int getId() {
        return this.f181id;
    }

    public final CharSequence getTitle() {
        return this.title;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final int getIconColor() {
        return this.iconColor;
    }

    public final boolean getChecked() {
        return this.checked;
    }

    public final int getCustom_font() {
        return this.custom_font;
    }

    public final void setCustom_font(int i) {
        this.custom_font = i;
    }

    public final int getTabBackground() {
        return this.tabBackground;
    }

    public final void setTabBackground(int i) {
        this.tabBackground = i;
    }

    public final float getHorizontal_padding() {
        return this.horizontal_padding;
    }

    public final void setHorizontal_padding(float f) {
        this.horizontal_padding = f;
    }

    public final float getVertical_padding() {
        return this.vertical_padding;
    }

    public final void setVertical_padding(float f) {
        this.vertical_padding = f;
    }

    public final float getIcon_padding() {
        return this.icon_padding;
    }

    public final void setIcon_padding(float f) {
        this.icon_padding = f;
    }

    public final float getIcon_size() {
        return this.icon_size;
    }

    public final void setIcon_size(float f) {
        this.icon_size = f;
    }

    public final float getTitle_size() {
        return this.title_size;
    }

    public final void setTitle_size(float f) {
        this.title_size = f;
    }

    public final int getDisabled_icon_color() {
        return this.disabled_icon_color;
    }

    public final void setDisabled_icon_color(int i) {
        this.disabled_icon_color = i;
    }

    public final boolean getBadgeVisible() {
        return this.badgeVisible;
    }

    public final void setBadgeVisible(boolean z) {
        this.badgeVisible = z;
    }
}
