package p033j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3203W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1247a;

    private /* synthetic */ C3203W(IntToDoubleFunction intToDoubleFunction) {
        this.f1247a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3203W m157b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3204X ? ((AbstractC3204X) intToDoubleFunction).f1248a : new C3203W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m158a(int i) {
        return this.f1247a.applyAsDouble(i);
    }
}