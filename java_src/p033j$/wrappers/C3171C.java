package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2821g;
/* renamed from: j$.wrappers.C */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3171C implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2821g f1215a;

    private /* synthetic */ C3171C(InterfaceC2821g interfaceC2821g) {
        this.f1215a = interfaceC2821g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m228a(InterfaceC2821g interfaceC2821g) {
        if (interfaceC2821g == null) {
            return null;
        }
        return interfaceC2821g instanceof C3169B ? ((C3169B) interfaceC2821g).f1213a : new C3171C(interfaceC2821g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1215a.apply(d);
    }
}
