package p035j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p035j$.util.function.InterfaceC2670h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3031I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2670h f1147a;

    private /* synthetic */ C3031I(InterfaceC2670h interfaceC2670h) {
        this.f1147a = interfaceC2670h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m224a(InterfaceC2670h interfaceC2670h) {
        if (interfaceC2670h == null) {
            return null;
        }
        return interfaceC2670h instanceof C3029H ? ((C3029H) interfaceC2670h).f1145a : new C3031I(interfaceC2670h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1147a.applyAsLong(d);
    }
}
