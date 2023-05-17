package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2695g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3043B implements InterfaceC2695g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1131a;

    private /* synthetic */ C3043B(DoubleFunction doubleFunction) {
        this.f1131a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2695g m230a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3045C ? ((C3045C) doubleFunction).f1133a : new C3043B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2695g
    public /* synthetic */ Object apply(double d) {
        return this.f1131a.apply(d);
    }
}
