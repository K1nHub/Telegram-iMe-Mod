package io.ktor.util.date;

import p033j$.util.DesugarTimeZone;
/* compiled from: DateJvm.kt */
/* loaded from: classes4.dex */
public final class DateJvmKt {
    static {
        DesugarTimeZone.getTimeZone("GMT");
    }

    public static final long getTimeMillis() {
        return System.currentTimeMillis();
    }
}
