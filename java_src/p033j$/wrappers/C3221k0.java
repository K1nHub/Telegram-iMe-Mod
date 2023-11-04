package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3221k0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1320a;

    private /* synthetic */ C3221k0(LongToIntFunction longToIntFunction) {
        this.f1320a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3221k0 m190b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3223l0 ? ((AbstractC3223l0) longToIntFunction).f1322a : new C3221k0(longToIntFunction);
    }

    /* renamed from: a */
    public int m191a(long j) {
        return this.f1320a.applyAsInt(j);
    }
}
