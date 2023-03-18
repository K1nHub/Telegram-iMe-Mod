package p034j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2935F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1135a;

    private /* synthetic */ C2935F(DoubleToIntFunction doubleToIntFunction) {
        this.f1135a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2935F m235b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC2937G ? ((AbstractC2937G) doubleToIntFunction).f1137a : new C2935F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m236a(double d) {
        return this.f1135a.applyAsInt(d);
    }
}
