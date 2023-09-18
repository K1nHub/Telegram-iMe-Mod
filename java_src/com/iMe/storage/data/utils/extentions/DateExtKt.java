package com.iMe.storage.data.utils.extentions;

import java.util.concurrent.TimeUnit;
/* compiled from: DateExt.kt */
/* loaded from: classes4.dex */
public final class DateExtKt {
    public static final boolean isMinutesAgo(long j, long j2) {
        return now() - j2 > TimeUnit.MINUTES.toMillis(j);
    }

    public static final boolean isHoursAgo(long j, long j2) {
        return now() - j2 > TimeUnit.HOURS.toMillis(j);
    }

    public static final boolean isDayAgo(long j) {
        return isDaysAgo(1L, j);
    }

    public static final boolean isDaysAgo(long j, long j2) {
        return now() - j2 > TimeUnit.DAYS.toMillis(j);
    }

    public static final long now() {
        return System.currentTimeMillis();
    }
}
