package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3190U {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1293a;

    private /* synthetic */ C3190U(IntToDoubleFunction intToDoubleFunction) {
        this.f1293a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3190U m226b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3191V ? ((AbstractC3191V) intToDoubleFunction).f1294a : new C3190U(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m227a(int i) {
        return this.f1293a.applyAsDouble(i);
    }
}
