package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2579g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2927B implements InterfaceC2579g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1127a;

    private /* synthetic */ C2927B(DoubleFunction doubleFunction) {
        this.f1127a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2579g m245a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C2929C ? ((C2929C) doubleFunction).f1129a : new C2927B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2579g
    public /* synthetic */ Object apply(double d) {
        return this.f1127a.apply(d);
    }
}
