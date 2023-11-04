package p033j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3217i0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1316a;

    private /* synthetic */ C3217i0(LongToDoubleFunction longToDoubleFunction) {
        this.f1316a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3217i0 m196b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3219j0 ? ((AbstractC3219j0) longToDoubleFunction).f1318a : new C3217i0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m197a(long j) {
        return this.f1316a.applyAsDouble(j);
    }
}
