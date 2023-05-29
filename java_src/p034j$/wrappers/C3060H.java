package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2701h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3060H implements InterfaceC2701h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1143a;

    private /* synthetic */ C3060H(DoubleToLongFunction doubleToLongFunction) {
        this.f1143a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2701h m217a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3062I ? ((C3062I) doubleToLongFunction).f1145a : new C3060H(doubleToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2701h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1143a.applyAsLong(d);
    }
}
