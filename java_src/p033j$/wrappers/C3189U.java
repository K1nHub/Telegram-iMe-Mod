package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.U */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3189U {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1293a;

    private /* synthetic */ C3189U(IntToDoubleFunction intToDoubleFunction) {
        this.f1293a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3189U m230b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3190V ? ((AbstractC3190V) intToDoubleFunction).f1294a : new C3189U(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m231a(int i) {
        return this.f1293a.applyAsDouble(i);
    }
}
