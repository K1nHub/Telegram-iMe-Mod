package p033j$.wrappers;

import java.util.function.DoubleFunction;
import p033j$.util.function.InterfaceC2817g;
/* renamed from: j$.wrappers.B */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3161B implements DoubleFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2817g f1264a;

    private /* synthetic */ C3161B(InterfaceC2817g interfaceC2817g) {
        this.f1264a = interfaceC2817g;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleFunction m294a(InterfaceC2817g interfaceC2817g) {
        if (interfaceC2817g == null) {
            return null;
        }
        return interfaceC2817g instanceof C3159A ? ((C3159A) interfaceC2817g).f1262a : new C3161B(interfaceC2817g);
    }

    @Override // java.util.function.DoubleFunction
    public /* synthetic */ Object apply(double d) {
        return this.f1264a.apply(d);
    }
}
