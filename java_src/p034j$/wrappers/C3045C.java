package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2695g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3045C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2695g f1133a;

    private /* synthetic */ C3045C(InterfaceC2695g interfaceC2695g) {
        this.f1133a = interfaceC2695g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m228a(InterfaceC2695g interfaceC2695g) {
        if (interfaceC2695g == null) {
            return null;
        }
        return interfaceC2695g instanceof C3043B ? ((C3043B) interfaceC2695g).f1131a : new C3045C(interfaceC2695g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1133a.apply(d);
    }
}
