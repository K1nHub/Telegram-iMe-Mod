package p033j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.k0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3283k0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1276a;

    private /* synthetic */ C3283k0(LongToDoubleFunction longToDoubleFunction) {
        this.f1276a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3283k0 m140b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3285l0 ? ((AbstractC3285l0) longToDoubleFunction).f1278a : new C3283k0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m141a(long j) {
        return this.f1276a.applyAsDouble(j);
    }
}
