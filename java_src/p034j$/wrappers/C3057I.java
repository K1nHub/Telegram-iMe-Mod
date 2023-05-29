package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2696h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3057I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2696h f1145a;

    private /* synthetic */ C3057I(InterfaceC2696h interfaceC2696h) {
        this.f1145a = interfaceC2696h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m215a(InterfaceC2696h interfaceC2696h) {
        if (interfaceC2696h == null) {
            return null;
        }
        return interfaceC2696h instanceof C3055H ? ((C3055H) interfaceC2696h).f1143a : new C3057I(interfaceC2696h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1145a.applyAsLong(d);
    }
}
