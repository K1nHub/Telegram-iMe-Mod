package p033j$.time.chrono;

import p033j$.time.temporal.EnumC2730a;
/* renamed from: j$.time.chrono.e */
/* loaded from: classes2.dex */
abstract /* synthetic */ class AbstractC2682e {

    /* renamed from: a */
    static final /* synthetic */ int[] f500a;

    static {
        int[] iArr = new int[EnumC2730a.values().length];
        f500a = iArr;
        try {
            iArr[EnumC2730a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f500a[EnumC2730a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
