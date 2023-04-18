package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3038W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1162a;

    private /* synthetic */ C3038W(IntToDoubleFunction intToDoubleFunction) {
        this.f1162a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3038W m152b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3039X ? ((AbstractC3039X) intToDoubleFunction).f1163a : new C3038W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m153a(int i) {
        return this.f1162a.applyAsDouble(i);
    }
}
