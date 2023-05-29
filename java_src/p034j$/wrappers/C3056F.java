package p034j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3056F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1139a;

    private /* synthetic */ C3056F(DoubleToIntFunction doubleToIntFunction) {
        this.f1139a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3056F m220b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3058G ? ((AbstractC3058G) doubleToIntFunction).f1141a : new C3056F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m221a(double d) {
        return this.f1139a.applyAsInt(d);
    }
}
