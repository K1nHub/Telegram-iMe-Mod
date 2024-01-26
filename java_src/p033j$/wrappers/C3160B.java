package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2816g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3160B implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2816g f1264a;

    private /* synthetic */ C3160B(InterfaceC2816g interfaceC2816g) {
        this.f1264a = interfaceC2816g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m298a(InterfaceC2816g interfaceC2816g) {
        if (interfaceC2816g == null) {
            return null;
        }
        return interfaceC2816g instanceof C3158A ? ((C3158A) interfaceC2816g).f1262a : new C3160B(interfaceC2816g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1264a.apply(d);
    }
}
