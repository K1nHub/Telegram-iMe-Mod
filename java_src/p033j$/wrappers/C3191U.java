package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3191U {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1293a;

    private /* synthetic */ C3191U(IntToDoubleFunction intToDoubleFunction) {
        this.f1293a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3191U m227b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3192V ? ((AbstractC3192V) intToDoubleFunction).f1294a : new C3191U(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m228a(int i) {
        return this.f1293a.applyAsDouble(i);
    }
}
