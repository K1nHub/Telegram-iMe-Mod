package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3082W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1165a;

    private /* synthetic */ C3082W(IntToDoubleFunction intToDoubleFunction) {
        this.f1165a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3082W m157b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3083X ? ((AbstractC3083X) intToDoubleFunction).f1166a : new C3082W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m158a(int i) {
        return this.f1165a.applyAsDouble(i);
    }
}
