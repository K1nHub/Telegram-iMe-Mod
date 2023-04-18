package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2653d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3090y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2653d f1214a;

    private /* synthetic */ C3090y(InterfaceC2653d interfaceC2653d) {
        this.f1214a = interfaceC2653d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m85a(InterfaceC2653d interfaceC2653d) {
        if (interfaceC2653d == null) {
            return null;
        }
        return interfaceC2653d instanceof C3088x ? ((C3088x) interfaceC2653d).f1212a : new C3090y(interfaceC2653d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1214a.applyAsDouble(d, d2);
    }
}
