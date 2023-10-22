package p033j$.wrappers;

import java.util.function.LongToIntFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3217k0 {

    /* renamed from: a */
    final /* synthetic */ LongToIntFunction f1320a;

    private /* synthetic */ C3217k0(LongToIntFunction longToIntFunction) {
        this.f1320a = longToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3217k0 m189b(LongToIntFunction longToIntFunction) {
        if (longToIntFunction == null) {
            return null;
        }
        return longToIntFunction instanceof AbstractC3219l0 ? ((AbstractC3219l0) longToIntFunction).f1322a : new C3217k0(longToIntFunction);
    }

    /* renamed from: a */
    public int m190a(long j) {
        return this.f1320a.applyAsInt(j);
    }
}
