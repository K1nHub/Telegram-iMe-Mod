package com.smedialink.p031ui.folder;
/* compiled from: FilterIconInfo.kt */
/* renamed from: com.smedialink.ui.folder.FilterIconInfo */
/* loaded from: classes3.dex */
public final class FilterIconInfo {
    private final int filledIcon;
    private final int outlinedIcon;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterIconInfo) {
            FilterIconInfo filterIconInfo = (FilterIconInfo) obj;
            return this.outlinedIcon == filterIconInfo.outlinedIcon && this.filledIcon == filterIconInfo.filledIcon;
        }
        return false;
    }

    public int hashCode() {
        return (this.outlinedIcon * 31) + this.filledIcon;
    }

    public String toString() {
        return "FilterIconInfo(outlinedIcon=" + this.outlinedIcon + ", filledIcon=" + this.filledIcon + ')';
    }

    public FilterIconInfo(int i, int i2) {
        this.outlinedIcon = i;
        this.filledIcon = i2;
    }

    public final int getOutlinedIcon() {
        return this.outlinedIcon;
    }

    public final int getFilledIcon() {
        return this.filledIcon;
    }
}
