package org.fork.models;

import com.smedialink.p031ui.drawer.DrawerAccountData;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DrawerHeaderSettings.kt */
/* loaded from: classes4.dex */
public final class DrawerHeaderSettings {
    private boolean isShowArchive;
    private boolean isShowAvatar;
    private boolean isShowSubtitle;
    private boolean isShowTitle;
    private DrawerAccountData subtitle;
    private DrawerAccountData title;

    public static /* synthetic */ DrawerHeaderSettings copy$default(DrawerHeaderSettings drawerHeaderSettings, DrawerAccountData drawerAccountData, DrawerAccountData drawerAccountData2, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            drawerAccountData = drawerHeaderSettings.title;
        }
        if ((i & 2) != 0) {
            drawerAccountData2 = drawerHeaderSettings.subtitle;
        }
        DrawerAccountData drawerAccountData3 = drawerAccountData2;
        if ((i & 4) != 0) {
            z = drawerHeaderSettings.isShowTitle;
        }
        boolean z5 = z;
        if ((i & 8) != 0) {
            z2 = drawerHeaderSettings.isShowSubtitle;
        }
        boolean z6 = z2;
        if ((i & 16) != 0) {
            z3 = drawerHeaderSettings.isShowAvatar;
        }
        boolean z7 = z3;
        if ((i & 32) != 0) {
            z4 = drawerHeaderSettings.isShowArchive;
        }
        return drawerHeaderSettings.copy(drawerAccountData, drawerAccountData3, z5, z6, z7, z4);
    }

    public final DrawerAccountData component1() {
        return this.title;
    }

    public final DrawerAccountData component2() {
        return this.subtitle;
    }

    public final boolean component3() {
        return this.isShowTitle;
    }

    public final boolean component4() {
        return this.isShowSubtitle;
    }

    public final boolean component5() {
        return this.isShowAvatar;
    }

    public final boolean component6() {
        return this.isShowArchive;
    }

    public final DrawerHeaderSettings copy(DrawerAccountData title, DrawerAccountData subtitle, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        return new DrawerHeaderSettings(title, subtitle, z, z2, z3, z4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DrawerHeaderSettings) {
            DrawerHeaderSettings drawerHeaderSettings = (DrawerHeaderSettings) obj;
            return this.title == drawerHeaderSettings.title && this.subtitle == drawerHeaderSettings.subtitle && this.isShowTitle == drawerHeaderSettings.isShowTitle && this.isShowSubtitle == drawerHeaderSettings.isShowSubtitle && this.isShowAvatar == drawerHeaderSettings.isShowAvatar && this.isShowArchive == drawerHeaderSettings.isShowArchive;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.title.hashCode() * 31) + this.subtitle.hashCode()) * 31;
        boolean z = this.isShowTitle;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isShowSubtitle;
        int i3 = z2;
        if (z2 != 0) {
            i3 = 1;
        }
        int i4 = (i2 + i3) * 31;
        boolean z3 = this.isShowAvatar;
        int i5 = z3;
        if (z3 != 0) {
            i5 = 1;
        }
        int i6 = (i4 + i5) * 31;
        boolean z4 = this.isShowArchive;
        return i6 + (z4 ? 1 : z4 ? 1 : 0);
    }

    public String toString() {
        return "DrawerHeaderSettings(title=" + this.title + ", subtitle=" + this.subtitle + ", isShowTitle=" + this.isShowTitle + ", isShowSubtitle=" + this.isShowSubtitle + ", isShowAvatar=" + this.isShowAvatar + ", isShowArchive=" + this.isShowArchive + ')';
    }

    public DrawerHeaderSettings(DrawerAccountData title, DrawerAccountData subtitle, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        this.title = title;
        this.subtitle = subtitle;
        this.isShowTitle = z;
        this.isShowSubtitle = z2;
        this.isShowAvatar = z3;
        this.isShowArchive = z4;
    }

    public final DrawerAccountData getTitle() {
        return this.title;
    }

    public final void setTitle(DrawerAccountData drawerAccountData) {
        Intrinsics.checkNotNullParameter(drawerAccountData, "<set-?>");
        this.title = drawerAccountData;
    }

    public final DrawerAccountData getSubtitle() {
        return this.subtitle;
    }

    public final void setSubtitle(DrawerAccountData drawerAccountData) {
        Intrinsics.checkNotNullParameter(drawerAccountData, "<set-?>");
        this.subtitle = drawerAccountData;
    }

    public final boolean isShowTitle() {
        return this.isShowTitle;
    }

    public final void setShowTitle(boolean z) {
        this.isShowTitle = z;
    }

    public final boolean isShowSubtitle() {
        return this.isShowSubtitle;
    }

    public final void setShowSubtitle(boolean z) {
        this.isShowSubtitle = z;
    }

    public final boolean isShowAvatar() {
        return this.isShowAvatar;
    }

    public final void setShowAvatar(boolean z) {
        this.isShowAvatar = z;
    }

    public final boolean isShowArchive() {
        return this.isShowArchive;
    }

    public final void setShowArchive(boolean z) {
        this.isShowArchive = z;
    }
}
