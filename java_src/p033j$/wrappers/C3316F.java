package p033j$.wrappers;

import java.util.function.DoubleToIntFunction;
/* renamed from: j$.wrappers.F */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3316F {

    /* renamed from: a */
    final /* synthetic */ DoubleToIntFunction f1234a;

    private /* synthetic */ C3316F(DoubleToIntFunction doubleToIntFunction) {
        this.f1234a = doubleToIntFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3316F m238b(DoubleToIntFunction doubleToIntFunction) {
        if (doubleToIntFunction == null) {
            return null;
        }
        return doubleToIntFunction instanceof AbstractC3318G ? ((AbstractC3318G) doubleToIntFunction).f1236a : new C3316F(doubleToIntFunction);
    }

    /* renamed from: a */
    public int m239a(double d) {
        return this.f1234a.applyAsInt(d);
    }
}
