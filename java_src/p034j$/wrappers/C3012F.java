package p034j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3012F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1136a;

    private /* synthetic */ C3012F(DoubleToIntFunction doubleToIntFunction) {
        this.f1136a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3012F m215b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3014G ? ((AbstractC3014G) doubleToIntFunction).f1138a : new C3012F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m216a(double d) {
        return this.f1136a.applyAsInt(d);
    }
}
