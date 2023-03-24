package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2975W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1162a;

    private /* synthetic */ C2975W(IntToDoubleFunction intToDoubleFunction) {
        this.f1162a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C2975W m171b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC2976X ? ((AbstractC2976X) intToDoubleFunction).f1163a : new C2975W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m172a(int i) {
        return this.f1162a.applyAsDouble(i);
    }
}
