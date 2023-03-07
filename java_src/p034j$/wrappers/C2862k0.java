package p034j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2862k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1181a;

    private /* synthetic */ C2862k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1181a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2862k0 m137b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC2864l0 ? ((AbstractC2864l0) longToDoubleFunction).f1183a : new C2862k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m138a(long j) {
        return this.f1181a.applyAsDouble(j);
    }
}
