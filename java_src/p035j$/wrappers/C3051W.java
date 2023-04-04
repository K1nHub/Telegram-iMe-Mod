package p035j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3051W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1167a;

    private /* synthetic */ C3051W(IntToDoubleFunction intToDoubleFunction) {
        this.f1167a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3051W m166b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3052X ? ((AbstractC3052X) intToDoubleFunction).f1168a : new C3051W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m167a(int i) {
        return this.f1167a.applyAsDouble(i);
    }
}
