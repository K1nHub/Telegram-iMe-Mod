package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2877h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3236H implements InterfaceC2877h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1229a;

    private /* synthetic */ C3236H(DoubleToLongFunction doubleToLongFunction) {
        this.f1229a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2877h m235a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3238I ? ((C3238I) doubleToLongFunction).f1231a : new C3236H(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2877h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1229a.applyAsLong(d);
    }
}
