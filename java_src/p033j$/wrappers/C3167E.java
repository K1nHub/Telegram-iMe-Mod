package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.E */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3167E {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1270a;

    private /* synthetic */ C3167E(DoubleToIntFunction doubleToIntFunction) {
        this.f1270a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3167E m286b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3169F ? ((AbstractC3169F) doubleToIntFunction).f1272a : new C3167E(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m287a(double d) {
        return this.f1270a.applyAsInt(d);
    }
}
