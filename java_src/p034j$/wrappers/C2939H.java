package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2580h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2939H implements InterfaceC2580h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1139a;

    private /* synthetic */ C2939H(DoubleToLongFunction doubleToLongFunction) {
        this.f1139a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2580h m232a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C2941I ? ((C2941I) doubleToLongFunction).f1141a : new C2939H(doubleToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2580h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1139a.applyAsLong(d);
    }
}
