package p033j$.wrappers;

import java.util.function.LongToDoubleFunction;
/* renamed from: j$.wrappers.i0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3212i0 {

    /* renamed from: a */
    final /* synthetic */ LongToDoubleFunction f1316a;

    private /* synthetic */ C3212i0(LongToDoubleFunction longToDoubleFunction) {
        this.f1316a = longToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3212i0 m199b(LongToDoubleFunction longToDoubleFunction) {
        if (longToDoubleFunction == null) {
            return null;
        }
        return longToDoubleFunction instanceof AbstractC3214j0 ? ((AbstractC3214j0) longToDoubleFunction).f1318a : new C3212i0(longToDoubleFunction);
    }

    /* renamed from: a */
    public double m200a(long j) {
        return this.f1316a.applyAsDouble(j);
    }
}
