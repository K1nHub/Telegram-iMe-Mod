package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2876g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3226C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2876g f1219a;

    private /* synthetic */ C3226C(InterfaceC2876g interfaceC2876g) {
        this.f1219a = interfaceC2876g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m246a(InterfaceC2876g interfaceC2876g) {
        if (interfaceC2876g == null) {
            return null;
        }
        return interfaceC2876g instanceof C3224B ? ((C3224B) interfaceC2876g).f1217a : new C3226C(interfaceC2876g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1219a.apply(d);
    }
}
