package p034j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2811F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1130a;

    private /* synthetic */ C2811F(DoubleToIntFunction doubleToIntFunction) {
        this.f1130a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2811F m235b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC2813G ? ((AbstractC2813G) doubleToIntFunction).f1132a : new C2811F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m236a(double d) {
        return this.f1130a.applyAsInt(d);
    }
}
