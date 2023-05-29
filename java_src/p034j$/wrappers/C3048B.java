package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2700g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3048B implements InterfaceC2700g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1131a;

    private /* synthetic */ C3048B(DoubleFunction doubleFunction) {
        this.f1131a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2700g m230a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3050C ? ((C3050C) doubleFunction).f1133a : new C3048B(doubleFunction);
    }

    @Override // p034j$.util.function.InterfaceC2700g
    public /* synthetic */ Object apply(double d) {
        return this.f1131a.apply(d);
    }
}
