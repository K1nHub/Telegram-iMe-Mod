package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.E */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3171E {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1270a;

    private /* synthetic */ C3171E(DoubleToIntFunction doubleToIntFunction) {
        this.f1270a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3171E m287b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3173F ? ((AbstractC3173F) doubleToIntFunction).f1272a : new C3171E(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m288a(double d) {
        return this.f1270a.applyAsInt(d);
    }
}
