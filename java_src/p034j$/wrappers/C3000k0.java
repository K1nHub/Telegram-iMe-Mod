package p034j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3000k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1187a;

    private /* synthetic */ C3000k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1187a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3000k0 m136b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3002l0 ? ((AbstractC3002l0) longToDoubleFunction).f1189a : new C3000k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m137a(long j) {
        return this.f1187a.applyAsDouble(j);
    }
}
