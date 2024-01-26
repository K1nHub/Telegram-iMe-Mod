package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2817h;
/* renamed from: j$.wrappers.G */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3170G implements InterfaceC2817h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1274a;

    private /* synthetic */ C3170G(DoubleToLongFunction doubleToLongFunction) {
        this.f1274a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2817h m282a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3172H ? ((C3172H) doubleToLongFunction).f1276a : new C3170G(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2817h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1274a.applyAsLong(d);
    }
}
