package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2456h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2817I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2456h f1136a;

    private /* synthetic */ C2817I(InterfaceC2456h interfaceC2456h) {
        this.f1136a = interfaceC2456h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m230a(InterfaceC2456h interfaceC2456h) {
        if (interfaceC2456h == null) {
            return null;
        }
        return interfaceC2456h instanceof C2815H ? ((C2815H) interfaceC2456h).f1134a : new C2817I(interfaceC2456h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1136a.applyAsLong(d);
    }
}
