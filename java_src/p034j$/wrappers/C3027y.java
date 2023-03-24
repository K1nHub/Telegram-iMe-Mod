package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2590d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3027y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2590d f1214a;

    private /* synthetic */ C3027y(InterfaceC2590d interfaceC2590d) {
        this.f1214a = interfaceC2590d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m104a(InterfaceC2590d interfaceC2590d) {
        if (interfaceC2590d == null) {
            return null;
        }
        return interfaceC2590d instanceof C3025x ? ((C3025x) interfaceC2590d).f1212a : new C3027y(interfaceC2590d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1214a.applyAsDouble(d, d2);
    }
}
