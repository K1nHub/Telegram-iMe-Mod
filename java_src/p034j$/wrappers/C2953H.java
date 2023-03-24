package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2594h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2953H implements InterfaceC2594h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1140a;

    private /* synthetic */ C2953H(DoubleToLongFunction doubleToLongFunction) {
        this.f1140a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2594h m231a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C2955I ? ((C2955I) doubleToLongFunction).f1142a : new C2953H(doubleToLongFunction);
    }

    @Override // p034j$.util.function.InterfaceC2594h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1140a.applyAsLong(d);
    }
}
