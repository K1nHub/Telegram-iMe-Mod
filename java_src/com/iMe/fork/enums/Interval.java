package com.iMe.fork.enums;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3419R;
/* compiled from: Interval.kt */
/* loaded from: classes3.dex */
public enum Interval {
    EVERY_DAY(C3419R.string.backup_settings_interval_every_day, 1),
    EVERY_WEEK(C3419R.string.backup_settings_interval_every_week, 7),
    EVERY_MONTH(C3419R.string.backup_settings_interval_every_month, 30);
    
    public static final Companion Companion = new Companion(null);
    private final int days;
    private final int nameResId;

    Interval(int i, int i2) {
        this.nameResId = i;
        this.days = i2;
    }

    public final int getDays() {
        return this.days;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    /* compiled from: Interval.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Interval mapNameToEnum(String str, Interval defaultValue) {
            Interval interval;
            Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
            Interval[] values = Interval.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    interval = null;
                    break;
                }
                interval = values[i];
                if (Intrinsics.areEqual(interval.name(), str)) {
                    break;
                }
                i++;
            }
            return interval == null ? defaultValue : interval;
        }
    }
}
