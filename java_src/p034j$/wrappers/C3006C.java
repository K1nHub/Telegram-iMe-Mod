package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2656g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3006C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2656g f1130a;

    private /* synthetic */ C3006C(InterfaceC2656g interfaceC2656g) {
        this.f1130a = interfaceC2656g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m223a(InterfaceC2656g interfaceC2656g) {
        if (interfaceC2656g == null) {
            return null;
        }
        return interfaceC2656g instanceof C3004B ? ((C3004B) interfaceC2656g).f1128a : new C3006C(interfaceC2656g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1130a.apply(d);
    }
}
