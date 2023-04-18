package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2657h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3016H implements InterfaceC2657h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1140a;

    private /* synthetic */ C3016H(DoubleToLongFunction doubleToLongFunction) {
        this.f1140a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2657h m212a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3018I ? ((C3018I) doubleToLongFunction).f1142a : new C3016H(doubleToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2657h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1140a.applyAsLong(d);
    }
}
