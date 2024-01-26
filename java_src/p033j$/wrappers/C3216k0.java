package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3216k0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1320a;

    private /* synthetic */ C3216k0(LongToIntFunction longToIntFunction) {
        this.f1320a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3216k0 m193b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3218l0 ? ((AbstractC3218l0) longToIntFunction).f1322a : new C3216k0(longToIntFunction);
    }

    /* renamed from: a */
    public int m194a(long j) {
        return this.f1320a.applyAsInt(j);
    }
}
