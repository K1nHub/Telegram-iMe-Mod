package p035j$.wrappers;

import java.util.function.DoubleFunction;
import p035j$.util.function.InterfaceC2669g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3017B implements InterfaceC2669g {

    /* renamed from: a */
    final /* synthetic */ DoubleFunction f1133a;

    private /* synthetic */ C3017B(DoubleFunction doubleFunction) {
        this.f1133a = doubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2669g m239a(DoubleFunction doubleFunction) {
        if (doubleFunction == null) {
            return null;
        }
        return doubleFunction instanceof C3019C ? ((C3019C) doubleFunction).f1135a : new C3017B(doubleFunction);
    }

    @Override // p035j$.util.function.InterfaceC2669g
    public /* synthetic */ Object apply(double d) {
        return this.f1133a.apply(d);
    }
}
