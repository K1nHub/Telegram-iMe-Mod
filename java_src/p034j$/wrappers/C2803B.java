package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2455g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2803B implements InterfaceC2455g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1122a;

    private /* synthetic */ C2803B(DoubleFunction doubleFunction) {
        this.f1122a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2455g m245a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C2805C ? ((C2805C) doubleFunction).f1124a : new C2803B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2455g
    public /* synthetic */ Object apply(double d) {
        return this.f1122a.apply(d);
    }
}
