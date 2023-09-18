package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3258W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1251a;

    private /* synthetic */ C3258W(IntToDoubleFunction intToDoubleFunction) {
        this.f1251a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3258W m175b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3259X ? ((AbstractC3259X) intToDoubleFunction).f1252a : new C3258W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m176a(int i) {
        return this.f1251a.applyAsDouble(i);
    }
}
