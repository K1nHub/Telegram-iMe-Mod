package p034j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2986k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1186a;

    private /* synthetic */ C2986k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1186a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2986k0 m137b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC2988l0 ? ((AbstractC2988l0) longToDoubleFunction).f1188a : new C2986k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m138a(long j) {
        return this.f1186a.applyAsDouble(j);
    }
}
