package p033j$.time.chrono;

import p033j$.time.temporal.EnumC2731a;
/* renamed from: j$.time.chrono.e */
/* loaded from: classes2.dex */
abstract /* synthetic */ class AbstractC2683e {

    /* renamed from: a */
    static final /* synthetic */ int[] f500a;

    static {
        int[] iArr = new int[EnumC2731a.values().length];
        f500a = iArr;
        try {
            iArr[EnumC2731a.INSTANT_SECONDS.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f500a[EnumC2731a.OFFSET_SECONDS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
    }
}
