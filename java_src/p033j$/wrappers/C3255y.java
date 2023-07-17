package p033j$.wrappers;

import java.util.function.DoubleBinaryOperator;
import p033j$.util.function.InterfaceC2818d;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3255y implements DoubleBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2818d f1299a;

    private /* synthetic */ C3255y(InterfaceC2818d interfaceC2818d) {
        this.f1299a = interfaceC2818d;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleBinaryOperator m90a(InterfaceC2818d interfaceC2818d) {
        if (interfaceC2818d == null) {
            return null;
        }
        return interfaceC2818d instanceof C3253x ? ((C3253x) interfaceC2818d).f1297a : new C3255y(interfaceC2818d);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public /* synthetic */ double applyAsDouble(double d, double d2) {
        return this.f1299a.applyAsDouble(d, d2);
    }
}
