package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2580h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2941I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2580h f1141a;

    private /* synthetic */ C2941I(InterfaceC2580h interfaceC2580h) {
        this.f1141a = interfaceC2580h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m230a(InterfaceC2580h interfaceC2580h) {
        if (interfaceC2580h == null) {
            return null;
        }
        return interfaceC2580h instanceof C2939H ? ((C2939H) interfaceC2580h).f1139a : new C2941I(interfaceC2580h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1141a.applyAsLong(d);
    }
}
