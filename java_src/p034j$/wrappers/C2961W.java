package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2961W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1161a;

    private /* synthetic */ C2961W(IntToDoubleFunction intToDoubleFunction) {
        this.f1161a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2961W m172b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC2962X ? ((AbstractC2962X) intToDoubleFunction).f1162a : new C2961W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m173a(int i) {
        return this.f1161a.applyAsDouble(i);
    }
}
