package p034j$.wrappers;

import java.util.function.DoubleToLongFunction;
import p034j$.util.function.InterfaceC2657h;
/* renamed from: j$.wrappers.I */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3018I implements DoubleToLongFunction {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2657h f1142a;

    private /* synthetic */ C3018I(InterfaceC2657h interfaceC2657h) {
        this.f1142a = interfaceC2657h;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleToLongFunction m210a(InterfaceC2657h interfaceC2657h) {
        if (interfaceC2657h == null) {
            return null;
        }
        return interfaceC2657h instanceof C3016H ? ((C3016H) interfaceC2657h).f1140a : new C3018I(interfaceC2657h);
    }

    @Override // java.util.function.DoubleToLongFunction
    public /* synthetic */ long applyAsLong(double d) {
        return this.f1142a.applyAsLong(d);
    }
}
