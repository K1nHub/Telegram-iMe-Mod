package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2701h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3062I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2701h f1145a;

    private /* synthetic */ C3062I(InterfaceC2701h interfaceC2701h) {
        this.f1145a = interfaceC2701h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m215a(InterfaceC2701h interfaceC2701h) {
        if (interfaceC2701h == null) {
            return null;
        }
        return interfaceC2701h instanceof C3060H ? ((C3060H) interfaceC2701h).f1143a : new C3062I(interfaceC2701h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1145a.applyAsLong(d);
    }
}
