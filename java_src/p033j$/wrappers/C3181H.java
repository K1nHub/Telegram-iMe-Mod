package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2822h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3181H implements InterfaceC2822h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1225a;

    private /* synthetic */ C3181H(DoubleToLongFunction doubleToLongFunction) {
        this.f1225a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2822h m217a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3183I ? ((C3183I) doubleToLongFunction).f1227a : new C3181H(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2822h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1225a.applyAsLong(d);
    }
}
