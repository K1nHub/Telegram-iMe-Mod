package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3203W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1250a;

    private /* synthetic */ C3203W(IntToDoubleFunction intToDoubleFunction) {
        this.f1250a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3203W m175b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3204X ? ((AbstractC3204X) intToDoubleFunction).f1251a : new C3203W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m176a(int i) {
        return this.f1250a.applyAsDouble(i);
    }
}
