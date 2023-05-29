package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2700g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3050C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2700g f1133a;

    private /* synthetic */ C3050C(InterfaceC2700g interfaceC2700g) {
        this.f1133a = interfaceC2700g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m228a(InterfaceC2700g interfaceC2700g) {
        if (interfaceC2700g == null) {
            return null;
        }
        return interfaceC2700g instanceof C3048B ? ((C3048B) interfaceC2700g).f1131a : new C3050C(interfaceC2700g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1133a.apply(d);
    }
}
