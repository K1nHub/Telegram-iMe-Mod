package p034j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p034j$.util.function.InterfaceC2576d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3013y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2576d f1213a;

    private /* synthetic */ C3013y(InterfaceC2576d interfaceC2576d) {
        this.f1213a = interfaceC2576d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m105a(InterfaceC2576d interfaceC2576d) {
        if (interfaceC2576d == null) {
            return null;
        }
        return interfaceC2576d instanceof C3011x ? ((C3011x) interfaceC2576d).f1211a : new C3013y(interfaceC2576d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1213a.applyAsDouble(d, d2);
    }
}
