package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.E */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3166E {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1270a;

    private /* synthetic */ C3166E(DoubleToIntFunction doubleToIntFunction) {
        this.f1270a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3166E m290b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3168F ? ((AbstractC3168F) doubleToIntFunction).f1272a : new C3166E(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m291a(double d) {
        return this.f1270a.applyAsInt(d);
    }
}
