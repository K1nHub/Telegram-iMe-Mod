package p034j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2949F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1136a;

    private /* synthetic */ C2949F(DoubleToIntFunction doubleToIntFunction) {
        this.f1136a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2949F m234b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC2951G ? ((AbstractC2951G) doubleToIntFunction).f1138a : new C2949F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m235a(double d) {
        return this.f1136a.applyAsInt(d);
    }
}
