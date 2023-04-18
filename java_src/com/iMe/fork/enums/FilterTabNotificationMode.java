package com.iMe.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: FilterTabNotificationMode.kt */
/* loaded from: classes3.dex */
public enum FilterTabNotificationMode {
    HIDDEN(C3242R.string.folder_tabs_notification_mode_value_hidden),
    NUMBER(C3242R.string.folder_tabs_notification_mode_value_default),
    POINT(C3242R.string.folder_tabs_notification_mode_value_points);
    
    public static final Companion Companion = new Companion(null);
    private final int titleResId;

    public static final FilterTabNotificationMode mapNameToEnum(String str) {
        return Companion.mapNameToEnum(str);
    }

    FilterTabNotificationMode(int i) {
        this.titleResId = i;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    /* compiled from: FilterTabNotificationMode.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FilterTabNotificationMode mapNameToEnum(String str) {
            FilterTabNotificationMode filterTabNotificationMode;
            FilterTabNotificationMode[] values = FilterTabNotificationMode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    filterTabNotificationMode = null;
                    break;
                }
                filterTabNotificationMode = values[i];
                if (Intrinsics.areEqual(filterTabNotificationMode.name(), str)) {
                    break;
                }
                i++;
            }
            return filterTabNotificationMode == null ? FilterTabNotificationMode.NUMBER : filterTabNotificationMode;
        }
    }
}
