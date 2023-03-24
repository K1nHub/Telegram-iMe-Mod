package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2593g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2941B implements InterfaceC2593g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1128a;

    private /* synthetic */ C2941B(DoubleFunction doubleFunction) {
        this.f1128a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2593g m244a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C2943C ? ((C2943C) doubleFunction).f1130a : new C2941B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2593g
    public /* synthetic */ Object apply(double d) {
        return this.f1128a.apply(d);
    }
}
