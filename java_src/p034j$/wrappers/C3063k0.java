package p034j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3063k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1187a;

    private /* synthetic */ C3063k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1187a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3063k0 m117b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3065l0 ? ((AbstractC3065l0) longToDoubleFunction).f1189a : new C3063k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m118a(long j) {
        return this.f1187a.applyAsDouble(j);
    }
}
