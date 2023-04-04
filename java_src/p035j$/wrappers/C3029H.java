package p035j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p035j$.util.function.InterfaceC2670h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3029H implements InterfaceC2670h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1145a;

    private /* synthetic */ C3029H(DoubleToLongFunction doubleToLongFunction) {
        this.f1145a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2670h m226a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3031I ? ((C3031I) doubleToLongFunction).f1147a : new C3029H(doubleToLongFunction);
    }

    @Override // p035j$.util.function.InterfaceC2670h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1145a.applyAsLong(d);
    }
}
