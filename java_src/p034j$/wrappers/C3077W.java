package p034j$.wrappers;

import java.util.function.IntToDoubleFunction;
/* renamed from: j$.wrappers.W */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3077W {

    /* renamed from: a */
    final /* synthetic */ IntToDoubleFunction f1165a;

    private /* synthetic */ C3077W(IntToDoubleFunction intToDoubleFunction) {
        this.f1165a = intToDoubleFunction;
    }

    /* renamed from: b */
    public static /* synthetic */ C3077W m157b(IntToDoubleFunction intToDoubleFunction) {
        if (intToDoubleFunction == null) {
            return null;
        }
        return intToDoubleFunction instanceof AbstractC3078X ? ((AbstractC3078X) intToDoubleFunction).f1166a : new C3077W(intToDoubleFunction);
    }

    /* renamed from: a */
    public double m158a(int i) {
        return this.f1165a.applyAsDouble(i);
    }
}
