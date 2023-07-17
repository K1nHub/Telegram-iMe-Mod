package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3177F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1221a;

    private /* synthetic */ C3177F(DoubleToIntFunction doubleToIntFunction) {
        this.f1221a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3177F m220b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3179G ? ((AbstractC3179G) doubleToIntFunction).f1223a : new C3177F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m221a(double d) {
        return this.f1221a.applyAsInt(d);
    }
}
