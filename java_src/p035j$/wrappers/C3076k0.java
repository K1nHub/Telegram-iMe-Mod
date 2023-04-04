package p035j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3076k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1192a;

    private /* synthetic */ C3076k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1192a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3076k0 m131b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3078l0 ? ((AbstractC3078l0) longToDoubleFunction).f1194a : new C3076k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m132a(long j) {
        return this.f1192a.applyAsDouble(j);
    }
}
