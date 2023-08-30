package com.iMe.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3558R;
/* compiled from: FilterTabWidthMode.kt */
/* loaded from: classes3.dex */
public enum FilterTabWidthMode {
    DEFAULT(C3558R.string.folder_tabs_width_mode_value_default),
    MEDIUM(C3558R.string.folder_tabs_width_mode_value_medium),
    MINIMUM(C3558R.string.folder_tabs_width_mode_value_minimum);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final FilterTabWidthMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    FilterTabWidthMode(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: FilterTabWidthMode.kt */
    /* loaded from: classes3.dex */
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
