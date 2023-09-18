package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3232F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1225a;

    private /* synthetic */ C3232F(DoubleToIntFunction doubleToIntFunction) {
        this.f1225a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3232F m238b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3234G ? ((AbstractC3234G) doubleToIntFunction).f1227a : new C3232F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m239a(double d) {
        return this.f1225a.applyAsInt(d);
    }
}
