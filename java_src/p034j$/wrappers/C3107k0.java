package p034j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3107k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1190a;

    private /* synthetic */ C3107k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1190a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3107k0 m122b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3109l0 ? ((AbstractC3109l0) longToDoubleFunction).f1192a : new C3107k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m123a(long j) {
        return this.f1190a.applyAsDouble(j);
    }
}
