package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2593g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2943C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2593g f1130a;

    private /* synthetic */ C2943C(InterfaceC2593g interfaceC2593g) {
        this.f1130a = interfaceC2593g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m242a(InterfaceC2593g interfaceC2593g) {
        if (interfaceC2593g == null) {
            return null;
        }
        return interfaceC2593g instanceof C2941B ? ((C2941B) interfaceC2593g).f1128a : new C2943C(interfaceC2593g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1130a.apply(d);
    }
}
