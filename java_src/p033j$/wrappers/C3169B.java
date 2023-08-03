package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2821g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3169B implements InterfaceC2821g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1216a;

    private /* synthetic */ C3169B(DoubleFunction doubleFunction) {
        this.f1216a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2821g m248a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3171C ? ((C3171C) doubleFunction).f1218a : new C3169B(doubleFunction);
    }

    @Override // p033j$.util.function.InterfaceC2821g
    public /* synthetic */ Object apply(double d) {
        return this.f1216a.apply(d);
    }
}
