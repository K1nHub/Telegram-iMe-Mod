package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3232m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1279a;

    private /* synthetic */ C3232m0(LongToIntFunction longToIntFunction) {
        this.f1279a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3232m0 m134b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3234n0 ? ((AbstractC3234n0) longToIntFunction).f1281a : new C3232m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m135a(long j) {
        return this.f1279a.applyAsInt(j);
    }
}
