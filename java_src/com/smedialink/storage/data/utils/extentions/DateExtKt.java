package com.smedialink.storage.data.utils.extentions;
/* compiled from: DateExt.kt */
/* loaded from: classes3.dex */
public final class DateExtKt {
    public static final boolean isMinutesAgo(int i, long j) {
        return now() - j > ((long) i) * 60000;
    }

    public static final boolean isDayAgo(long j) {
        return now() - j > 86400000;
    }

    public static final boolean isDaysAgo(int i, long j) {
        return now() - j > ((long) i) * 86400000;
    }

    public static final long now() {
        return System.currentTimeMillis();
    }
}
