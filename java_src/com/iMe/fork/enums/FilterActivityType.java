package com.iMe.fork.enums;
/* compiled from: FilterActivityType.kt */
/* loaded from: classes3.dex */
public enum FilterActivityType {
    FILTER(24, 16),
    TOPIC(40, 6);
    
    private final int iconLeftMargin;
    private final int iconSize;

    FilterActivityType(int i, int i2) {
        this.iconSize = i;
        this.iconLeftMargin = i2;
    }

    public final int getIconLeftMargin() {
        return this.iconLeftMargin;
    }

    public final int getIconSize() {
        return this.iconSize;
    }
}
