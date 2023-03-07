package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2452d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2889y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2452d f1208a;

    private /* synthetic */ C2889y(InterfaceC2452d interfaceC2452d) {
        this.f1208a = interfaceC2452d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m105a(InterfaceC2452d interfaceC2452d) {
        if (interfaceC2452d == null) {
            return null;
        }
        return interfaceC2452d instanceof C2887x ? ((C2887x) interfaceC2452d).f1206a : new C2889y(interfaceC2452d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1208a.applyAsDouble(d, d2);
    }
}
