package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2656g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3004B implements InterfaceC2656g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1128a;

    private /* synthetic */ C3004B(DoubleFunction doubleFunction) {
        this.f1128a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2656g m225a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3006C ? ((C3006C) doubleFunction).f1130a : new C3004B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2656g
    public /* synthetic */ Object apply(double d) {
        return this.f1128a.apply(d);
    }
}
