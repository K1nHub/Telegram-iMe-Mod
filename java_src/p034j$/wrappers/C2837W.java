package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2837W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1156a;

    private /* synthetic */ C2837W(IntToDoubleFunction intToDoubleFunction) {
        this.f1156a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2837W m172b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC2838X ? ((AbstractC2838X) intToDoubleFunction).f1157a : new C2837W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m173a(int i) {
        return this.f1156a.applyAsDouble(i);
    }
}
