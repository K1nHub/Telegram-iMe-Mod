package p035j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080m0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1196a;

    private /* synthetic */ C3080m0(LongToIntFunction longToIntFunction) {
        this.f1196a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3080m0 m125b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3082n0 ? ((AbstractC3082n0) longToIntFunction).f1198a : new C3080m0(longToIntFunction);
    }

    /* renamed from: a */
    public int m126a(long j) {
        return this.f1196a.applyAsInt(j);
    }
}
