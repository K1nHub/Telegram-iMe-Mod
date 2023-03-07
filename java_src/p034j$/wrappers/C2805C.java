package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2455g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2805C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2455g f1124a;

    private /* synthetic */ C2805C(InterfaceC2455g interfaceC2455g) {
        this.f1124a = interfaceC2455g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m243a(InterfaceC2455g interfaceC2455g) {
        if (interfaceC2455g == null) {
            return null;
        }
        return interfaceC2455g instanceof C2803B ? ((C2803B) interfaceC2455g).f1122a : new C2805C(interfaceC2455g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1124a.apply(d);
    }
}
