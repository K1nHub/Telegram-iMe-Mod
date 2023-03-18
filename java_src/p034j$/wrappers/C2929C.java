package p034j$.wrappers;

import java.util.function.DoubleFunction;
import p034j$.util.function.InterfaceC2579g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2929C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2579g f1129a;

    private /* synthetic */ C2929C(InterfaceC2579g interfaceC2579g) {
        this.f1129a = interfaceC2579g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m243a(InterfaceC2579g interfaceC2579g) {
        if (interfaceC2579g == null) {
            return null;
        }
        return interfaceC2579g instanceof C2927B ? ((C2927B) interfaceC2579g).f1127a : new C2929C(interfaceC2579g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1129a.apply(d);
    }
}
