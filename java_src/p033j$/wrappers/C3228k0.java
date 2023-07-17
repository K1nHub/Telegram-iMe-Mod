package p033j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3228k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1272a;

    private /* synthetic */ C3228k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1272a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3228k0 m122b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3230l0 ? ((AbstractC3230l0) longToDoubleFunction).f1274a : new C3228k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m123a(long j) {
        return this.f1272a.applyAsDouble(j);
    }
}
