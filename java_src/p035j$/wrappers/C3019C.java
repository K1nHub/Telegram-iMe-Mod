package p035j$.wrappers;

import java.util.function.DoubleFunction;
import p035j$.util.function.InterfaceC2669g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3019C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2669g f1135a;

    private /* synthetic */ C3019C(InterfaceC2669g interfaceC2669g) {
        this.f1135a = interfaceC2669g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m237a(InterfaceC2669g interfaceC2669g) {
        if (interfaceC2669g == null) {
            return null;
        }
        return interfaceC2669g instanceof C3017B ? ((C3017B) interfaceC2669g).f1133a : new C3019C(interfaceC2669g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1135a.apply(d);
    }
}
