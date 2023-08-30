package p033j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p033j$.util.function.InterfaceC2961h;
/* renamed from: j$.wrappers.H */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3320H implements InterfaceC2961h {

    /* renamed from: a */
    final /* synthetic */ DoubleToLongFunction f1238a;

    private /* synthetic */ C3320H(DoubleToLongFunction doubleToLongFunction) {
        this.f1238a = doubleToLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2961h m235a(DoubleToLongFunction doubleToLongFunction) {
        if (doubleToLongFunction == null) {
            return null;
        }
        return doubleToLongFunction instanceof C3322I ? ((C3322I) doubleToLongFunction).f1240a : new C3320H(doubleToLongFunction);
    }

    @Override // p033j$.util.function.InterfaceC2961h
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1238a.applyAsLong(d);
    }
}
