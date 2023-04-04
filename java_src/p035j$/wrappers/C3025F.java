package p035j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3025F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1141a;

    private /* synthetic */ C3025F(DoubleToIntFunction doubleToIntFunction) {
        this.f1141a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3025F m229b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3027G ? ((AbstractC3027G) doubleToIntFunction).f1143a : new C3025F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m230a(double d) {
        return this.f1141a.applyAsInt(d);
    }
}
