package p033j$.time.chrono;

import p033j$.time.temporal.EnumC2729a;
/* renamed from: j$.time.chrono.e */
/* loaded from: classes2.dex */
abstract /* synthetic */ class AbstractC2681e {

    /* renamed from: a */
    static final /* synthetic */ int[] f500a;

    static {
        int[] iArr = new int[EnumC2729a.values().length];
        f500a = iArr;
        try {
            iArr[EnumC2729a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f500a[EnumC2729a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
