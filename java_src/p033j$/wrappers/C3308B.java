package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2960g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3308B implements InterfaceC2960g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1226a;

    private /* synthetic */ C3308B(DoubleFunction doubleFunction) {
        this.f1226a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2960g m248a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3310C ? ((C3310C) doubleFunction).f1228a : new C3308B(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2960g
    public /* synthetic */ Object apply(double d) {
        return this.f1226a.apply(d);
    }
}
