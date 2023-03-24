package p034j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3004m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1191a;

    private /* synthetic */ C3004m0(LongToIntFunction longToIntFunction) {
        this.f1191a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3004m0 m130b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3006n0 ? ((AbstractC3006n0) longToIntFunction).f1193a : new C3004m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m131a(long j) {
        return this.f1191a.applyAsInt(j);
    }
}
