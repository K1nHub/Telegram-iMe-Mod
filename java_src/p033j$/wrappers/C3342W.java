package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3342W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1260a;

    private /* synthetic */ C3342W(IntToDoubleFunction intToDoubleFunction) {
        this.f1260a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3342W m175b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3343X ? ((AbstractC3343X) intToDoubleFunction).f1261a : new C3342W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m176a(int i) {
        return this.f1260a.applyAsDouble(i);
    }
}
