package p033j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3367k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1285a;

    private /* synthetic */ C3367k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1285a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3367k0 m140b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3369l0 ? ((AbstractC3369l0) longToDoubleFunction).f1287a : new C3367k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m141a(long j) {
        return this.f1285a.applyAsDouble(j);
    }
}
