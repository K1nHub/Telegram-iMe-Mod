package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2960g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3310C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2960g f1228a;

    private /* synthetic */ C3310C(InterfaceC2960g interfaceC2960g) {
        this.f1228a = interfaceC2960g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m246a(InterfaceC2960g interfaceC2960g) {
        if (interfaceC2960g == null) {
            return null;
        }
        return interfaceC2960g instanceof C3308B ? ((C3308B) interfaceC2960g).f1226a : new C3310C(interfaceC2960g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1228a.apply(d);
    }
}
