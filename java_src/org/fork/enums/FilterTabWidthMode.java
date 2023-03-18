package org.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: FilterTabWidthMode.kt */
/* loaded from: classes4.dex */
public enum FilterTabWidthMode {
    DEFAULT(C3286R.string.folder_tabs_width_mode_value_default, 32, 18, 6),
    MEDIUM(C3286R.string.folder_tabs_width_mode_value_medium, 16, 8, 6),
    MINIMUM(C3286R.string.folder_tabs_width_mode_value_minimum, 4, 0, 2);
    
    public static final Companion Companion = new Companion(null);
    private final int marginIconAndCount;
    private final int tabDefaultMargin;
    private final int tabNoCounterMargin;
    private final int titleResId;

    public static final FilterTabWidthMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    FilterTabWidthMode(int i, int i2, int i3, int i4) {
        this.titleResId = i;
        this.tabDefaultMargin = i2;
        this.tabNoCounterMargin = i3;
        this.marginIconAndCount = i4;
    }

    public final int getMarginIconAndCount() {
        return this.marginIconAndCount;
    }

    public final int getTabDefaultMargin() {
        return this.tabDefaultMargin;
    }

    public final int getTabNoCounterMargin() {
        return this.tabNoCounterMargin;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: FilterTabWidthMode.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FilterTabWidthMode mapNameToEnum(String str) {
            FilterTabWidthMode filterTabWidthMode;
            FilterTabWidthMode[] values = FilterTabWidthMode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    filterTabWidthMode = null;
                    break;
                }
                filterTabWidthMode = values[i];
                if (Intrinsics.areEqual(filterTabWidthMode.name(), str)) {
                    break;
                }
                i++;
            }
            return filterTabWidthMode == null ? FilterTabWidthMode.DEFAULT : filterTabWidthMode;
        }
    }
}
