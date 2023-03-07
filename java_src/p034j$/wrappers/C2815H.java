package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2456h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2815H implements InterfaceC2456h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1134a;

    private /* synthetic */ C2815H(DoubleToLongFunction doubleToLongFunction) {
        this.f1134a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2456h m232a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C2817I ? ((C2817I) doubleToLongFunction).f1136a : new C2815H(doubleToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2456h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1134a.applyAsLong(d);
    }
}
